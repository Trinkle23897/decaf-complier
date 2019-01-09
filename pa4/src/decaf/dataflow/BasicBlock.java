package decaf.dataflow;

import java.io.PrintWriter;
import java.util.*;

import decaf.machdesc.Asm;
import decaf.machdesc.Register;
import decaf.tac.Label;
import decaf.tac.Tac;
import decaf.tac.Temp;

public class BasicBlock {
	public int bbNum;

	public enum EndKind {
		BY_BRANCH, BY_BEQZ, BY_BNEZ, BY_RETURN
	}

	public EndKind endKind;

	public int endId; // last TAC's id for this basic block

	public int inDegree;

	public Tac tacList;

	public Label label;

	public Temp var;

	public Register varReg;

	public int[] next;

	public boolean cancelled;

	public boolean mark;

	public Set<Temp> def;

	public Set<Temp> liveUse;

	public Set<Temp> liveIn;

	public Set<Temp> liveOut;

	public Set<Temp> saves;

	private List<Asm> asms;

	public Set<Temp> kill;
	public Set<Pair> gen;
	public Set<Pair> in;
	public Set<Pair> out;
	public FlowGraph parent;

	/**
	 * DUChain.
	 *
	 * 表中的每一项 `Pair(p, A) -> ds` 表示 变量 `A` 在定值点 `p` 的 DU 链为 `ds`.
	 * 这里 `p` 和 `ds` 中的每一项均指的定值点或引用点对应的那一条 TAC 的 `id`.
	 */
	private Map<Pair, Set<Integer>> DUChain;

	public BasicBlock() {
		def = new TreeSet<Temp>(Temp.ID_COMPARATOR);
		liveUse = new TreeSet<Temp>(Temp.ID_COMPARATOR);
		liveIn = new TreeSet<Temp>(Temp.ID_COMPARATOR);
		liveOut = new TreeSet<Temp>(Temp.ID_COMPARATOR);
		next = new int[2];
		asms = new ArrayList<Asm>();

		kill = new TreeSet<Temp>(Temp.ID_COMPARATOR);
		gen = new TreeSet<Pair>(Pair.COMPARATOR);
		in = new TreeSet<Pair>(Pair.COMPARATOR);
		out = new TreeSet<Pair>(Pair.COMPARATOR);
		DUChain = new TreeMap<Pair, Set<Integer>>(Pair.COMPARATOR);
	}

	public void allocateTacIds() {
		for (Tac tac = tacList; tac != null; tac = tac.next) {
			tac.id = IDAllocator.apply();
		}
		endId = IDAllocator.apply();
	}

	public void computeDefAndLiveUse() {
		for (Tac tac = tacList; tac != null; tac = tac.next) {
			switch (tac.opc) {
				case ADD:
				case SUB:
				case MUL:
				case DIV:
				case MOD:
				case LAND:
				case LOR:
				case GTR:
				case GEQ:
				case EQU:
				case NEQ:
				case LEQ:
				case LES:
				/* use op1 and op2, def op0 */
					if (tac.op1.lastVisitedBB != bbNum) {
						liveUse.add(tac.op1);
						tac.op1.lastVisitedBB = bbNum;
					}
					if (tac.op2.lastVisitedBB != bbNum) {
						liveUse.add(tac.op2);
						tac.op2.lastVisitedBB = bbNum;
					}
					if (tac.op0.lastVisitedBB != bbNum) {
						def.add(tac.op0);
						tac.op0.lastVisitedBB = bbNum;
					}
					break;
				case NEG:
				case LNOT:
				case ASSIGN:
				case INDIRECT_CALL:
				case LOAD:
				/* use op1, def op0 */
					if (tac.op1.lastVisitedBB != bbNum) {
						liveUse.add(tac.op1);
						tac.op1.lastVisitedBB = bbNum;
					}
					if (tac.op0 != null && tac.op0.lastVisitedBB != bbNum) {  // in INDIRECT_CALL with return type VOID,
						// tac.op0 is null
						def.add(tac.op0);
						tac.op0.lastVisitedBB = bbNum;
					}
					break;
				case LOAD_VTBL:
				case DIRECT_CALL:
				case RETURN:
				case LOAD_STR_CONST:
				case LOAD_IMM4:
				/* def op0 */
					if (tac.op0 != null && tac.op0.lastVisitedBB != bbNum) {  // in DIRECT_CALL with return type VOID,
						// tac.op0 is null
						def.add(tac.op0);
						tac.op0.lastVisitedBB = bbNum;
					}
					break;
				case STORE:
				/* use op0 and op1*/
					if (tac.op0.lastVisitedBB != bbNum) {
						liveUse.add(tac.op0);
						tac.op0.lastVisitedBB = bbNum;
					}
					if (tac.op1.lastVisitedBB != bbNum) {
						liveUse.add(tac.op1);
						tac.op1.lastVisitedBB = bbNum;
					}
					break;
				case PARM:
				/* use op0 */
					if (tac.op0.lastVisitedBB != bbNum) {
						liveUse.add(tac.op0);
						tac.op0.lastVisitedBB = bbNum;
					}
					break;
				default:
				/* BRANCH MEMO MARK PARM*/
					break;
			}
		}
		if (var != null && var.lastVisitedBB != bbNum) {
			liveUse.add(var);
			var.lastVisitedBB = bbNum;
		}
		liveIn.addAll(liveUse);
	}

