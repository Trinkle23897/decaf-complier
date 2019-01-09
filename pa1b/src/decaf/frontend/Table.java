/* This is auto-generated source by LL1-Parser-Gen.
 * Specification file: /home/trinkle/wlxt/wjy/编译原理(2)(2018-2019秋季学期)/hw/pa1b/decaf_PA1_B/src/decaf/frontend/Parser.spec
 * Options: unstrict mode
 * Generated at: Sun Nov 04 11:15:15 CST 2018
 * Please do NOT modify it!
 *
 * Project repository: https://github.com/paulzfm/LL1-Parser-Gen
 * Version: special version for decaf-PA1-B
 * Author: Zhu Fengmin (Paul)
 */

package decaf.frontend;

import decaf.Location;
import decaf.tree.Tree;
import decaf.tree.Tree.*;
import java.util.*;

public class Table
 {
    public static final int eof = -1;
    public static final int eos = 0;
    
    /* tokens and symbols */
    public static final int VOID = 257; //# line 13
    public static final int BOOL = 258; //# line 13
    public static final int INT = 259; //# line 13
    public static final int STRING = 260; //# line 13
    public static final int CLASS = 261; //# line 13
    public static final int NULL = 262; //# line 14
    public static final int EXTENDS = 263; //# line 14
    public static final int THIS = 264; //# line 14
    public static final int WHILE = 265; //# line 14
    public static final int FOR = 266; //# line 14
    public static final int IF = 267; //# line 15
    public static final int ELSE = 268; //# line 15
    public static final int RETURN = 269; //# line 15
    public static final int BREAK = 270; //# line 15
    public static final int NEW = 271; //# line 15
    public static final int PRINT = 272; //# line 16
    public static final int READ_INTEGER = 273; //# line 16
    public static final int READ_LINE = 274; //# line 16
    public static final int LITERAL = 275; //# line 17
    public static final int IDENTIFIER = 276; //# line 18
    public static final int AND = 277; //# line 18
    public static final int OR = 278; //# line 18
    public static final int STATIC = 279; //# line 18
    public static final int INSTANCEOF = 280; //# line 18
    public static final int LESS_EQUAL = 281; //# line 19
    public static final int GREATER_EQUAL = 282; //# line 19
    public static final int EQUAL = 283; //# line 19
    public static final int NOT_EQUAL = 284; //# line 19
    public static final int SCOPY = 285; //# line 20
    public static final int SEALED = 286; //# line 20
    public static final int TRI_OR = 287; //# line 20
    public static final int VAR = 288; //# line 20
    public static final int MOMO = 289; //# line 20
    public static final int PLPL = 290; //# line 20
    public static final int DEFAULT = 291; //# line 20
    public static final int IN = 292; //# line 20
    public static final int FOREACH = 293; //# line 20
    public static final int KL = 294; //# line 20
    public static final int KR = 295; //# line 20
    
    public static final int VariableDef = 296;
    public static final int ExprT5 = 297;
    public static final int GuardStmt = 298;
    public static final int Oper3 = 299;
    public static final int Oper6 = 300;
    public static final int IfSubStmtList = 301;
    public static final int VariableList = 302;
    public static final int Formals = 303;
    public static final int Oper7 = 304;
    public static final int IfSubStmt = 305;
    public static final int Expr8 = 306;
    public static final int AfterSimpleTypeExpr = 307;
    public static final int Expr41 = 308;
    public static final int Expr2 = 309;
    public static final int Oper2 = 310;
    public static final int Expr6 = 311;
    public static final int BreakStmt = 312;
    public static final int ExprT2 = 313;
    public static final int StmtList = 314;
    public static final int Constant = 315;
    public static final int SubVariableList = 316;
    public static final int SubAndDefault = 317;
    public static final int PrintStmt = 318;
    public static final int ForStmt = 319;
    public static final int Expr9 = 320;
    public static final int Expr1 = 321;
    public static final int VarAndType = 322;
    public static final int IfSubList = 323;
    public static final int Oper1 = 324;
    public static final int ConstList = 325;
    public static final int ElseClause = 326;
    public static final int ExprT41 = 327;
    public static final int FieldList = 328;
    public static final int SubExprList = 329;
    public static final int AfterParenExpr = 330;
    public static final int ClassDef = 331;
    public static final int ReturnStmt = 332;
    public static final int ExprList = 333;
    public static final int StmtBlock = 334;
    public static final int FunctionField = 335;
    public static final int AfterIdentExpr = 336;
    public static final int Program = 337;
    public static final int Expr = 338;
    public static final int ExprT40 = 339;
    public static final int Type = 340;
    public static final int Expr5 = 341;
    public static final int AfterNewExpr = 342;
    public static final int Assignment = 343;
    public static final int ExtendsClause = 344;
    public static final int Oper5 = 345;
    public static final int ArrayType = 346;
    public static final int Expr3 = 347;
    public static final int Actuals = 348;
    public static final int Consts = 349;
    public static final int Variable = 350;
    public static final int ExprT3 = 351;
    public static final int Stmt = 352;
    public static final int SimpleStmt = 353;
    public static final int SimpleType = 354;
    public static final int Oper41 = 355;
    public static final int WhileStmt = 356;
    public static final int ExprT1 = 357;
    public static final int Expr4 = 358;
    public static final int ExprT4 = 359;
    public static final int ReturnExpr = 360;
    public static final int IfStmt = 361;
    public static final int WhileBoolExpr = 362;
    public static final int IfBoolExpr = 363;
    public static final int ExprT6 = 364;
    public static final int ExprT8 = 365;
    public static final int DefaultExpr = 366;
    public static final int IfAndGuardStmt = 367;
    public static final int Expr7 = 368;
    public static final int Expr40 = 369;
    public static final int ClassList = 370;
    public static final int Oper4 = 371;
    public static final int Oper40 = 372;
    public static final int Field = 373;
    
    /* start symbol */
    public final int start = Program;
    
    /**
      * Judge if a symbol (within valid range) is non-terminal.
      *
      * @param symbol the symbol to be judged.
      * @return true if and only if the symbol is non-terminal.
      */
        
    public boolean isNonTerminal(int symbol) {
        return symbol >= 296;
    }
    
    private final String[] allSymbols = {
        "VOID", "BOOL", "INT", "STRING", "CLASS",
        "NULL", "EXTENDS", "THIS", "WHILE", "FOR",
        "IF", "ELSE", "RETURN", "BREAK", "NEW",
        "PRINT", "READ_INTEGER", "READ_LINE", "LITERAL", "IDENTIFIER",
        "AND", "OR", "STATIC", "INSTANCEOF", "LESS_EQUAL",
        "GREATER_EQUAL", "EQUAL", "NOT_EQUAL", "SCOPY", "SEALED",
        "TRI_OR", "VAR", "MOMO", "PLPL", "DEFAULT",
        "IN", "FOREACH", "KL", "KR", "VariableDef",
        "ExprT5", "GuardStmt", "Oper3", "Oper6", "IfSubStmtList",
        "VariableList", "Formals", "Oper7", "IfSubStmt", "Expr8",
        "AfterSimpleTypeExpr", "Expr41", "Expr2", "Oper2", "Expr6",
        "BreakStmt", "ExprT2", "StmtList", "Constant", "SubVariableList",
        "SubAndDefault", "PrintStmt", "ForStmt", "Expr9", "Expr1",
        "VarAndType", "IfSubList", "Oper1", "ConstList", "ElseClause",
        "ExprT41", "FieldList", "SubExprList", "AfterParenExpr", "ClassDef",
        "ReturnStmt", "ExprList", "StmtBlock", "FunctionField", "AfterIdentExpr",
        "Program", "Expr", "ExprT40", "Type", "Expr5",
        "AfterNewExpr", "Assignment", "ExtendsClause", "Oper5", "ArrayType",
        "Expr3", "Actuals", "Consts", "Variable", "ExprT3",
        "Stmt", "SimpleStmt", "SimpleType", "Oper41", "WhileStmt",
        "ExprT1", "Expr4", "ExprT4", "ReturnExpr", "IfStmt",
        "WhileBoolExpr", "IfBoolExpr", "ExprT6", "ExprT8", "DefaultExpr",
        "IfAndGuardStmt", "Expr7", "Expr40", "ClassList", "Oper4",
        "Oper40", "Field",
    };
    
    /**
      * Debugging function (pretty print).
      * Get string presentation of some token or symbol.
      *
      * @param symbol either terminal or non-terminal.
      * @return its string presentation.
      */
        
    public String name(int symbol) {
        if (symbol == eof) return "<eof>";
        if (symbol == eos) return "<eos>";
        if (symbol > 0 && symbol <= 256) return "'" + (char) symbol + "'";
        return allSymbols[symbol - 257];
    }
    
    /* begin lookahead symbols */
    private ArrayList<Set<Integer>> begin = new ArrayList<Set<Integer>>();
    private final Integer[][] beginRaw = {
        {VOID, CLASS, INT, STRING, BOOL},
        {Integer.valueOf('+'), Integer.valueOf('-'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), MOMO},
        {Integer.valueOf('{')},
        {EQUAL, NOT_EQUAL},
        {Integer.valueOf('*'), Integer.valueOf('/'), Integer.valueOf('%')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER, Integer.valueOf('}')},
        {VOID, CLASS, INT, STRING, BOOL},
        {VOID, CLASS, INT, STRING, BOOL, Integer.valueOf(')')},
        {Integer.valueOf('-'), Integer.valueOf('!')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {KL, READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {Integer.valueOf(']'), KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {AND},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {BREAK},
        {AND, Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, IF, Integer.valueOf(';')},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{'), Integer.valueOf('}')},
        {LITERAL, NULL, Integer.valueOf('[')},
        {Integer.valueOf(','), Integer.valueOf(')')},
        {Integer.valueOf(':'), Integer.valueOf(']')},
        {PRINT},
        {FOR},
        {LITERAL, NULL, Integer.valueOf('['), READ_INTEGER, READ_LINE, THIS, NEW, INSTANCEOF, Integer.valueOf('('), IDENTIFIER, KL},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {VAR, VOID, CLASS, INT, STRING, BOOL},
        {TRI_OR, Integer.valueOf('}')},
        {OR},
        {LITERAL, NULL, Integer.valueOf('['), Integer.valueOf(']')},
        {ELSE, PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {MOMO, LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>')},
        {VOID, CLASS, INT, STRING, STATIC, BOOL, Integer.valueOf('}')},
        {Integer.valueOf(','), Integer.valueOf(')')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER, CLASS},
        {CLASS, SEALED},
        {RETURN},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {Integer.valueOf('{')},
        {Integer.valueOf('('), Integer.valueOf(';')},
        {Integer.valueOf('('), Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {CLASS, SEALED},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {PLPL, LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>')},
        {VOID, CLASS, INT, STRING, BOOL},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {IDENTIFIER, VOID, CLASS, INT, STRING, BOOL},
        {Integer.valueOf('='), Integer.valueOf(';'), Integer.valueOf(')')},
        {EXTENDS, Integer.valueOf('{')},
        {Integer.valueOf('+'), Integer.valueOf('-')},
        {Integer.valueOf('['), IDENTIFIER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER, Integer.valueOf(')')},
        {Integer.valueOf(','), Integer.valueOf(']')},
        {VOID, CLASS, INT, STRING, BOOL},
        {EQUAL, NOT_EQUAL, Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';')},
        {VOID, CLASS, INT, STRING, BOOL, KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, VAR, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), READ_INTEGER, WHILE, FOR, RETURN, PRINT, BREAK, Integer.valueOf('{'), SCOPY, IF, FOREACH},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER, VAR, Integer.valueOf(';'), Integer.valueOf(')')},
        {INT, VOID, BOOL, STRING, CLASS},
        {MOMO},
        {WHILE},
        {OR, Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), IF, Integer.valueOf(';')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {LESS_EQUAL, GREATER_EQUAL, Integer.valueOf('<'), Integer.valueOf('>'), Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER, Integer.valueOf(';')},
        {Integer.valueOf('(')},
        {WHILE, Integer.valueOf(')')},
        {IF, KR},
        {Integer.valueOf('*'), Integer.valueOf('/'), Integer.valueOf('%'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), MOMO},
        {Integer.valueOf('['), Integer.valueOf('.'), Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {DEFAULT, Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {Integer.valueOf('('), Integer.valueOf('{')},
        {Integer.valueOf('-'), Integer.valueOf('!'), KL, READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {CLASS, SEALED, eof, eos},
        {LESS_EQUAL, GREATER_EQUAL, Integer.valueOf('<'), Integer.valueOf('>')},
        {PLPL},
        {STATIC, VOID, CLASS, INT, STRING, BOOL},
    };
    
    /**
      * Get begin lookahead tokens for `symbol`.
      *
      * @param symbol the non-terminal.
      * @return its begin lookahead tokens.
      */
        
    public Set<Integer> beginSet(int symbol) {
        return begin.get(symbol - 296);
    }
    
    /* follow set */
    private ArrayList<Set<Integer>> follow = new ArrayList<Set<Integer>>();
    private final Integer[][] followRaw = {
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), MOMO},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {Integer.valueOf('}')},
        {Integer.valueOf(')')},
        {Integer.valueOf(')')},
        {KL, READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {TRI_OR, Integer.valueOf('}')},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>')},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, IF, Integer.valueOf(';')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), MOMO},
        {Integer.valueOf(';')},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, IF, Integer.valueOf(';')},
        {Integer.valueOf('}')},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {Integer.valueOf(')')},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {Integer.valueOf(';')},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), IF, Integer.valueOf(';')},
        {IDENTIFIER},
        {Integer.valueOf('}')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {Integer.valueOf(']')},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>')},
        {Integer.valueOf('}')},
        {Integer.valueOf(')')},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {CLASS, SEALED, eof, eos},
        {Integer.valueOf(';')},
        {Integer.valueOf(')')},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, STATIC, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {VOID, CLASS, INT, Integer.valueOf('}'), STRING, STATIC, BOOL},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {eof, eos},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), IF, Integer.valueOf(';')},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>')},
        {IDENTIFIER},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), MOMO},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {Integer.valueOf(';'), Integer.valueOf(')')},
        {Integer.valueOf('{')},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {IDENTIFIER},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';')},
        {Integer.valueOf(')')},
        {Integer.valueOf(']')},
        {Integer.valueOf(';'), Integer.valueOf(','), Integer.valueOf(')')},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';')},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {Integer.valueOf(';'), Integer.valueOf(')')},
        {Integer.valueOf('['), IDENTIFIER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), Integer.valueOf(')'), Integer.valueOf(','), WHILE, Integer.valueOf('='), IF, Integer.valueOf(';')},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';')},
        {Integer.valueOf(']'), FOR, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';')},
        {Integer.valueOf(';')},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {Integer.valueOf(')')},
        {KR},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), MOMO},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('.'), Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('['), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {PRINT, KL, VOID, FOR, Integer.valueOf('!'), FOREACH, Integer.valueOf('-'), CLASS, READ_LINE, WHILE, RETURN, NULL, INT, SCOPY, Integer.valueOf('}'), IDENTIFIER, NEW, IF, VAR, THIS, INSTANCEOF, STRING, LITERAL, ELSE, TRI_OR, Integer.valueOf('('), Integer.valueOf(';'), Integer.valueOf('['), BOOL, BREAK, READ_INTEGER, Integer.valueOf('{')},
        {Integer.valueOf('/'), LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf('-'), Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), PLPL, WHILE, Integer.valueOf('='), OR, Integer.valueOf('+'), AND, Integer.valueOf('*'), IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>'), Integer.valueOf('%'), MOMO},
        {LESS_EQUAL, Integer.valueOf(']'), FOR, GREATER_EQUAL, KR, Integer.valueOf(':'), EQUAL, Integer.valueOf(')'), NOT_EQUAL, Integer.valueOf(','), WHILE, Integer.valueOf('='), OR, AND, IF, Integer.valueOf(';'), Integer.valueOf('<'), Integer.valueOf('>')},
        {eof, eos},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {KL, Integer.valueOf('!'), Integer.valueOf('-'), READ_LINE, NULL, IDENTIFIER, NEW, THIS, INSTANCEOF, LITERAL, Integer.valueOf('('), Integer.valueOf('['), READ_INTEGER},
        {VOID, CLASS, INT, Integer.valueOf('}'), STRING, STATIC, BOOL},
    };
    
    /**
      * Get follow set for `symbol`.
      *
      * @param symbol the non-terminal.
      * @return its follow set.
      */
        
    public Set<Integer> followSet(int symbol) {
        return follow.get(symbol - 296);
    }
    
    public Table() {
        for (int i = 0; i < 78; i++) {
            begin.add(new HashSet<>(Arrays.asList(beginRaw[i])));
            follow.add(new HashSet<>(Arrays.asList(followRaw[i])));
        }
    }
    
    /**
      * Predictive table `M` query function.
      * `query(A, a)` will return the corresponding term `M(A, a)`, i.e., the target production
      * for non-terminal `A` when the lookahead token is `a`.
      *
      * @param nonTerminal   the non-terminal.
      * @param lookahead     the lookahead symbol.
      * @return a pair `<id, right>` where `right` is the right-hand side of the target
      * production `nonTerminal -> right`, and `id` is the corresponding action id. To execute
      * such action, call `act(id, params)`.
      * If the corresponding term is undefined in the table, `null` will be returned.
      */
        
    public Map.Entry<Integer, List<Integer>> query(int nonTerminal, int lookahead) {
        switch (nonTerminal) {
            //# line 48
            case VariableDef: {
                switch (lookahead) {
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(0, Arrays.asList(Variable, Integer.valueOf(';')));
                    default: return null;
                }
            }
            //# line 639
            case ExprT5: {
                switch (lookahead) {
                    case '+':
                    case '-':
                        return new AbstractMap.SimpleEntry<>(1, Arrays.asList(Oper5, Expr6, ExprT5));
                    case LESS_EQUAL:
                    case ']':
                    case FOR:
                    case GREATER_EQUAL:
                    case KR:
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case PLPL:
                    case WHILE:
                    case '=':
                    case OR:
                    case AND:
                    case IF:
                    case ';':
                    case '<':
                    case '>':
                    case MOMO:
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 283
            case GuardStmt: {
                switch (lookahead) {
                    case '{':
                        return new AbstractMap.SimpleEntry<>(3, Arrays.asList(Integer.valueOf('{'), IfSubStmtList, Integer.valueOf('}')));
                    default: return null;
                }
            }
            //# line 357
            case Oper3: {
                switch (lookahead) {
                    case EQUAL:
                        return new AbstractMap.SimpleEntry<>(4, Arrays.asList(EQUAL));
                    case NOT_EQUAL:
                        return new AbstractMap.SimpleEntry<>(5, Arrays.asList(NOT_EQUAL));
                    default: return null;
                }
            }
            //# line 417
            case Oper6: {
                switch (lookahead) {
                    case '*':
                        return new AbstractMap.SimpleEntry<>(6, Arrays.asList(Integer.valueOf('*')));
                    case '/':
                        return new AbstractMap.SimpleEntry<>(7, Arrays.asList(Integer.valueOf('/')));
                    case '%':
                        return new AbstractMap.SimpleEntry<>(8, Arrays.asList(Integer.valueOf('%')));
                    default: return null;
                }
            }
            //# line 289
            case IfSubStmtList: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(9, Arrays.asList(IfSubStmt, IfSubList));
                    case '}':
                        return new AbstractMap.SimpleEntry<>(10, Arrays.asList());
                    default: return null;
                }
            }
            //# line 168
            case VariableList: {
                switch (lookahead) {
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(11, Arrays.asList(Variable, SubVariableList));
                    default: return null;
                }
            }
            //# line 158
            case Formals: {
                switch (lookahead) {
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(12, Arrays.asList(VariableList));
                    case ')':
                        return new AbstractMap.SimpleEntry<>(13, Arrays.asList());
                    default: return null;
                }
            }
            //# line 434
            case Oper7: {
                switch (lookahead) {
                    case '-':
                        return new AbstractMap.SimpleEntry<>(14, Arrays.asList(Integer.valueOf('-')));
                    case '!':
                        return new AbstractMap.SimpleEntry<>(15, Arrays.asList(Integer.valueOf('!')));
                    default: return null;
                }
            }
            //# line 313
            case IfSubStmt: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(16, Arrays.asList(Expr, Integer.valueOf(':'), Stmt));
                    default: return null;
                }
            }
            //# line 695
            case Expr8: {
                switch (lookahead) {
                    case KL:
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(17, Arrays.asList(Expr9, ExprT8));
                    default: return null;
                }
            }
            //# line 847
            case AfterSimpleTypeExpr: {
                switch (lookahead) {
                    case ']':
                        return new AbstractMap.SimpleEntry<>(18, Arrays.asList(Integer.valueOf(']'), Integer.valueOf('['), AfterSimpleTypeExpr));
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(19, Arrays.asList(Expr, Integer.valueOf(']')));
                    default: return null;
                }
            }
            //# line 598
            case Expr41: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(20, Arrays.asList(Expr5, ExprT41));
                    default: return null;
                }
            }
            //# line 482
            case Expr2: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(21, Arrays.asList(Expr3, ExprT2));
                    default: return null;
                }
            }
            //# line 350
            case Oper2: {
                switch (lookahead) {
                    case AND:
                        return new AbstractMap.SimpleEntry<>(22, Arrays.asList(AND));
                    default: return null;
                }
            }
            //# line 656
            case Expr6: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(23, Arrays.asList(Expr7, ExprT6));
                    default: return null;
                }
            }
            //# line 952
            case BreakStmt: {
                switch (lookahead) {
                    case BREAK:
                        return new AbstractMap.SimpleEntry<>(24, Arrays.asList(BREAK));
                    default: return null;
                }
            }
            //# line 494
            case ExprT2: {
                switch (lookahead) {
                    case AND:
                        return new AbstractMap.SimpleEntry<>(25, Arrays.asList(Oper2, Expr3, ExprT2));
                    case ']':
                    case FOR:
                    case KR:
                    case ':':
                    case ')':
                    case ',':
                    case WHILE:
                    case '=':
                    case OR:
                    case IF:
                    case ';':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 195
            case StmtList: {
                switch (lookahead) {
                    case PRINT:
                    case KL:
                    case VOID:
                    case FOR:
                    case '!':
                    case FOREACH:
                    case '-':
                    case CLASS:
                    case READ_LINE:
                    case WHILE:
                    case RETURN:
                    case NULL:
                    case INT:
                    case SCOPY:
                    case IDENTIFIER:
                    case NEW:
                    case IF:
                    case VAR:
                    case THIS:
                    case INSTANCEOF:
                    case STRING:
                    case LITERAL:
                    case '(':
                    case ';':
                    case '[':
                    case BOOL:
                    case BREAK:
                    case READ_INTEGER:
                    case '{':
                        return new AbstractMap.SimpleEntry<>(27, Arrays.asList(Stmt, StmtList));
                    case '}':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 871
            case Constant: {
                switch (lookahead) {
                    case LITERAL:
                        return new AbstractMap.SimpleEntry<>(29, Arrays.asList(LITERAL));
                    case NULL:
                        return new AbstractMap.SimpleEntry<>(30, Arrays.asList(NULL));
                    case '[':
                        return new AbstractMap.SimpleEntry<>(31, Arrays.asList(Integer.valueOf('['), ConstList, Integer.valueOf(']')));
                    default: return null;
                }
            }
            //# line 178
            case SubVariableList: {
                switch (lookahead) {
                    case ',':
                        return new AbstractMap.SimpleEntry<>(32, Arrays.asList(Integer.valueOf(','), Variable, SubVariableList));
                    case ')':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 748
            case SubAndDefault: {
                switch (lookahead) {
                    case ':':
                        return new AbstractMap.SimpleEntry<>(34, Arrays.asList(Integer.valueOf(':'), Expr, Integer.valueOf(']')));
                    case ']':
                        return new AbstractMap.SimpleEntry<>(35, Arrays.asList(Integer.valueOf(']'), DefaultExpr));
                    default: return null;
                }
            }
            //# line 984
            case PrintStmt: {
                switch (lookahead) {
                    case PRINT:
                        return new AbstractMap.SimpleEntry<>(36, Arrays.asList(PRINT, Integer.valueOf('('), ExprList, Integer.valueOf(')')));
                    default: return null;
                }
            }
            //# line 946
            case ForStmt: {
                switch (lookahead) {
                    case FOR:
                        return new AbstractMap.SimpleEntry<>(37, Arrays.asList(FOR, Integer.valueOf('('), SimpleStmt, Integer.valueOf(';'), Expr, Integer.valueOf(';'), SimpleStmt, Integer.valueOf(')'), Stmt));
                    default: return null;
                }
            }
            //# line 777
            case Expr9: {
                switch (lookahead) {
                    case LITERAL:
                    case NULL:
                    case '[':
                        return new AbstractMap.SimpleEntry<>(38, Arrays.asList(Constant));
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(39, Arrays.asList(READ_INTEGER, Integer.valueOf('('), Integer.valueOf(')')));
                    case READ_LINE:
                        return new AbstractMap.SimpleEntry<>(40, Arrays.asList(READ_LINE, Integer.valueOf('('), Integer.valueOf(')')));
                    case THIS:
                        return new AbstractMap.SimpleEntry<>(41, Arrays.asList(THIS));
                    case NEW:
                        return new AbstractMap.SimpleEntry<>(42, Arrays.asList(NEW, AfterNewExpr));
                    case INSTANCEOF:
                        return new AbstractMap.SimpleEntry<>(43, Arrays.asList(INSTANCEOF, Integer.valueOf('('), Expr, Integer.valueOf(','), IDENTIFIER, Integer.valueOf(')')));
                    case '(':
                        return new AbstractMap.SimpleEntry<>(44, Arrays.asList(Integer.valueOf('('), AfterParenExpr));
                    case IDENTIFIER:
                        return new AbstractMap.SimpleEntry<>(45, Arrays.asList(IDENTIFIER, AfterIdentExpr));
                    case KL:
                        return new AbstractMap.SimpleEntry<>(46, Arrays.asList(KL, Expr, FOR, IDENTIFIER, IN, Expr, IfBoolExpr, KR));
                    default: return null;
                }
            }
            //# line 453
            case Expr1: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(47, Arrays.asList(Expr2, ExprT1));
                    default: return null;
                }
            }
            //# line 253
            case VarAndType: {
                switch (lookahead) {
                    case VAR:
                        return new AbstractMap.SimpleEntry<>(48, Arrays.asList(VAR));
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(49, Arrays.asList(Type));
                    default: return null;
                }
            }
            //# line 301
            case IfSubList: {
                switch (lookahead) {
                    case TRI_OR:
                        return new AbstractMap.SimpleEntry<>(50, Arrays.asList(TRI_OR, IfSubStmt, IfSubList));
                    case '}':
                        return new AbstractMap.SimpleEntry<>(51, Arrays.asList());
                    default: return null;
                }
            }
            //# line 343
            case Oper1: {
                switch (lookahead) {
                    case OR:
                        return new AbstractMap.SimpleEntry<>(52, Arrays.asList(OR));
                    default: return null;
                }
            }
            //# line 885
            case ConstList: {
                switch (lookahead) {
                    case LITERAL:
                    case NULL:
                    case '[':
                        return new AbstractMap.SimpleEntry<>(53, Arrays.asList(Constant, Consts));
                    case ']':
                        return new AbstractMap.SimpleEntry<>(54, Arrays.asList());
                    default: return null;
                }
            }
            //# line 964
            case ElseClause: {
                switch (lookahead) {
                    case ELSE:
                        return new AbstractMap.SimpleEntry<>(55, Arrays.asList(ELSE, Stmt));
                    case PRINT:
                    case KL:
                    case VOID:
                    case FOR:
                    case '!':
                    case FOREACH:
                    case '-':
                    case CLASS:
                    case READ_LINE:
                    case WHILE:
                    case RETURN:
                    case NULL:
                    case INT:
                    case SCOPY:
                    case '}':
                    case IDENTIFIER:
                    case NEW:
                    case IF:
                    case VAR:
                    case THIS:
                    case INSTANCEOF:
                    case STRING:
                    case LITERAL:
                    case TRI_OR:
                    case '(':
                    case ';':
                    case '[':
                    case BOOL:
                    case BREAK:
                    case READ_INTEGER:
                    case '{':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 610
            case ExprT41: {
                switch (lookahead) {
                    case MOMO:
                        return new AbstractMap.SimpleEntry<>(57, Arrays.asList(Oper41, Expr5, ExprT41));
                    case LESS_EQUAL:
                    case ']':
                    case FOR:
                    case GREATER_EQUAL:
                    case KR:
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case PLPL:
                    case WHILE:
                    case '=':
                    case OR:
                    case AND:
                    case IF:
                    case ';':
                    case '<':
                    case '>':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 118
            case FieldList: {
                switch (lookahead) {
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case STATIC:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(59, Arrays.asList(Field, FieldList));
                    case '}':
                        return new AbstractMap.SimpleEntry<>(60, Arrays.asList());
                    default: return null;
                }
            }
            //# line 927
            case SubExprList: {
                switch (lookahead) {
                    case ',':
                        return new AbstractMap.SimpleEntry<>(61, Arrays.asList(Integer.valueOf(','), Expr, SubExprList));
                    case ')':
                        return new AbstractMap.SimpleEntry<>(62, Arrays.asList());
                    default: return null;
                }
            }
            //# line 859
            case AfterParenExpr: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(63, Arrays.asList(Expr, Integer.valueOf(')')));
                    case CLASS:
                        return new AbstractMap.SimpleEntry<>(64, Arrays.asList(CLASS, IDENTIFIER, Integer.valueOf(')'), Expr9));
                    default: return null;
                }
            }
            //# line 101
            case ClassDef: {
                switch (lookahead) {
                    case CLASS:
                        return new AbstractMap.SimpleEntry<>(65, Arrays.asList(CLASS, IDENTIFIER, ExtendsClause, Integer.valueOf('{'), FieldList, Integer.valueOf('}')));
                    case SEALED:
                        return new AbstractMap.SimpleEntry<>(66, Arrays.asList(SEALED, CLASS, IDENTIFIER, ExtendsClause, Integer.valueOf('{'), FieldList, Integer.valueOf('}')));
                    default: return null;
                }
            }
            //# line 971
            case ReturnStmt: {
                switch (lookahead) {
                    case RETURN:
                        return new AbstractMap.SimpleEntry<>(67, Arrays.asList(RETURN, ReturnExpr));
                    default: return null;
                }
            }
            //# line 919
            case ExprList: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(68, Arrays.asList(Expr, SubExprList));
                    default: return null;
                }
            }
            //# line 189
            case StmtBlock: {
                switch (lookahead) {
                    case '{':
                        return new AbstractMap.SimpleEntry<>(69, Arrays.asList(Integer.valueOf('{'), StmtList, Integer.valueOf('}')));
                    default: return null;
                }
            }
            //# line 150
            case FunctionField: {
                switch (lookahead) {
                    case '(':
                        return new AbstractMap.SimpleEntry<>(70, Arrays.asList(Integer.valueOf('('), Formals, Integer.valueOf(')'), StmtBlock));
                    case ';':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList(Integer.valueOf(';')));
                    default: return null;
                }
            }
            //# line 770
            case AfterIdentExpr: {
                switch (lookahead) {
                    case '(':
                        return new AbstractMap.SimpleEntry<>(72, Arrays.asList(Integer.valueOf('('), Actuals, Integer.valueOf(')')));
                    case '/':
                    case LESS_EQUAL:
                    case ']':
                    case FOR:
                    case GREATER_EQUAL:
                    case KR:
                    case '.':
                    case '-':
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case PLPL:
                    case WHILE:
                    case '=':
                    case OR:
                    case '+':
                    case AND:
                    case '*':
                    case IF:
                    case ';':
                    case '<':
                    case '[':
                    case '>':
                    case '%':
                    case MOMO:
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 26
            case Program: {
                switch (lookahead) {
                    case CLASS:
                    case SEALED:
                        return new AbstractMap.SimpleEntry<>(74, Arrays.asList(ClassDef, ClassList));
                    default: return null;
                }
            }
            //# line 447
            case Expr: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(75, Arrays.asList(Expr1));
                    default: return null;
                }
            }
            //# line 581
            case ExprT40: {
                switch (lookahead) {
                    case PLPL:
                        return new AbstractMap.SimpleEntry<>(76, Arrays.asList(Oper40, Expr41, ExprT40));
                    case LESS_EQUAL:
                    case ']':
                    case FOR:
                    case GREATER_EQUAL:
                    case KR:
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case WHILE:
                    case '=':
                    case OR:
                    case AND:
                    case IF:
                    case ';':
                    case '<':
                    case '>':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 82
            case Type: {
                switch (lookahead) {
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(78, Arrays.asList(SimpleType, ArrayType));
                    default: return null;
                }
            }
            //# line 627
            case Expr5: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(79, Arrays.asList(Expr6, ExprT5));
                    default: return null;
                }
            }
            //# line 833
            case AfterNewExpr: {
                switch (lookahead) {
                    case IDENTIFIER:
                        return new AbstractMap.SimpleEntry<>(80, Arrays.asList(IDENTIFIER, Integer.valueOf('('), Integer.valueOf(')')));
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(81, Arrays.asList(SimpleType, Integer.valueOf('['), AfterSimpleTypeExpr));
                    default: return null;
                }
            }
            //# line 334
            case Assignment: {
                switch (lookahead) {
                    case '=':
                        return new AbstractMap.SimpleEntry<>(82, Arrays.asList(Integer.valueOf('='), Expr));
                    case ';':
                    case ')':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 111
            case ExtendsClause: {
                switch (lookahead) {
                    case EXTENDS:
                        return new AbstractMap.SimpleEntry<>(84, Arrays.asList(EXTENDS, IDENTIFIER));
                    case '{':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 405
            case Oper5: {
                switch (lookahead) {
                    case '+':
                        return new AbstractMap.SimpleEntry<>(86, Arrays.asList(Integer.valueOf('+')));
                    case '-':
                        return new AbstractMap.SimpleEntry<>(87, Arrays.asList(Integer.valueOf('-')));
                    default: return null;
                }
            }
            //# line 91
            case ArrayType: {
                switch (lookahead) {
                    case '[':
                        return new AbstractMap.SimpleEntry<>(88, Arrays.asList(Integer.valueOf('['), Integer.valueOf(']'), ArrayType));
                    case IDENTIFIER:
                        return new AbstractMap.SimpleEntry<>(89, Arrays.asList());
                    default: return null;
                }
            }
            //# line 511
            case Expr3: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(90, Arrays.asList(Expr4, ExprT3));
                    default: return null;
                }
            }
            //# line 909
            case Actuals: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(91, Arrays.asList(ExprList));
                    case ')':
                        return new AbstractMap.SimpleEntry<>(92, Arrays.asList());
                    default: return null;
                }
            }
            //# line 897
            case Consts: {
                switch (lookahead) {
                    case ',':
                        return new AbstractMap.SimpleEntry<>(93, Arrays.asList(Integer.valueOf(','), Constant, Consts));
                    case ']':
                        return new AbstractMap.SimpleEntry<>(94, Arrays.asList());
                    default: return null;
                }
            }
            //# line 54
            case Variable: {
                switch (lookahead) {
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(95, Arrays.asList(Type, IDENTIFIER));
                    default: return null;
                }
            }
            //# line 523
            case ExprT3: {
                switch (lookahead) {
                    case EQUAL:
                    case NOT_EQUAL:
                        return new AbstractMap.SimpleEntry<>(96, Arrays.asList(Oper3, Expr4, ExprT3));
                    case ']':
                    case FOR:
                    case KR:
                    case ':':
                    case ')':
                    case ',':
                    case WHILE:
                    case '=':
                    case OR:
                    case AND:
                    case IF:
                    case ';':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 203
            case Stmt: {
                switch (lookahead) {
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(98, Arrays.asList(VariableDef));
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case VAR:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case ';':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(99, Arrays.asList(SimpleStmt, Integer.valueOf(';')));
                    case WHILE:
                        return new AbstractMap.SimpleEntry<>(100, Arrays.asList(WhileStmt));
                    case FOR:
                        return new AbstractMap.SimpleEntry<>(101, Arrays.asList(ForStmt));
                    case RETURN:
                        return new AbstractMap.SimpleEntry<>(102, Arrays.asList(ReturnStmt, Integer.valueOf(';')));
                    case PRINT:
                        return new AbstractMap.SimpleEntry<>(103, Arrays.asList(PrintStmt, Integer.valueOf(';')));
                    case BREAK:
                        return new AbstractMap.SimpleEntry<>(104, Arrays.asList(BreakStmt, Integer.valueOf(';')));
                    case '{':
                        return new AbstractMap.SimpleEntry<>(105, Arrays.asList(StmtBlock));
                    case SCOPY:
                        return new AbstractMap.SimpleEntry<>(106, Arrays.asList(SCOPY, Integer.valueOf('('), IDENTIFIER, Integer.valueOf(','), Expr, Integer.valueOf(')'), Integer.valueOf(';')));
                    case IF:
                        return new AbstractMap.SimpleEntry<>(107, Arrays.asList(IF, IfAndGuardStmt));
                    case FOREACH:
                        return new AbstractMap.SimpleEntry<>(108, Arrays.asList(FOREACH, Integer.valueOf('('), VarAndType, IDENTIFIER, IN, Expr, WhileBoolExpr, Integer.valueOf(')'), Stmt));
                    default: return null;
                }
            }
            //# line 319
            case SimpleStmt: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(109, Arrays.asList(Expr, Assignment));
                    case VAR:
                        return new AbstractMap.SimpleEntry<>(110, Arrays.asList(VAR, IDENTIFIER, Integer.valueOf('='), Expr));
                    case ';':
                    case ')':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 60
            case SimpleType: {
                switch (lookahead) {
                    case INT:
                        return new AbstractMap.SimpleEntry<>(112, Arrays.asList(INT));
                    case VOID:
                        return new AbstractMap.SimpleEntry<>(113, Arrays.asList(VOID));
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(114, Arrays.asList(BOOL));
                    case STRING:
                        return new AbstractMap.SimpleEntry<>(115, Arrays.asList(STRING));
                    case CLASS:
                        return new AbstractMap.SimpleEntry<>(116, Arrays.asList(CLASS, IDENTIFIER));
                    default: return null;
                }
            }
            //# line 398
            case Oper41: {
                switch (lookahead) {
                    case MOMO:
                        return new AbstractMap.SimpleEntry<>(117, Arrays.asList(MOMO));
                    default: return null;
                }
            }
            //# line 940
            case WhileStmt: {
                switch (lookahead) {
                    case WHILE:
                        return new AbstractMap.SimpleEntry<>(118, Arrays.asList(WHILE, Integer.valueOf('('), Expr, Integer.valueOf(')'), Stmt));
                    default: return null;
                }
            }
            //# line 465
            case ExprT1: {
                switch (lookahead) {
                    case OR:
                        return new AbstractMap.SimpleEntry<>(119, Arrays.asList(Oper1, Expr2, ExprT1));
                    case ']':
                    case FOR:
                    case KR:
                    case ':':
                    case ')':
                    case ',':
                    case WHILE:
                    case '=':
                    case IF:
                    case ';':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 540
            case Expr4: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(121, Arrays.asList(Expr40, ExprT4));
                    default: return null;
                }
            }
            //# line 552
            case ExprT4: {
                switch (lookahead) {
                    case LESS_EQUAL:
                    case GREATER_EQUAL:
                    case '<':
                    case '>':
                        return new AbstractMap.SimpleEntry<>(122, Arrays.asList(Oper4, Expr5, ExprT4));
                    case ']':
                    case FOR:
                    case KR:
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case WHILE:
                    case '=':
                    case OR:
                    case AND:
                    case IF:
                    case ';':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 977
            case ReturnExpr: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(124, Arrays.asList(Expr));
                    case ';':
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 958
            case IfStmt: {
                switch (lookahead) {
                    case '(':
                        return new AbstractMap.SimpleEntry<>(126, Arrays.asList(Integer.valueOf('('), Expr, Integer.valueOf(')'), Stmt, ElseClause));
                    default: return null;
                }
            }
            //# line 263
            case WhileBoolExpr: {
                switch (lookahead) {
                    case WHILE:
                        return new AbstractMap.SimpleEntry<>(127, Arrays.asList(WHILE, Expr));
                    case ')':
                        return new AbstractMap.SimpleEntry<>(128, Arrays.asList());
                    default: return null;
                }
            }
            //# line 823
            case IfBoolExpr: {
                switch (lookahead) {
                    case IF:
                        return new AbstractMap.SimpleEntry<>(129, Arrays.asList(IF, Expr));
                    case KR:
                        return new AbstractMap.SimpleEntry<>(130, Arrays.asList());
                    default: return null;
                }
            }
            //# line 668
            case ExprT6: {
                switch (lookahead) {
                    case '*':
                    case '/':
                    case '%':
                        return new AbstractMap.SimpleEntry<>(131, Arrays.asList(Oper6, Expr7, ExprT6));
                    case LESS_EQUAL:
                    case ']':
                    case FOR:
                    case GREATER_EQUAL:
                    case KR:
                    case '-':
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case PLPL:
                    case WHILE:
                    case '=':
                    case OR:
                    case '+':
                    case AND:
                    case IF:
                    case ';':
                    case '<':
                    case '>':
                    case MOMO:
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 721
            case ExprT8: {
                switch (lookahead) {
                    case '[':
                        return new AbstractMap.SimpleEntry<>(133, Arrays.asList(Integer.valueOf('['), Expr, SubAndDefault, ExprT8));
                    case '.':
                        return new AbstractMap.SimpleEntry<>(134, Arrays.asList(Integer.valueOf('.'), IDENTIFIER, AfterIdentExpr, ExprT8));
                    case '/':
                    case LESS_EQUAL:
                    case ']':
                    case FOR:
                    case GREATER_EQUAL:
                    case KR:
                    case '-':
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case PLPL:
                    case WHILE:
                    case '=':
                    case OR:
                    case '+':
                    case AND:
                    case '*':
                    case IF:
                    case ';':
                    case '<':
                    case '>':
                    case '%':
                    case MOMO:
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 759
            case DefaultExpr: {
                switch (lookahead) {
                    case DEFAULT:
                        return new AbstractMap.SimpleEntry<>(136, Arrays.asList(DEFAULT, Expr9));
                    case '/':
                    case LESS_EQUAL:
                    case ']':
                    case FOR:
                    case GREATER_EQUAL:
                    case KR:
                    case '.':
                    case '-':
                    case ':':
                    case EQUAL:
                    case ')':
                    case NOT_EQUAL:
                    case ',':
                    case PLPL:
                    case WHILE:
                    case '=':
                    case OR:
                    case '+':
                    case AND:
                    case '*':
                    case IF:
                    case ';':
                    case '<':
                    case '[':
                    case '>':
                    case '%':
                    case MOMO:
                        return new AbstractMap.SimpleEntry<>(137, Arrays.asList());
                    default: return null;
                }
            }
            //# line 273
            case IfAndGuardStmt: {
                switch (lookahead) {
                    case '(':
                        return new AbstractMap.SimpleEntry<>(138, Arrays.asList(IfStmt));
                    case '{':
                        return new AbstractMap.SimpleEntry<>(139, Arrays.asList(GuardStmt));
                    default: return null;
                }
            }
            //# line 685
            case Expr7: {
                switch (lookahead) {
                    case '-':
                    case '!':
                        return new AbstractMap.SimpleEntry<>(140, Arrays.asList(Oper7, Expr8));
                    case KL:
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(141, Arrays.asList(Expr8));
                    default: return null;
                }
            }
            //# line 569
            case Expr40: {
                switch (lookahead) {
                    case KL:
                    case '!':
                    case '-':
                    case READ_LINE:
                    case NULL:
                    case IDENTIFIER:
                    case NEW:
                    case THIS:
                    case INSTANCEOF:
                    case LITERAL:
                    case '(':
                    case '[':
                    case READ_INTEGER:
                        return new AbstractMap.SimpleEntry<>(142, Arrays.asList(Expr41, ExprT40));
                    default: return null;
                }
            }
            //# line 37
            case ClassList: {
                switch (lookahead) {
                    case CLASS:
                    case SEALED:
                        return new AbstractMap.SimpleEntry<>(143, Arrays.asList(ClassDef, ClassList));
                    case eof:
                    case eos:
                        return new AbstractMap.SimpleEntry<>(144, Arrays.asList());
                    default: return null;
                }
            }
            //# line 369
            case Oper4: {
                switch (lookahead) {
                    case LESS_EQUAL:
                        return new AbstractMap.SimpleEntry<>(145, Arrays.asList(LESS_EQUAL));
                    case GREATER_EQUAL:
                        return new AbstractMap.SimpleEntry<>(146, Arrays.asList(GREATER_EQUAL));
                    case '<':
                        return new AbstractMap.SimpleEntry<>(147, Arrays.asList(Integer.valueOf('<')));
                    case '>':
                        return new AbstractMap.SimpleEntry<>(148, Arrays.asList(Integer.valueOf('>')));
                    default: return null;
                }
            }
            //# line 391
            case Oper40: {
                switch (lookahead) {
                    case PLPL:
                        return new AbstractMap.SimpleEntry<>(149, Arrays.asList(PLPL));
                    default: return null;
                }
            }
            //# line 134
            case Field: {
                switch (lookahead) {
                    case STATIC:
                        return new AbstractMap.SimpleEntry<>(150, Arrays.asList(STATIC, Type, IDENTIFIER, Integer.valueOf('('), Formals, Integer.valueOf(')'), StmtBlock));
                    case VOID:
                    case CLASS:
                    case INT:
                    case STRING:
                    case BOOL:
                        return new AbstractMap.SimpleEntry<>(151, Arrays.asList(Type, IDENTIFIER, FunctionField));
                    default: return null;
                }
            }
            default: return null;
        }
    }
    
    /**
      * Execute some user-defined semantic action on the specification file.
      * Note that `$$ = params[0], $1 = params[1], ...`. Nothing will be returned, so please
      * do not forget to store the parsed AST result in `params[0]`.
      *
      * @param id      the action id.
      * @param params  parameter array.
      */
        
    public void act(int id, SemValue[] params) {
        switch (id) {
            case 0: {
                //# line 49
                params[0].vdef = params[1].vdef;
                return;
            }
            case 1: {
                //# line 640
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 2: {
                /* no action */
                return;
            }
            case 3: {
                //# line 284
                params[0].stmt = new Tree.GuardStmt(params[2].ifList, params[1].loc);
                return;
            }
            case 4: {
                //# line 358
                params[0].counter = Tree.EQ;
                params[0].loc = params[1].loc;
                return;
            }
            case 5: {
                //# line 363
                params[0].counter = Tree.NE;
                params[0].loc = params[1].loc;
                return;
            }
            case 6: {
                //# line 418
                params[0].counter = Tree.MUL;
                params[0].loc = params[1].loc;
                return;
            }
            case 7: {
                //# line 423
                params[0].counter = Tree.DIV;
                params[0].loc = params[1].loc;
                return;
            }
            case 8: {
                //# line 428
                params[0].counter = Tree.MOD;
                params[0].loc = params[1].loc;
                return;
            }
            case 9: {
                //# line 290
                params[0].ifList = new ArrayList<Tree.IfSub>();
                params[0].ifList.add(params[1].ifSub);
                params[0].ifList.addAll(params[2].ifList);
                return;
            }
            case 10: {
                //# line 296
                params[0].ifList = new ArrayList<Tree.IfSub>();
                return;
            }
            case 11: {
                //# line 169
                params[0].vlist = new ArrayList<VarDef>();
                params[0].vlist.add(params[1].vdef);
                if (params[2].vlist != null) {
                    params[0].vlist.addAll(params[2].vlist);
                }
                return;
            }
            case 12: {
                //# line 159
                params[0].vlist = params[1].vlist;
                return;
            }
            case 13: {
                //# line 163
                params[0].vlist = new ArrayList<VarDef>();
                return;
            }
            case 14: {
                //# line 435
                params[0].counter = Tree.NEG;
                params[0].loc = params[1].loc;
                return;
            }
            case 15: {
                //# line 440
                params[0].counter = Tree.NOT;
                params[0].loc = params[1].loc;
                return;
            }
            case 16: {
                //# line 314
                params[0].ifSub = new Tree.IfSub(params[1].expr, params[3].stmt, params[2].loc);
                return;
            }
            case 17: {
                //# line 696
                params[0].expr = params[1].expr;
                params[0].loc = params[1].loc;
                if (params[2].vec != null) {
                    for (SemValue v : params[2].vec) {
                        if (v.expr != null) {
                        	if (v.expr1 != null) {
                        		if (v.counter == Tree.SUBARRAY)
                        			params[0].expr = new Tree.SubArray(params[1].expr, v.expr, v.expr1, params[1].loc);
                        		else if (v.counter == Tree.DEFAULT)
                        			params[0].expr = new Tree.Default(params[1].expr, v.expr, v.expr1, params[1].loc);
                        	}
                        	else params[0].expr = new Tree.Indexed(params[0].expr, v.expr, params[0].loc);
                        } else if (v.elist != null) {
                            params[0].expr = new Tree.CallExpr(params[0].expr, v.ident, v.elist, v.loc);
                            params[0].loc = v.loc;
                        } else {
                            params[0].expr = new Tree.Ident(params[0].expr, v.ident, v.loc);
                            params[0].loc = v.loc;
                        }
                    }
                }
                return;
            }
            case 18: {
                //# line 848
                params[0].expr = params[3].expr;
                params[0].counter = 1 + params[3].counter;
                return;
            }
            case 19: {
                //# line 853
                params[0].expr = params[1].expr;
                params[0].counter = 0;
                return;
            }
            case 20: {
                //# line 599
                params[0].expr = params[1].expr;
                if (params[2].svec != null) {
                    for (int i = 0; i < params[2].svec.size(); ++i) {
                        params[0].expr = new Tree.Binary(params[2].svec.get(i), params[0].expr,
                            params[2].evec.get(i), params[2].lvec.get(i));
                    }
                }
                return;
            }
            case 21: {
                //# line 483
                params[0].expr = params[1].expr;
                if (params[2].svec != null) {
                    for (int i = 0; i < params[2].svec.size(); ++i) {
                        params[0].expr = new Tree.Binary(params[2].svec.get(i), params[0].expr,
                            params[2].evec.get(i), params[2].lvec.get(i));
                    }
                }
                return;
            }
            case 22: {
                //# line 351
                params[0].counter = Tree.AND;
                params[0].loc = params[1].loc;
                return;
            }
            case 23: {
                //# line 657
                params[0].expr = params[1].expr;
                if (params[2].svec != null) {
                    for (int i = 0; i < params[2].svec.size(); ++i) {
                        params[0].expr = new Tree.Binary(params[2].svec.get(i), params[0].expr,
                            params[2].evec.get(i), params[2].lvec.get(i));
                    }
                }
                return;
            }
            case 24: {
                //# line 953
                params[0].stmt = new Tree.Break(params[1].loc);
                return;
            }
            case 25: {
                //# line 495
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 26: {
                /* no action */
                return;
            }
            case 27: {
                //# line 196
                params[0].slist.add(params[1].stmt);
                params[0].slist.addAll(params[2].slist);
                return;
            }
            case 28: {
                /* no action */
                return;
            }
            case 29: {
                //# line 872
                params[0].expr = new Tree.Literal(params[1].typeTag, params[1].literal, params[1].loc);
                return;
            }
            case 30: {
                //# line 876
                params[0].expr = new Null(params[1].loc);
                return;
            }
            case 31: {
                //# line 880
                params[0].expr = new Tree.ArrayConst(params[2].elist, params[1].loc);
                return;
            }
            case 32: {
                //# line 179
                params[0].vlist = new ArrayList<VarDef>();
                params[0].vlist.add(params[2].vdef);
                if (params[3].vlist != null) {
                    params[0].vlist.addAll(params[3].vlist);
                }
                return;
            }
            case 33: {
                /* no action */
                return;
            }
            case 34: {
                //# line 749
                params[0].expr = params[2].expr;
                params[0].counter = Tree.SUBARRAY;
                return;
            }
            case 35: {
                //# line 754
                params[0] = params[2];
                return;
            }
            case 36: {
                //# line 985
                params[0].stmt = new Tree.Print(params[3].elist, params[1].loc);
                return;
            }
            case 37: {
                //# line 947
                params[0].stmt = new Tree.ForLoop(params[3].stmt, params[5].expr, params[7].stmt, params[9].stmt, params[1].loc);
                return;
            }
            case 38: {
                //# line 778
                params[0].expr = params[1].expr;
                return;
            }
            case 39: {
                //# line 782
                params[0].expr = new Tree.ReadIntExpr(params[1].loc);
                return;
            }
            case 40: {
                //# line 786
                params[0].expr = new Tree.ReadLineExpr(params[1].loc);
                return;
            }
            case 41: {
                //# line 790
                params[0].expr = new Tree.ThisExpr(params[1].loc);
                return;
            }
            case 42: {
                //# line 794
                if (params[2].ident != null) {
                    params[0].expr = new Tree.NewClass(params[2].ident, params[1].loc);
                } else {
                    params[0].expr = new Tree.NewArray(params[2].type, params[2].expr, params[1].loc);
                }
                return;
            }
            case 43: {
                //# line 802
                params[0].expr = new Tree.TypeTest(params[3].expr, params[5].ident, params[1].loc);
                return;
            }
            case 44: {
                //# line 806
                params[0].expr = params[2].expr;
                return;
            }
            case 45: {
                //# line 810
                if (params[2].elist != null) {
                    params[0].expr = new Tree.CallExpr(null, params[1].ident, params[2].elist, params[1].loc);
                } else {
                    params[0].expr = new Tree.Ident(null, params[1].ident, params[1].loc);
                }
                return;
            }
            case 46: {
                //# line 818
                params[0].expr = new Tree.PyArray(params[2].expr, params[4].ident, params[6].expr, params[7].expr, params[1].loc);
                return;
            }
            case 47: {
                //# line 454
                params[0].expr = params[1].expr;
                if (params[2].svec != null) {
                    for (int i = 0; i < params[2].svec.size(); ++i) {
                        params[0].expr = new Tree.Binary(params[2].svec.get(i), params[0].expr,
                            params[2].evec.get(i), params[2].lvec.get(i));
                    }
                }
                return;
            }
            case 48: {
                //# line 254
                params[0].type = null;
                return;
            }
            case 49: {
                //# line 258
                params[0].type = params[1].type;
                return;
            }
            case 50: {
                //# line 302
                params[0].ifList = new ArrayList<Tree.IfSub>();
                params[0].ifList.add(params[2].ifSub);
                params[0].ifList.addAll(params[3].ifList);
                return;
            }
            case 51: {
                //# line 308
                params[0].ifList = new ArrayList<Tree.IfSub>();
                return;
            }
            case 52: {
                //# line 344
                params[0].counter = Tree.OR;
                params[0].loc = params[1].loc;
                return;
            }
            case 53: {
                //# line 886
                params[0].elist = new ArrayList<Tree.Expr>();
                params[0].elist.add(params[1].expr);
                params[0].elist.addAll(params[2].elist);
                return;
            }
            case 54: {
                //# line 892
                params[0].elist = new ArrayList<Tree.Expr>();
                return;
            }
            case 55: {
                //# line 965
                params[0].stmt = params[2].stmt;
                return;
            }
            case 56: {
                /* no action */
                return;
            }
            case 57: {
                //# line 611
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 58: {
                /* no action */
                return;
            }
            case 59: {
                //# line 119
                params[0].flist = new ArrayList<Tree>();
                if (params[1].vdef != null) {
                    params[0].flist.add(params[1].vdef);
                } else {
                    params[0].flist.add(params[1].fdef);
                }
                params[0].flist.addAll(params[2].flist);
                return;
            }
            case 60: {
                //# line 129
                params[0].flist = new ArrayList<Tree>();
                return;
            }
            case 61: {
                //# line 928
                params[0].elist = new ArrayList<Tree.Expr>();
                params[0].elist.add(params[2].expr);
                params[0].elist.addAll(params[3].elist);
                return;
            }
            case 62: {
                //# line 934
                params[0].elist = new ArrayList<Tree.Expr>();
                return;
            }
            case 63: {
                //# line 860
                params[0].expr = params[1].expr;
                return;
            }
            case 64: {
                //# line 864
                params[0].expr = new Tree.TypeCast(params[2].ident, params[4].expr, params[4].loc);
                return;
            }
            case 65: {
                //# line 102
                params[0].cdef = new Tree.ClassDef(false, params[2].ident, params[3].ident, params[5].flist, params[1].loc);
                return;
            }
            case 66: {
                //# line 106
                params[0].cdef = new Tree.ClassDef(true, params[3].ident, params[4].ident, params[6].flist, params[1].loc);
                return;
            }
            case 67: {
                //# line 972
                params[0].stmt = new Tree.Return(params[2].expr, params[1].loc);
                return;
            }
            case 68: {
                //# line 920
                params[0].elist = new ArrayList<Tree.Expr>();
                params[0].elist.add(params[1].expr);
                params[0].elist.addAll(params[2].elist);
                return;
            }
            case 69: {
                //# line 190
                params[0].stmt = new Tree.Block(params[2].slist, params[1].loc);
                return;
            }
            case 70: {
                //# line 151
                params[0].vlist = params[2].vlist;
                params[0].stmt = params[4].stmt;
                return;
            }
            case 71: {
                /* no action */
                return;
            }
            case 72: {
                //# line 771
                params[0].elist = params[2].elist;
                return;
            }
            case 73: {
                /* no action */
                return;
            }
            case 74: {
                //# line 27
                params[0].clist = new ArrayList<ClassDef>();
                params[0].clist.add(params[1].cdef);
                if (params[2].clist != null) {
                    params[0].clist.addAll(params[2].clist);
                }
                params[0].prog = new Tree.TopLevel(params[0].clist, params[0].loc);
                return;
            }
            case 75: {
                //# line 448
                params[0].expr = params[1].expr;
                return;
            }
            case 76: {
                //# line 582
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 77: {
                /* no action */
                return;
            }
            case 78: {
                //# line 83
                params[0].type = params[1].type;
                for (int i = 0; i < params[2].counter; ++i) {
                    params[0].type = new Tree.TypeArray(params[0].type, params[1].loc);
                }
                return;
            }
            case 79: {
                //# line 628
                params[0].expr = params[1].expr;
                if (params[2].svec != null) {
                    for (int i = 0; i < params[2].svec.size(); ++i) {
                        params[0].expr = new Tree.Binary(params[2].svec.get(i), params[0].expr,
                            params[2].evec.get(i), params[2].lvec.get(i));
                    }
                }
                return;
            }
            case 80: {
                //# line 834
                params[0].ident = params[1].ident;
                return;
            }
            case 81: {
                //# line 838
                params[0].type = params[1].type;
                for (int i = 0; i < params[3].counter; ++i) {
                    params[0].type = new Tree.TypeArray(params[0].type, params[1].loc);
                }
                params[0].expr = params[3].expr;
                return;
            }
            case 82: {
                //# line 335
                params[0].loc = params[1].loc;
                params[0].expr = params[2].expr;
                return;
            }
            case 83: {
                /* no action */
                return;
            }
            case 84: {
                //# line 112
                params[0].ident = params[2].ident;
                return;
            }
            case 85: {
                /* no action */
                return;
            }
            case 86: {
                //# line 406
                params[0].counter = Tree.PLUS;
                params[0].loc = params[1].loc;
                return;
            }
            case 87: {
                //# line 411
                params[0].counter = Tree.MINUS;
                params[0].loc = params[1].loc;
                return;
            }
            case 88: {
                //# line 92
                params[0].counter = 1 + params[3].counter;
                return;
            }
            case 89: {
                //# line 96
                params[0].counter = 0;
                return;
            }
            case 90: {
                //# line 512
                params[0].expr = params[1].expr;
                if (params[2].svec != null) {
                    for (int i = 0; i < params[2].svec.size(); ++i) {
                        params[0].expr = new Tree.Binary(params[2].svec.get(i), params[0].expr,
                            params[2].evec.get(i), params[2].lvec.get(i));
                    }
                }
                return;
            }
            case 91: {
                //# line 910
                params[0].elist = params[1].elist;
                return;
            }
            case 92: {
                //# line 914
                params[0].elist = new ArrayList<Tree.Expr>();
                return;
            }
            case 93: {
                //# line 898
                params[0].elist = new ArrayList<Tree.Expr>();
                params[0].elist.add(params[2].expr);
                params[0].elist.addAll(params[3].elist);
                return;
            }
            case 94: {
                //# line 904
                params[0].elist = new ArrayList<Tree.Expr>();
                return;
            }
            case 95: {
                //# line 55
                params[0].vdef = new Tree.VarDef(params[2].ident, params[1].type, params[2].loc);
                return;
            }
            case 96: {
                //# line 524
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 97: {
                /* no action */
                return;
            }
            case 98: {
                //# line 204
                params[0].stmt = params[1].vdef;
                return;
            }
            case 99: {
                //# line 208
                if (params[1].stmt == null) {
                    params[0].stmt = new Tree.Skip(params[2].loc);
                } else {
                    params[0].stmt = params[1].stmt;
                }
                return;
            }
            case 100: {
                //# line 216
                params[0].stmt = params[1].stmt;
                return;
            }
            case 101: {
                //# line 220
                params[0].stmt = params[1].stmt;
                return;
            }
            case 102: {
                //# line 224
                params[0].stmt = params[1].stmt;
                return;
            }
            case 103: {
                //# line 228
                params[0].stmt = params[1].stmt;
                return;
            }
            case 104: {
                //# line 232
                params[0].stmt = params[1].stmt;
                return;
            }
            case 105: {
                //# line 236
                params[0].stmt = params[1].stmt;
                return;
            }
            case 106: {
                //# line 240
                params[0].stmt = new Tree.Scopy(params[3].ident, params[5].expr, params[1].loc);
                return;
            }
            case 107: {
                //# line 244
                params[0].stmt = params[2].stmt;
                return;
            }
            case 108: {
                //# line 248
                params[0].stmt = new Tree.ForEach(params[3].type, params[4].ident, params[6].expr, params[7].expr, params[9].stmt, params[1].loc);
                return;
            }
            case 109: {
                //# line 320
                if (params[2].expr == null) {
                    params[0].stmt = new Tree.Calculate(params[1].expr, params[1].loc);
                } else {
                    params[0].stmt = new Tree.Assign(params[1].expr, params[2].expr, params[2].loc);
                }
                return;
            }
            case 110: {
                //# line 328
                params[0].stmt = new Tree.VarIdent(params[2].ident, params[4].expr, params[1].loc);
                return;
            }
            case 111: {
                /* no action */
                return;
            }
            case 112: {
                //# line 61
                params[0].type = new Tree.TypeIdent(Tree.INT, params[1].loc);
                return;
            }
            case 113: {
                //# line 65
                params[0].type = new Tree.TypeIdent(Tree.VOID, params[1].loc);
                return;
            }
            case 114: {
                //# line 69
                params[0].type = new Tree.TypeIdent(Tree.BOOL, params[1].loc);
                return;
            }
            case 115: {
                //# line 73
                params[0].type = new Tree.TypeIdent(Tree.STRING, params[1].loc);
                return;
            }
            case 116: {
                //# line 77
                params[0].type = new Tree.TypeClass(params[2].ident, params[1].loc);
                return;
            }
            case 117: {
                //# line 399
                params[0].counter = Tree.MOMO;
                params[0].loc = params[1].loc;
                return;
            }
            case 118: {
                //# line 941
                params[0].stmt = new Tree.WhileLoop(params[3].expr, params[5].stmt, params[1].loc);
                return;
            }
            case 119: {
                //# line 466
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 120: {
                /* no action */
                return;
            }
            case 121: {
                //# line 541
                params[0].expr = params[1].expr;
                if (params[2].svec != null) {
                    for (int i = 0; i < params[2].svec.size(); ++i) {
                        params[0].expr = new Tree.Binary(params[2].svec.get(i), params[0].expr,
                            params[2].evec.get(i), params[2].lvec.get(i));
                    }
                }
                return;
            }
            case 122: {
                //# line 553
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 123: {
                /* no action */
                return;
            }
            case 124: {
                //# line 978
                params[0].expr = params[1].expr;
                return;
            }
            case 125: {
                /* no action */
                return;
            }
            case 126: {
                //# line 959
                params[0].stmt = new Tree.If(params[2].expr, params[4].stmt, params[5].stmt, params[1].loc);
                return;
            }
            case 127: {
                //# line 264
                params[0].expr = params[2].expr;
                return;
            }
            case 128: {
                //# line 268
                params[0].expr = new Tree.Literal(Tree.BOOL, true, params[0].loc);
                return;
            }
            case 129: {
                //# line 824
                params[0].expr = params[2].expr;
                return;
            }
            case 130: {
                //# line 828
                params[0].expr = new Tree.Literal(Tree.BOOL, true, params[0].loc);
                return;
            }
            case 131: {
                //# line 669
                params[0].svec = new Vector<Integer>();
                params[0].lvec = new Vector<Location>();
                params[0].evec = new Vector<Expr>();
                params[0].svec.add(params[1].counter);
                params[0].lvec.add(params[1].loc);
                params[0].evec.add(params[2].expr);
                if (params[3].svec != null) {
                    params[0].svec.addAll(params[3].svec);
                    params[0].lvec.addAll(params[3].lvec);
                    params[0].evec.addAll(params[3].evec);
                }
                return;
            }
            case 132: {
                /* no action */
                return;
            }
            case 133: {
                //# line 722
                SemValue sem = new SemValue();
                sem.expr = params[2].expr;
                sem.expr1 = params[3].expr;
                sem.counter = params[3].counter;
                params[0].vec = new Vector<SemValue>();
                params[0].vec.add(sem);
                if (params[4].vec != null) {
                    params[0].vec.addAll(params[4].vec);
                }
                return;
            }
            case 134: {
                //# line 734
                SemValue sem = new SemValue();
                sem.ident = params[2].ident;
                sem.loc = params[2].loc;
                sem.elist = params[3].elist;
                params[0].vec = new Vector<SemValue>();
                params[0].vec.add(sem);
                if (params[4].vec != null) {
                    params[0].vec.addAll(params[4].vec);
                }
                return;
            }
            case 135: {
                /* no action */
                return;
            }
            case 136: {
                //# line 760
                params[0].expr = params[2].expr;
                params[0].counter = Tree.DEFAULT;
                return;
            }
            case 137: {
                //# line 765
                params[0].counter = -1;
                return;
            }
            case 138: {
                //# line 274
                params[0].stmt = params[1].stmt;
                return;
            }
            case 139: {
                //# line 278
                params[0].stmt = params[1].stmt;
                return;
            }
            case 140: {
                //# line 686
                params[0].expr = new Tree.Unary(params[1].counter, params[2].expr, params[1].loc);
                return;
            }
            case 141: {
                //# line 690
                params[0].expr = params[1].expr;
                return;
            }
            case 142: {
                //# line 570
                if (params[2].svec != null) {
                	params[0].expr = params[2].evec.get(params[2].svec.size() - 1);
                	for (int i = params[2].svec.size() - 2; i >= 0; --i)
                		params[0].expr = new Tree.Binary(params[2].svec.get(i + 1), params[2].evec.get(i), params[0].expr, params[2].lvec.get(i));
                	params[0].expr = new Tree.Binary(params[2].svec.get(0), params[1].expr, params[0].expr, params[1].loc);
                }
                else params[0].expr = params[1].expr;
                return;
            }
            case 143: {
                //# line 38
                params[0].clist = new ArrayList<ClassDef>();
                params[0].clist.add(params[1].cdef);
                if (params[2].clist != null) {
                    params[0].clist.addAll(params[2].clist);
                }
                return;
            }
            case 144: {
                /* no action */
                return;
            }
            case 145: {
                //# line 370
                params[0].counter = Tree.LE;
                params[0].loc = params[1].loc;
                return;
            }
            case 146: {
                //# line 375
                params[0].counter = Tree.GE;
                params[0].loc = params[1].loc;
                return;
            }
            case 147: {
                //# line 380
                params[0].counter = Tree.LT;
                params[0].loc = params[1].loc;
                return;
            }
            case 148: {
                //# line 385
                params[0].counter = Tree.GT;
                params[0].loc = params[1].loc;
                return;
            }
            case 149: {
                //# line 392
                params[0].counter = Tree.PLPL;
                params[0].loc = params[1].loc;
                return;
            }
            case 150: {
                //# line 135
                params[0].fdef = new Tree.MethodDef(true, params[3].ident, params[2].type, params[5].vlist,
                    (Block) params[7].stmt, params[3].loc);
                return;
            }
            case 151: {
                //# line 140
                if (params[3].vlist != null) {
                    params[0].fdef = new Tree.MethodDef(false, params[2].ident, params[1].type, params[3].vlist,
                        (Block) params[3].stmt, params[2].loc);
                } else {
                    params[0].vdef = new Tree.VarDef(params[2].ident, params[1].type, params[2].loc);
                }
                return;
            }
        }
    }
}
/* end of file */
