package decaf.dataflow;

import decaf.tac.Temp;

import java.util.Comparator;

/**
 * A pair of (pos, variable) for keys of `DUChain`.
 */
public class Pair {
    /**
     * The position (Id of TAC).
     */
    public int pos;

    /**
     * The variable (`Temp` in TAC).
     */
    public Temp tmp;

    public Pair(int pos, Temp tmp) {
        this.pos = pos;
        this.tmp = tmp;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair that = (Pair) obj;
            return this.pos == that.pos && this.tmp.equals(that.tmp);
        }
        return false;
    }

    public static final Comparator<Pair> COMPARATOR = new Comparator<Pair>() {
        public int compare(Pair n1, Pair n2) {
            if (n1.tmp.id > n2.tmp.id) {
                return 1;
            } else if (n1.tmp.id < n2.tmp.id) {
                return -1;
            } else {
                return Integer.compare(n1.pos, n2.pos);
            }
        }
    };

    @Override
    public String toString() {
        return String.format("(%d, %s)", pos, tmp == null ? "<null>" : tmp.name);
    }
}