	public void analyzeLiveness() {
		if (tacList == null)
			return;
		Tac tac = tacList;
		for (; tac.next != null; tac = tac.next);

		tac.liveOut = new HashSet<Temp>(liveOut);
		if (var != null)
			tac.liveOut.add(var);
		for (; tac != tacList; tac = tac.prev) {
			tac.prev.liveOut = new HashSet<Temp>(tac.liveOut);
			switch (tac.opc) {
				case ADD:
				case SUB:
				case MUL:
				case DIV:
				case MOD:
				case LAND:
				case LOR:
				case GTR:
				case GEQ:
				case EQU:
				case NEQ:
				case LEQ:
				case LES:
				/* use op1 and op2, def op0 */
					tac.prev.liveOut.remove(tac.op0);
					tac.prev.liveOut.add(tac.op1);
					tac.prev.liveOut.add(tac.op2);
					break;
				case NEG:
				case LNOT:
				case ASSIGN:
				case INDIRECT_CALL:
				case LOAD:
				/* use op1, def op0 */
					tac.prev.liveOut.remove(tac.op0);
					tac.prev.liveOut.add(tac.op1);
					break;
				case LOAD_VTBL:
				case DIRECT_CALL:
				case RETURN:
				case LOAD_STR_CONST:
				case LOAD_IMM4:
				/* def op0 */
					tac.prev.liveOut.remove(tac.op0);
					break;
				case STORE:
				/* use op0 and op1*/
					tac.prev.liveOut.add(tac.op0);
					tac.prev.liveOut.add(tac.op1);
					break;
				case BEQZ:
				case BNEZ:
				case PARM:
				/* use op0 */
					tac.prev.liveOut.add(tac.op0);
					break;
				default:
				/* BRANCH MEMO MARK PARM*/
					break;
			}
		}
	}

	public void computeGenAndKill() {
		if (tacList == null)
			return;
		Tac tac = tacList;
		for (; tac.next != null; tac = tac.next);
		for (; tac != null; tac = tac.prev) {
			switch (tac.opc) {
				case ADD:
				case SUB:
				case MUL:
				case DIV:
				case MOD:
				case LAND:
				case LOR:
				case GTR:
				case GEQ:
				case EQU:
				case NEQ:
				case LEQ:
				case LES:
				/* use op1 and op2, def op0 */
				case NEG:
				case LNOT:
				case ASSIGN:
				case INDIRECT_CALL:
				case LOAD:
				/* use op1, def op0 */ // in INDIRECT_CALL with return type VOID,
				case LOAD_VTBL:
				case DIRECT_CALL:
				case RETURN:
				case LOAD_STR_CONST:
				case LOAD_IMM4:
				/* def op0 */
					if (tac.op0 != null) { // in DIRECT_CALL with return type VOID,
						if (!kill.contains(tac.op0))
							gen.add(new Pair(tac.id, tac.op0));
						kill.add(tac.op0);
					}
					break;
				case STORE:
				/* use op0 and op1 */
				case PARM:
				/* use op0 */
				default:
				/* BRANCH MEMO MARK PARM */
					break;
			}
		}
	}

	public void analyzeDUChain() {
		Set<Pair> currentIn = new TreeSet<Pair>(Pair.COMPARATOR);
		currentIn.addAll(in);
		Map<Temp, List<Pair>> record = new HashMap<Temp, List<Pair>>();
		for (Pair item : currentIn) {
			if (record.get(item.tmp) == null)
				record.put(item.tmp, new ArrayList<Pair>());
			record.get(item.tmp).add(item);
		}
		List<Temp> tlist = new ArrayList<Temp>();
		for (Tac tac = tacList; tac != null; tac = tac.next) {
			Temp localKill = null;
			tlist.clear();
			switch (tac.opc) {
				case ADD:
				case SUB:
				case MUL:
				case DIV:
				case MOD:
				case LAND:
				case LOR:
				case GTR:
				case GEQ:
				case EQU:
				case NEQ:
				case LEQ:
				case LES:
				/* use op1 and op2, def op0 */
					localKill = tac.op0;
					if (tac.op1 != null) tlist.add(tac.op1);
					if (tac.op2 != null) tlist.add(tac.op2);
					break;
				case NEG:
				case LNOT:
				case ASSIGN:
				case INDIRECT_CALL:
				case LOAD:
				/* use op1, def op0 */
					localKill = tac.op0;
					if (tac.op1 != null) tlist.add(tac.op1);
					break;
				case LOAD_VTBL:
				case DIRECT_CALL:
				case RETURN:
				case LOAD_STR_CONST:
				case LOAD_IMM4:
				/* def op0 */
					localKill = tac.op0;
					break;
				case STORE:
				/* use op0 and op1 */
					if (tac.op0 != null) tlist.add(tac.op0);
					if (tac.op0 != null) tlist.add(tac.op1);
					break;
				case BEQZ:
				case BNEZ:
				case PARM:
				/* use op0 */
					if (tac.op0 != null) tlist.add(tac.op0);
					break;
				default:
				/* BRANCH MEMO MARK PARM */
					break;
			}
			for (Temp useTemp : tlist) {
				if (record.get(useTemp) != null)
					for (Pair defTemp : record.get(useTemp)) {
						if (parent.DUChain.get(defTemp) == null)
							parent.DUChain.put(defTemp, new TreeSet<Integer>());
						parent.DUChain.get(defTemp).add(tac.id);
					}
			}
			if (localKill != null) {
				List<Pair> tmp = record.get(localKill);
				if (tmp != null) {
					for (Pair item : tmp) currentIn.remove(item);
					record.get(localKill).clear();
				} else record.put(localKill, new ArrayList<Pair>());
				record.get(localKill).add(new Pair(tac.id, localKill));
			}
		}
		if (var != null) {
			if (record.get(var) != null)
				for (Pair defTemp : record.get(var)) {
					if (parent.DUChain.get(defTemp) == null)
						parent.DUChain.put(defTemp, new TreeSet<Integer>());
					parent.DUChain.get(defTemp).add(endId);
				}
		}
	}

	public void rebuildDUChain() {
		for (Tac tac = tacList; tac != null; tac = tac.next) {
			Temp core = null;
			switch (tac.opc) {
				case ADD:
				case SUB:
				case MUL:
				case DIV:
				case MOD:
				case LAND:
				case LOR:
				case GTR:
				case GEQ:
				case EQU:
				case NEQ:
				case LEQ:
				case LES:
				/* use op1 and op2, def op0 */
				case NEG:
				case LNOT:
				case ASSIGN:
				case INDIRECT_CALL:
				case LOAD:
				/* use op1, def op0 */
				case LOAD_VTBL:
				case DIRECT_CALL:
				case RETURN:
				case LOAD_STR_CONST:
				case LOAD_IMM4:
				/* def op0 */
					core = tac.op0;
					break;
				case STORE:
				/* use op0 and op1 */
				case BEQZ:
				case BNEZ:
				case PARM:
				/* use op0 */
				default:
				/* BRANCH MEMO MARK PARM */
					break;
			}
			if (core != null)
				DUChain.put(new Pair(tac.id, core), parent.DUChain.get(new Pair(tac.id, core)));
		}
	}

	public void printTo(PrintWriter pw) {
		pw.println("BASIC BLOCK " + bbNum + " : ");
		for (Tac t = tacList; t != null; t = t.next) {
			pw.println("    " + t);
		}
		switch (endKind) {
			case BY_BRANCH:
				pw.println("END BY BRANCH, goto " + next[0]);
				break;
			case BY_BEQZ:
				pw.println("END BY BEQZ, if " + var.name + " = ");
				pw.println("    0 : goto " + next[0] + "; 1 : goto " + next[1]);
				break;
			case BY_BNEZ:
				pw.println("END BY BGTZ, if " + var.name + " = ");
				pw.println("    1 : goto " + next[0] + "; 0 : goto " + next[1]);
				break;
			case BY_RETURN:
				if (var != null) {
					pw.println("END BY RETURN, result = " + var.name);
				} else {
					pw.println("END BY RETURN, void result");
				}
				break;
		}
	}

	public void printLivenessTo(PrintWriter pw) {
		pw.println("BASIC BLOCK " + bbNum + " : ");
		pw.println("  Def     = " + toString(def));
		pw.println("  liveUse = " + toString(liveUse));
		pw.println("  liveIn  = " + toString(liveIn));
		pw.println("  liveOut = " + toString(liveOut));

		for (Tac t = tacList; t != null; t = t.next) {
			pw.println("    " + t + " " + toString(t.liveOut));
		}

		switch (endKind) {
			case BY_BRANCH:
				pw.println("END BY BRANCH, goto " + next[0]);
				break;
			case BY_BEQZ:
				pw.println("END BY BEQZ, if " + var.name + " = ");
				pw.println("    0 : goto " + next[0] + "; 1 : goto " + next[1]);
				break;
			case BY_BNEZ:
				pw.println("END BY BGTZ, if " + var.name + " = ");
				pw.println("    1 : goto " + next[0] + "; 0 : goto " + next[1]);
				break;
			case BY_RETURN:
				if (var != null) {
					pw.println("END BY RETURN, result = " + var.name);
				} else {
					pw.println("END BY RETURN, void result");
				}
				break;
		}
	}

	public void printDUChainTo(PrintWriter pw) {
		pw.println("BASIC BLOCK " + bbNum + " : ");

		for (Tac t = tacList; t != null; t = t.next) {
			pw.print(t.id + "\t" + t);

			Pair pair = null;
			switch (t.opc) {
				case ADD:
				case SUB:
				case MUL:
				case DIV:
				case MOD:
				case LAND:
				case LOR:
				case GTR:
				case GEQ:
				case EQU:
				case NEQ:
				case LEQ:
				case LES:
				case NEG:
				case LNOT:
				case ASSIGN:
				case INDIRECT_CALL:
				case LOAD:
				case LOAD_VTBL:
				case DIRECT_CALL:
				case RETURN:
				case LOAD_STR_CONST:
				case LOAD_IMM4:
					if (t.op0 != null) {
						pair = new Pair(t.id, t.op0);
					}
					break;
				case STORE:
				case BEQZ:
				case BNEZ:
				case PARM:
					break;
				default:
				/* BRANCH MEMO MARK PARM */
					break;
			}

			if (pair == null) {
				pw.println();
			} else {
				pw.print(" [ ");
				if (pair != null) {
					Set<Integer> locations = DUChain.get(pair);
					if (locations != null) {
						for (Integer loc : locations) {
							pw.print(loc + " ");
						}
					}
				}
				pw.println("]");
			}
		}

		pw.print(endId + "\t");
		switch (endKind) {
			case BY_BRANCH:
				pw.println("END BY BRANCH, goto " + next[0]);
				break;
			case BY_BEQZ:
				pw.println("END BY BEQZ, if " + var.name + " = ");
				pw.println("\t    0 : goto " + next[0] + "; 1 : goto " + next[1]);
				break;
			case BY_BNEZ:
				pw.println("END BY BGTZ, if " + var.name + " = ");
				pw.println("\t    1 : goto " + next[0] + "; 0 : goto " + next[1]);
				break;
			case BY_RETURN:
				if (var != null) {
					pw.println("END BY RETURN, result = " + var.name);
				} else {
					pw.println("END BY RETURN, void result");
				}
				break;
		}
	}

	public String toString(Set<Temp> set) {
		StringBuilder sb = new StringBuilder("[ ");
		for (Temp t : set) {
			sb.append(t.name + " ");
		}
		sb.append(']');
		return sb.toString();
	}

	public void insertBefore(Tac insert, Tac base) {
		if (base == tacList) {
			tacList = insert;
		} else {
			base.prev.next = insert;
		}
		insert.prev = base.prev;
		base.prev = insert;
		insert.next = base;
	}

	public void insertAfter(Tac insert, Tac base) {
		if (tacList == null) {
			tacList = insert;
			insert.next = null;
			return;
		}
		if (base.next != null) {
			base.next.prev = insert;
		}
		insert.prev = base;
		insert.next = base.next;
		base.next = insert;
	}

	public void appendAsm(Asm asm) {
		asms.add(asm);
	}

	public List<Asm> getAsms() {
		return asms;
	}

	public void setParent(FlowGraph g) {
		parent = g;
	}
}
