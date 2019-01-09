//### This file created by BYACC 1.8(/Java extension  1.13)
//### Java capabilities added 7 Jan 97, Bob Jamison
//### Updated : 27 Nov 97  -- Bob Jamison, Joe Nieten
//###           01 Jan 98  -- Bob Jamison -- fixed generic semantic constructor
//###           01 Jun 99  -- Bob Jamison -- added Runnable support
//###           06 Aug 00  -- Bob Jamison -- made state variables class-global
//###           03 Jan 01  -- Bob Jamison -- improved flags, tracing
//###           16 May 01  -- Bob Jamison -- added custom stack sizing
//###           04 Mar 02  -- Yuval Oren  -- improved java performance, added options
//###           14 Mar 02  -- Tomas Hurka -- -d support, static initializer workaround
//###           14 Sep 06  -- Keltin Leung-- ReduceListener support, eliminate underflow report in error recovery
//### Please send bug reports to tom@hukatronic.cz
//### static char yysccsid[] = "@(#)yaccpar	1.8 (Berkeley) 01/20/90";






//#line 11 "Parser.y"
package decaf.frontend;

import decaf.tree.Tree;
import decaf.tree.Tree.*;
import decaf.error.*;
import java.util.*;
//#line 25 "Parser.java"
interface ReduceListener {
  public boolean onReduce(String rule);
}




public class Parser
             extends BaseParser
             implements ReduceListener
{

boolean yydebug;        //do I want debug output?
int yynerrs;            //number of errors so far
int yyerrflag;          //was there an error?
int yychar;             //the current working character

ReduceListener reduceListener = null;
void yyclearin ()       {yychar = (-1);}
void yyerrok ()         {yyerrflag=0;}
void addReduceListener(ReduceListener l) {
  reduceListener = l;}


//########## MESSAGES ##########
//###############################################################
// method: debug
//###############################################################
void debug(String msg)
{
  if (yydebug)
    System.out.println(msg);
}

//########## STATE STACK ##########
final static int YYSTACKSIZE = 500;  //maximum stack size
int statestk[] = new int[YYSTACKSIZE]; //state stack
int stateptr;
int stateptrmax;                     //highest index of stackptr
int statemax;                        //state when highest index reached
//###############################################################
// methods: state stack push,pop,drop,peek
//###############################################################
final void state_push(int state)
{
  try {
		stateptr++;
		statestk[stateptr]=state;
	 }
	 catch (ArrayIndexOutOfBoundsException e) {
     int oldsize = statestk.length;
     int newsize = oldsize * 2;
     int[] newstack = new int[newsize];
     System.arraycopy(statestk,0,newstack,0,oldsize);
     statestk = newstack;
     statestk[stateptr]=state;
  }
}
final int state_pop()
{
  return statestk[stateptr--];
}
final void state_drop(int cnt)
{
  stateptr -= cnt; 
}
final int state_peek(int relative)
{
  return statestk[stateptr-relative];
}
//###############################################################
// method: init_stacks : allocate and prepare stacks
//###############################################################
final boolean init_stacks()
{
  stateptr = -1;
  val_init();
  return true;
}
//###############################################################
// method: dump_stacks : show n levels of the stacks
//###############################################################
void dump_stacks(int count)
{
int i;
  System.out.println("=index==state====value=     s:"+stateptr+"  v:"+valptr);
  for (i=0;i<count;i++)
    System.out.println(" "+i+"    "+statestk[i]+"      "+valstk[i]);
  System.out.println("======================");
}


//########## SEMANTIC VALUES ##########
//## **user defined:SemValue
String   yytext;//user variable to return contextual strings
SemValue yyval; //used to return semantic vals from action routines
SemValue yylval;//the 'lval' (result) I got from yylex()
SemValue valstk[] = new SemValue[YYSTACKSIZE];
int valptr;
//###############################################################
// methods: value stack push,pop,drop,peek.
//###############################################################
final void val_init()
{
  yyval=new SemValue();
  yylval=new SemValue();
  valptr=-1;
}
final void val_push(SemValue val)
{
  try {
    valptr++;
    valstk[valptr]=val;
  }
  catch (ArrayIndexOutOfBoundsException e) {
    int oldsize = valstk.length;
    int newsize = oldsize*2;
    SemValue[] newstack = new SemValue[newsize];
    System.arraycopy(valstk,0,newstack,0,oldsize);
    valstk = newstack;
    valstk[valptr]=val;
  }
}
final SemValue val_pop()
{
  return valstk[valptr--];
}
final void val_drop(int cnt)
{
  valptr -= cnt;
}
final SemValue val_peek(int relative)
{
  return valstk[valptr-relative];
}
//#### end semantic value section ####
public final static short VOID=257;
public final static short BOOL=258;
public final static short INT=259;
public final static short STRING=260;
public final static short CLASS=261;
public final static short NULL=262;
public final static short EXTENDS=263;
public final static short THIS=264;
public final static short WHILE=265;
public final static short FOR=266;
public final static short IF=267;
public final static short ELSE=268;
public final static short RETURN=269;
public final static short BREAK=270;
public final static short NEW=271;
public final static short PRINT=272;
public final static short READ_INTEGER=273;
public final static short READ_LINE=274;
public final static short LITERAL=275;
public final static short IDENTIFIER=276;
public final static short AND=277;
public final static short OR=278;
public final static short STATIC=279;
public final static short INSTANCEOF=280;
public final static short LESS_EQUAL=281;
public final static short GREATER_EQUAL=282;
public final static short EQUAL=283;
public final static short NOT_EQUAL=284;
public final static short UMINUS=285;
public final static short EMPTY=286;
public final static short YYERRCODE=256;
final static short yylhs[] = {                           -1,
    0,    1,    1,    3,    4,    5,    5,    5,    5,    5,
    5,    2,    6,    6,    7,    7,    7,    9,    9,   10,
   10,    8,    8,   11,   12,   12,   13,   13,   13,   13,
   13,   13,   13,   13,   13,   14,   14,   14,   24,   24,
   21,   21,   23,   22,   22,   22,   22,   22,   22,   22,
   22,   22,   22,   22,   22,   22,   22,   22,   22,   22,
   22,   22,   22,   22,   22,   22,   22,   22,   22,   26,
   26,   25,   25,   27,   27,   16,   17,   20,   15,   28,
   28,   18,   18,   19,
};
final static short yylen[] = {                            2,
    1,    2,    1,    2,    2,    1,    1,    1,    1,    2,
    3,    6,    2,    0,    2,    2,    0,    1,    0,    3,
    1,    7,    6,    3,    2,    0,    1,    2,    1,    1,
    1,    2,    2,    2,    1,    3,    1,    0,    2,    0,
    2,    4,    5,    1,    1,    1,    3,    3,    3,    3,
    3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
    2,    2,    3,    3,    1,    4,    5,    6,    5,    1,
    1,    1,    0,    3,    1,    5,    9,    1,    6,    2,
    0,    2,    1,    4,
};
final static short yydefred[] = {                         0,
    0,    0,    0,    3,    0,    2,    0,    0,   13,   17,
    0,    7,    8,    6,    9,    0,    0,   12,   15,    0,
    0,   16,   10,    0,    4,    0,    0,    0,    0,   11,
    0,   21,    0,    0,    0,    0,    5,    0,    0,    0,
   26,   23,   20,   22,    0,   71,   65,    0,    0,    0,
    0,   78,    0,    0,    0,    0,   70,    0,    0,    0,
    0,   24,   27,   35,   25,    0,   29,   30,   31,    0,
    0,    0,    0,    0,    0,    0,   46,    0,    0,    0,
   44,    0,   45,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,   28,   32,   33,   34,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,   39,    0,    0,    0,    0,    0,    0,    0,    0,
    0,   63,   64,    0,    0,   60,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,   66,    0,    0,   84,    0,
    0,   42,    0,    0,   76,    0,    0,   67,    0,    0,
   69,   43,    0,    0,   79,   68,    0,   80,    0,   77,
};
final static short yydgoto[] = {                          2,
    3,    4,   63,   20,   33,    8,   11,   22,   34,   35,
   64,   45,   65,   66,   67,   68,   69,   70,   71,   72,
   81,   74,   83,   76,  153,   77,  121,  165,
};
final static short yysindex[] = {                      -247,
 -257,    0, -247,    0, -242,    0, -251,  -67,    0,    0,
  -76,    0,    0,    0,    0, -217, -214,    0,    0,   24,
  -88,    0,    0,  -87,    0,   45,   -2,   54, -214,    0,
 -214,    0,  -85,   56,   63,   68,    0,  -15, -214,  -15,
    0,    0,    0,    0,   -9,    0,    0,   70,   72,   75,
  495,    0, -183,   81,   88,   90,    0,   91,  495,  495,
  458,    0,    0,    0,    0,   73,    0,    0,    0,   74,
   76,   78,   84,  496,    0, -142,    0,  495,  495,  495,
    0,  496,    0,  107,   48,  495,  116,  123,  495,  -38,
  -38, -128,  307,    0,    0,    0,    0,  495,  495,  495,
  495,  495,  495,  495,  495,  495,  495,  495,  495,  495,
  495,    0,  495,  126,  366,  108,  378,  129,  541,  496,
  -11,    0,    0,  402,  131,    0,  496,  567,  555,   -5,
   -5,  579,  579,  -19,  -19,  -38,  -38,  -38,   -5,   -5,
  413,  495,   15,  495,   15,    0,  434,  495,    0, -103,
  495,    0,  133,  132,    0,  470,  -89,    0,  496,  145,
    0,    0,  495,   15,    0,    0,  146,    0,   15,    0,
};
final static short yyrindex[] = {                         0,
    0,    0,  193,    0,   83,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,  140,    0,    0,  160,    0,
  160,    0,    0,    0,  163,    0,    0,    0,    0,    0,
    0,    0,    0,    0,  -58,    0,    0,    0,    0,    0,
  -57,    0,    0,    0,    0,    0,    0,    0,  -71,  -71,
  -71,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,  517,    0,   58,    0,    0,  -71,  -58,  -71,
    0,  148,    0,    0,    0,  -71,    0,    0,  -71,   82,
  109,    0,    0,    0,    0,    0,    0,  -71,  -71,  -71,
  -71,  -71,  -71,  -71,  -71,  -71,  -71,  -71,  -71,  -71,
  -71,    0,  -71,   20,    0,    0,    0,    0,  -71,   10,
    0,    0,    0,    0,    0,    0,  -30,   29,  -24,   99,
  288,   43,  176,  665,  747,  118,  153,  268,  594,  610,
    0,  -32,  -58,  -71,  -58,    0,    0,  -71,    0,    0,
  -71,    0,    0,  167,    0,    0,  -33,    0,   27,    0,
    0,    0,  -31,  -58,    0,    0,    0,    0,  -58,    0,
};
final static short yygindex[] = {                         0,
    0,  206,  199,   67,    5,    0,    0,    0,  183,    0,
   12,    0, -130,  -74,    0,    0,    0,    0,    0,    0,
  592,  822,  620,    0,    0,    0,   79,    0,
};
final static int YYTABLESIZE=1031;
static short yytable[];
static { yytable();}
static void yytable(){
yytable = new short[]{                         81,
   38,   83,   27,   27,  116,   27,   81,  112,   73,   38,
   36,   81,  155,    1,  157,   21,   59,  109,    5,   59,
    7,   24,  107,   60,    9,   81,  112,  108,   36,  149,
   61,  109,  148,  168,   59,   59,  107,  105,  170,  106,
  112,  108,   12,   13,   14,   15,   16,   60,   18,   42,
   75,   44,  113,   75,   61,   10,   41,   85,   23,   59,
   41,   41,   41,   41,   41,   41,   41,   74,   59,   58,
   74,  113,   58,   12,   13,   14,   15,   16,   41,   41,
   41,   41,   25,   52,   29,  113,   52,   58,  167,   81,
   30,   81,   84,   31,   45,   32,   38,   32,   37,   45,
   45,   52,   45,   45,   45,   43,   39,   41,   40,   78,
   41,   79,   41,   41,   80,   62,   37,   45,   61,   45,
   86,   58,   61,   61,   61,   61,   61,   87,   61,   88,
   89,   94,   95,  114,   96,   52,   97,   41,  119,   56,
   61,   61,   56,   61,   98,   62,  118,  125,   45,   62,
   62,   62,   62,   62,   49,   62,  122,   56,   49,   49,
   49,   49,   49,  123,   49,  142,  144,   62,   62,  146,
   62,  151,  160,  162,   61,  148,   49,   49,  164,   49,
   12,   13,   14,   15,   16,  166,  169,   26,   28,   50,
   37,   56,    1,   50,   50,   50,   50,   50,    5,   50,
   19,   62,   17,   18,   40,   14,   82,   72,    6,   19,
   49,   50,   50,   36,   50,    0,   53,   40,   40,   53,
  154,    0,    0,   81,   81,   81,   81,   81,   81,    0,
   81,   81,   81,   81,   53,   81,   81,   81,   81,   81,
   81,   81,   81,   40,   40,   50,   81,   12,   13,   14,
   15,   16,   46,   59,   47,   48,   49,   50,    0,   51,
   52,   53,   54,   55,   56,   57,    0,    0,   53,    0,
   58,   12,   13,   14,   15,   16,   46,    0,   47,   48,
   49,   50,    0,   51,   52,   53,   54,   55,   56,   57,
    0,    0,    0,    0,   58,    0,   41,   41,    0,    0,
   41,   41,   41,   41,   51,   58,   58,    0,   51,   51,
   51,   51,   51,    0,   51,    0,    0,    0,    0,   52,
   52,    0,    0,    0,    0,    0,   51,   51,   57,   51,
    0,   57,    0,    0,   45,   45,    0,    0,   45,   45,
   45,   45,    0,  109,    0,    0,   57,  126,  107,  105,
    0,  106,  112,  108,    0,    0,    0,    0,   61,   61,
   51,    0,   61,   61,   61,   61,  111,    0,  110,    0,
    0,    0,    0,    0,    0,   56,   56,    0,    0,    0,
   57,   56,   56,    0,    0,   62,   62,    0,    0,   62,
   62,   62,   62,    0,   49,   49,    0,  113,   49,   49,
   49,   49,  109,    0,    0,    0,  143,  107,  105,    0,
  106,  112,  108,    0,  109,    0,    0,    0,  145,  107,
  105,    0,  106,  112,  108,  111,    0,  110,    0,   50,
   50,    0,    0,   50,   50,   50,   50,  111,  109,  110,
    0,    0,    0,  107,  105,  150,  106,  112,  108,  109,
    0,    0,   53,   53,  107,  105,  113,  106,  112,  108,
    0,  111,    0,  110,    0,    0,    0,    0,  113,    0,
  109,    0,  111,    0,  110,  107,  105,    0,  106,  112,
  108,    0,    0,    0,    0,    0,    0,    0,    0,    0,
   60,    0,  113,  111,    0,  110,    0,   61,    0,    0,
    0,    0,   59,  113,    0,  152,  109,    0,    0,    0,
    0,  107,  105,    0,  106,  112,  108,    0,    0,    0,
    0,    0,    0,    0,  113,    0,  158,   60,  163,  111,
    0,  110,  109,    0,   61,    0,    0,  107,  105,   59,
  106,  112,  108,    0,   51,   51,    0,    0,   51,   51,
   51,   51,    0,   44,    0,  111,    0,  110,   44,   44,
  113,   44,   44,   44,   57,   57,    0,    0,    0,    0,
   57,   57,    0,   60,    0,    0,   44,    0,   44,    0,
   61,    0,    0,   99,  100,   59,  113,  101,  102,  103,
  104,  109,    0,    0,    0,    0,  107,  105,    0,  106,
  112,  108,    0,  109,    0,    0,    0,   44,  107,  105,
    0,  106,  112,  108,  111,  109,  110,    0,    0,    0,
  107,  105,    0,  106,  112,  108,  111,    0,  110,    0,
    0,    0,    0,   30,   55,    0,   73,   55,  111,    0,
  110,    0,   99,  100,    0,  113,  101,  102,  103,  104,
   54,    0,   55,   54,   99,  100,    0,  113,  101,  102,
  103,  104,    0,    0,   75,    0,    0,    0,   54,  113,
   73,    0,    0,    0,    0,    0,    0,    0,   99,  100,
    0,    0,  101,  102,  103,  104,   55,    0,    0,   99,
  100,    0,    0,  101,  102,  103,  104,    0,   75,    0,
    0,    0,   54,    0,    0,   47,    0,   47,   47,   47,
   99,  100,    0,    0,  101,  102,  103,  104,   92,   46,
    0,   47,    0,   47,   47,    0,   47,    0,   53,    0,
   55,   56,   57,    0,   73,    0,   73,   58,    0,    0,
    0,    0,    0,    0,    0,    0,   99,  100,    0,    0,
  101,  102,  103,  104,   73,   73,   46,   47,   47,    0,
   73,    0,   75,    0,   75,   53,    0,   55,   56,   57,
    0,    0,   99,  100,   58,    0,  101,  102,  103,  104,
    0,    0,   75,   75,    0,    0,    0,   48,   75,   48,
   48,   48,    0,   44,   44,    0,    0,   44,   44,   44,
   44,    0,   46,    0,   47,   48,   48,    0,   48,    0,
    0,   53,    0,   55,   56,   57,    0,    0,    0,    0,
   58,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,   99,    0,    0,    0,  101,  102,  103,  104,   48,
    0,    0,    0,    0,    0,    0,    0,  101,  102,  103,
  104,    0,    0,    0,    0,    0,    0,    0,    0,  101,
  102,    0,    0,    0,    0,    0,    0,    0,    0,    0,
   55,   55,   82,    0,    0,    0,   55,   55,    0,    0,
   90,   91,   93,    0,    0,    0,   54,   54,    0,    0,
    0,    0,   54,   54,    0,    0,    0,    0,    0,  115,
    0,  117,    0,    0,    0,    0,    0,  120,    0,    0,
  124,    0,    0,    0,    0,    0,    0,    0,    0,  127,
  128,  129,  130,  131,  132,  133,  134,  135,  136,  137,
  138,  139,  140,    0,  141,    0,    0,    0,    0,    0,
  147,   47,   47,    0,    0,   47,   47,   47,   47,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,  120,    0,  156,    0,    0,    0,  159,
    0,    0,  161,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
    0,    0,    0,   48,   48,    0,    0,   48,   48,   48,
   48,
};
}
static short yycheck[];
static { yycheck(); }
static void yycheck() {
yycheck = new short[] {                         33,
   59,   59,   91,   91,   79,   91,   40,   46,   41,   41,
   41,   45,  143,  261,  145,   11,   41,   37,  276,   44,
  263,   17,   42,   33,  276,   59,   46,   47,   59,   41,
   40,   37,   44,  164,   59,   45,   42,   43,  169,   45,
   46,   47,  257,  258,  259,  260,  261,   33,  125,   38,
   41,   40,   91,   44,   40,  123,   37,   53,  276,   45,
   41,   42,   43,   44,   45,   46,   47,   41,   93,   41,
   44,   91,   44,  257,  258,  259,  260,  261,   59,   60,
   61,   62,   59,   41,   40,   91,   44,   59,  163,  123,
   93,  125,  276,   40,   37,   29,   41,   31,   41,   42,
   43,   59,   45,   46,   47,   39,   44,  123,   41,   40,
   91,   40,   93,  123,   40,  125,   59,   60,   37,   62,
   40,   93,   41,   42,   43,   44,   45,   40,   47,   40,
   40,   59,   59,  276,   59,   93,   59,  123,   91,   41,
   59,   60,   44,   62,   61,   37,   40,  276,   91,   41,
   42,   43,   44,   45,   37,   47,   41,   59,   41,   42,
   43,   44,   45,   41,   47,   40,   59,   59,   60,   41,
   62,   41,  276,   41,   93,   44,   59,   60,  268,   62,
  257,  258,  259,  260,  261,   41,   41,  276,  276,   37,
  276,   93,    0,   41,   42,   43,   44,   45,   59,   47,
   41,   93,  279,   41,  276,  123,   59,   41,    3,   11,
   93,   59,   60,   31,   62,   -1,   41,  276,  276,   44,
  142,   -1,   -1,  257,  258,  259,  260,  261,  262,   -1,
  264,  265,  266,  267,   59,  269,  270,  271,  272,  273,
  274,  275,  276,  276,  276,   93,  280,  257,  258,  259,
  260,  261,  262,  278,  264,  265,  266,  267,   -1,  269,
  270,  271,  272,  273,  274,  275,   -1,   -1,   93,   -1,
  280,  257,  258,  259,  260,  261,  262,   -1,  264,  265,
  266,  267,   -1,  269,  270,  271,  272,  273,  274,  275,
   -1,   -1,   -1,   -1,  280,   -1,  277,  278,   -1,   -1,
  281,  282,  283,  284,   37,  277,  278,   -1,   41,   42,
   43,   44,   45,   -1,   47,   -1,   -1,   -1,   -1,  277,
  278,   -1,   -1,   -1,   -1,   -1,   59,   60,   41,   62,
   -1,   44,   -1,   -1,  277,  278,   -1,   -1,  281,  282,
  283,  284,   -1,   37,   -1,   -1,   59,   41,   42,   43,
   -1,   45,   46,   47,   -1,   -1,   -1,   -1,  277,  278,
   93,   -1,  281,  282,  283,  284,   60,   -1,   62,   -1,
   -1,   -1,   -1,   -1,   -1,  277,  278,   -1,   -1,   -1,
   93,  283,  284,   -1,   -1,  277,  278,   -1,   -1,  281,
  282,  283,  284,   -1,  277,  278,   -1,   91,  281,  282,
  283,  284,   37,   -1,   -1,   -1,   41,   42,   43,   -1,
   45,   46,   47,   -1,   37,   -1,   -1,   -1,   41,   42,
   43,   -1,   45,   46,   47,   60,   -1,   62,   -1,  277,
  278,   -1,   -1,  281,  282,  283,  284,   60,   37,   62,
   -1,   -1,   -1,   42,   43,   44,   45,   46,   47,   37,
   -1,   -1,  277,  278,   42,   43,   91,   45,   46,   47,
   -1,   60,   -1,   62,   -1,   -1,   -1,   -1,   91,   -1,
   37,   -1,   60,   -1,   62,   42,   43,   -1,   45,   46,
   47,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   33,   -1,   91,   60,   -1,   62,   -1,   40,   -1,   -1,
   -1,   -1,   45,   91,   -1,   93,   37,   -1,   -1,   -1,
   -1,   42,   43,   -1,   45,   46,   47,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   91,   -1,   93,   33,   59,   60,
   -1,   62,   37,   -1,   40,   -1,   -1,   42,   43,   45,
   45,   46,   47,   -1,  277,  278,   -1,   -1,  281,  282,
  283,  284,   -1,   37,   -1,   60,   -1,   62,   42,   43,
   91,   45,   46,   47,  277,  278,   -1,   -1,   -1,   -1,
  283,  284,   -1,   33,   -1,   -1,   60,   -1,   62,   -1,
   40,   -1,   -1,  277,  278,   45,   91,  281,  282,  283,
  284,   37,   -1,   -1,   -1,   -1,   42,   43,   -1,   45,
   46,   47,   -1,   37,   -1,   -1,   -1,   91,   42,   43,
   -1,   45,   46,   47,   60,   37,   62,   -1,   -1,   -1,
   42,   43,   -1,   45,   46,   47,   60,   -1,   62,   -1,
   -1,   -1,   -1,   93,   41,   -1,   45,   44,   60,   -1,
   62,   -1,  277,  278,   -1,   91,  281,  282,  283,  284,
   41,   -1,   59,   44,  277,  278,   -1,   91,  281,  282,
  283,  284,   -1,   -1,   45,   -1,   -1,   -1,   59,   91,
   79,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  277,  278,
   -1,   -1,  281,  282,  283,  284,   93,   -1,   -1,  277,
  278,   -1,   -1,  281,  282,  283,  284,   -1,   79,   -1,
   -1,   -1,   93,   -1,   -1,   41,   -1,   43,   44,   45,
  277,  278,   -1,   -1,  281,  282,  283,  284,  261,  262,
   -1,  264,   -1,   59,   60,   -1,   62,   -1,  271,   -1,
  273,  274,  275,   -1,  143,   -1,  145,  280,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,  277,  278,   -1,   -1,
  281,  282,  283,  284,  163,  164,  262,   93,  264,   -1,
  169,   -1,  143,   -1,  145,  271,   -1,  273,  274,  275,
   -1,   -1,  277,  278,  280,   -1,  281,  282,  283,  284,
   -1,   -1,  163,  164,   -1,   -1,   -1,   41,  169,   43,
   44,   45,   -1,  277,  278,   -1,   -1,  281,  282,  283,
  284,   -1,  262,   -1,  264,   59,   60,   -1,   62,   -1,
   -1,  271,   -1,  273,  274,  275,   -1,   -1,   -1,   -1,
  280,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,  277,   -1,   -1,   -1,  281,  282,  283,  284,   93,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,  281,  282,  283,
  284,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  281,
  282,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
  277,  278,   51,   -1,   -1,   -1,  283,  284,   -1,   -1,
   59,   60,   61,   -1,   -1,   -1,  277,  278,   -1,   -1,
   -1,   -1,  283,  284,   -1,   -1,   -1,   -1,   -1,   78,
   -1,   80,   -1,   -1,   -1,   -1,   -1,   86,   -1,   -1,
   89,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   98,
   99,  100,  101,  102,  103,  104,  105,  106,  107,  108,
  109,  110,  111,   -1,  113,   -1,   -1,   -1,   -1,   -1,
  119,  277,  278,   -1,   -1,  281,  282,  283,  284,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,  142,   -1,  144,   -1,   -1,   -1,  148,
   -1,   -1,  151,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
   -1,   -1,   -1,  277,  278,   -1,   -1,  281,  282,  283,
  284,
};
}
final static short YYFINAL=2;
final static short YYMAXTOKEN=286;
final static String yyname[] = {
"end-of-file",null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,"'!'",null,null,null,"'%'",null,null,"'('","')'","'*'","'+'",
"','","'-'","'.'","'/'",null,null,null,null,null,null,null,null,null,null,null,
"';'","'<'","'='","'>'",null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,"'['",null,"']'",null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,"'{'",null,"'}'",null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,
null,null,null,null,null,null,null,null,null,"VOID","BOOL","INT","STRING",
"CLASS","NULL","EXTENDS","THIS","WHILE","FOR","IF","ELSE","RETURN","BREAK",
"NEW","PRINT","READ_INTEGER","READ_LINE","LITERAL","IDENTIFIER","AND","OR",
"STATIC","INSTANCEOF","LESS_EQUAL","GREATER_EQUAL","EQUAL","NOT_EQUAL","UMINUS",
"EMPTY",
};
final static String yyrule[] = {
"$accept : Program",
"Program : ClassList",
"ClassList : ClassList ClassDef",
"ClassList : ClassDef",
"VariableDef : Variable ';'",
"Variable : Type IDENTIFIER",
"Type : INT",
"Type : VOID",
"Type : BOOL",
"Type : STRING",
"Type : CLASS IDENTIFIER",
"Type : Type '[' ']'",
"ClassDef : CLASS IDENTIFIER ExtendsClause '{' FieldList '}'",
"ExtendsClause : EXTENDS IDENTIFIER",
"ExtendsClause :",
"FieldList : FieldList VariableDef",
"FieldList : FieldList FunctionDef",
"FieldList :",
"Formals : VariableList",
"Formals :",
"VariableList : VariableList ',' Variable",
"VariableList : Variable",
"FunctionDef : STATIC Type IDENTIFIER '(' Formals ')' StmtBlock",
"FunctionDef : Type IDENTIFIER '(' Formals ')' StmtBlock",
"StmtBlock : '{' StmtList '}'",
"StmtList : StmtList Stmt",
"StmtList :",
"Stmt : VariableDef",
"Stmt : SimpleStmt ';'",
"Stmt : IfStmt",
"Stmt : WhileStmt",
"Stmt : ForStmt",
"Stmt : ReturnStmt ';'",
"Stmt : PrintStmt ';'",
"Stmt : BreakStmt ';'",
"Stmt : StmtBlock",
"SimpleStmt : LValue '=' Expr",
"SimpleStmt : Call",
"SimpleStmt :",
"Receiver : Expr '.'",
"Receiver :",
"LValue : Receiver IDENTIFIER",
"LValue : Expr '[' Expr ']'",
"Call : Receiver IDENTIFIER '(' Actuals ')'",
"Expr : LValue",
"Expr : Call",
"Expr : Constant",
"Expr : Expr '+' Expr",
"Expr : Expr '-' Expr",
"Expr : Expr '*' Expr",
"Expr : Expr '/' Expr",
"Expr : Expr '%' Expr",
"Expr : Expr EQUAL Expr",
"Expr : Expr NOT_EQUAL Expr",
"Expr : Expr '<' Expr",
"Expr : Expr '>' Expr",
"Expr : Expr LESS_EQUAL Expr",
"Expr : Expr GREATER_EQUAL Expr",
"Expr : Expr AND Expr",
"Expr : Expr OR Expr",
"Expr : '(' Expr ')'",
"Expr : '-' Expr",
"Expr : '!' Expr",
"Expr : READ_INTEGER '(' ')'",
"Expr : READ_LINE '(' ')'",
"Expr : THIS",
"Expr : NEW IDENTIFIER '(' ')'",
"Expr : NEW Type '[' Expr ']'",
"Expr : INSTANCEOF '(' Expr ',' IDENTIFIER ')'",
"Expr : '(' CLASS IDENTIFIER ')' Expr",
"Constant : LITERAL",
"Constant : NULL",
"Actuals : ExprList",
"Actuals :",
"ExprList : ExprList ',' Expr",
"ExprList : Expr",
"WhileStmt : WHILE '(' Expr ')' Stmt",
"ForStmt : FOR '(' SimpleStmt ';' Expr ';' SimpleStmt ')' Stmt",
"BreakStmt : BREAK",
"IfStmt : IF '(' Expr ')' Stmt ElseClause",
"ElseClause : ELSE Stmt",
"ElseClause :",
"ReturnStmt : RETURN Expr",
"ReturnStmt : RETURN",
"PrintStmt : PRINT '(' ExprList ')'",
};

//#line 423 "Parser.y"
    
	/**
	 * 打印当前归约所用的语法规则<br>
	 * 请勿修改。
	 */
    public boolean onReduce(String rule) {
		if (rule.startsWith("$$"))
			return false;
		else
			rule = rule.replaceAll(" \\$\\$\\d+", "");

   	    if (rule.endsWith(":"))
    	    System.out.println(rule + " <empty>");
   	    else
			System.out.println(rule);
		return false;
    }
    
    public void diagnose() {
		addReduceListener(this);
		yyparse();
	}
//#line 581 "Parser.java"
//###############################################################
// method: yylexdebug : check lexer state
//###############################################################
void yylexdebug(int state,int ch)
{
String s=null;
  if (ch < 0) ch=0;
  if (ch <= YYMAXTOKEN) //check index bounds
     s = yyname[ch];    //now get it
  if (s==null)
    s = "illegal-symbol";
  debug("state "+state+", reading "+ch+" ("+s+")");
}





//The following are now global, to aid in error reporting
int yyn;       //next next thing to do
int yym;       //
int yystate;   //current parsing state from state table
String yys;    //current token string


//###############################################################
// method: yyparse : parse input and execute indicated items
//###############################################################
int yyparse()
{
boolean doaction;
  init_stacks();
  yynerrs = 0;
  yyerrflag = 0;
  yychar = -1;          //impossible char forces a read
  yystate=0;            //initial state
  state_push(yystate);  //save it
  while (true) //until parsing is done, either correctly, or w/error
    {
    doaction=true;
    //if (yydebug) debug("loop"); 
    //#### NEXT ACTION (from reduction table)
    for (yyn=yydefred[yystate];yyn==0;yyn=yydefred[yystate])
      {
      //if (yydebug) debug("yyn:"+yyn+"  state:"+yystate+"  yychar:"+yychar);
      if (yychar < 0)      //we want a char?
        {
        yychar = yylex();  //get next token
        //if (yydebug) debug(" next yychar:"+yychar);
        //#### ERROR CHECK ####
        //if (yychar < 0)    //it it didn't work/error
        //  {
        //  yychar = 0;      //change it to default string (no -1!)
          //if (yydebug)
          //  yylexdebug(yystate,yychar);
        //  }
        }//yychar<0
      yyn = yysindex[yystate];  //get amount to shift by (shift index)
      if ((yyn != 0) && (yyn += yychar) >= 0 &&
          yyn <= YYTABLESIZE && yycheck[yyn] == yychar)
        {
        //if (yydebug)
          //debug("state "+yystate+", shifting to state "+yytable[yyn]);
        //#### NEXT STATE ####
        yystate = yytable[yyn];//we are in a new state
        state_push(yystate);   //save it
        val_push(yylval);      //push our lval as the input for next rule
        yychar = -1;           //since we have 'eaten' a token, say we need another
        if (yyerrflag > 0)     //have we recovered an error?
           --yyerrflag;        //give ourselves credit
        doaction=false;        //but don't process yet
        break;   //quit the yyn=0 loop
        }

    yyn = yyrindex[yystate];  //reduce
    if ((yyn !=0 ) && (yyn += yychar) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yychar)
      {   //we reduced!
      //if (yydebug) debug("reduce");
      yyn = yytable[yyn];
      doaction=true; //get ready to execute
      break;         //drop down to actions
      }
    else //ERROR RECOVERY
      {
      if (yyerrflag==0)
        {
        yyerror("syntax error");
        yynerrs++;
        }
      if (yyerrflag < 3) //low error count?
        {
        yyerrflag = 3;
        while (true)   //do until break
          {
          if (stateptr<0 || valptr<0)   //check for under & overflow here
            {
            return 1;
            }
          yyn = yysindex[state_peek(0)];
          if ((yyn != 0) && (yyn += YYERRCODE) >= 0 &&
                    yyn <= YYTABLESIZE && yycheck[yyn] == YYERRCODE)
            {
            //if (yydebug)
              //debug("state "+state_peek(0)+", error recovery shifting to state "+yytable[yyn]+" ");
            yystate = yytable[yyn];
            state_push(yystate);
            val_push(yylval);
            doaction=false;
            break;
            }
          else
            {
            //if (yydebug)
              //debug("error recovery discarding state "+state_peek(0)+" ");
            if (stateptr<0 || valptr<0)   //check for under & overflow here
              {
              return 1;
              }
            state_pop();
            val_pop();
            }
          }
        }
      else            //discard this token
        {
        if (yychar == 0)
          return 1; //yyabort
        //if (yydebug)
          //{
          //yys = null;
          //if (yychar <= YYMAXTOKEN) yys = yyname[yychar];
          //if (yys == null) yys = "illegal-symbol";
          //debug("state "+yystate+", error recovery discards token "+yychar+" ("+yys+")");
          //}
        yychar = -1;  //read another
        }
      }//end error recovery
    }//yyn=0 loop
    if (!doaction)   //any reason not to proceed?
      continue;      //skip action
    yym = yylen[yyn];          //get count of terminals on rhs
    //if (yydebug)
      //debug("state "+yystate+", reducing "+yym+" by rule "+yyn+" ("+yyrule[yyn]+")");
    if (yym>0)                 //if count of rhs not 'nil'
      yyval = val_peek(yym-1); //get current semantic value
    if (reduceListener == null || reduceListener.onReduce(yyrule[yyn])) // if intercepted!
      switch(yyn)
      {
//########## USER-SUPPLIED ACTIONS ##########
case 1:
//#line 52 "Parser.y"
{
						tree = new Tree.TopLevel(val_peek(0).clist, val_peek(0).loc);
					}
break;
case 2:
//#line 58 "Parser.y"
{
						yyval.clist.add(val_peek(0).cdef);
					}
break;
case 3:
//#line 62 "Parser.y"
{
                		yyval.clist = new ArrayList<Tree.ClassDef>();
                		yyval.clist.add(val_peek(0).cdef);
                	}
break;
case 5:
//#line 72 "Parser.y"
{
						yyval.vdef = new Tree.VarDef(val_peek(0).ident, val_peek(1).type, val_peek(0).loc);
					}
break;
case 6:
//#line 78 "Parser.y"
{
						yyval.type = new Tree.TypeIdent(Tree.INT, val_peek(0).loc);
					}
break;
case 7:
//#line 82 "Parser.y"
{
                		yyval.type = new Tree.TypeIdent(Tree.VOID, val_peek(0).loc);
                	}
break;
case 8:
//#line 86 "Parser.y"
{
                		yyval.type = new Tree.TypeIdent(Tree.BOOL, val_peek(0).loc);
                	}
break;
case 9:
//#line 90 "Parser.y"
{
                		yyval.type = new Tree.TypeIdent(Tree.STRING, val_peek(0).loc);
                	}
break;
case 10:
//#line 94 "Parser.y"
{
                		yyval.type = new Tree.TypeClass(val_peek(0).ident, val_peek(1).loc);
                	}
break;
case 11:
//#line 98 "Parser.y"
{
                		yyval.type = new Tree.TypeArray(val_peek(2).type, val_peek(2).loc);
                	}
break;
case 12:
//#line 104 "Parser.y"
{
						yyval.cdef = new Tree.ClassDef(val_peek(4).ident, val_peek(3).ident, val_peek(1).flist, val_peek(5).loc);
					}
break;
case 13:
//#line 110 "Parser.y"
{
						yyval.ident = val_peek(0).ident;
					}
break;
case 14:
//#line 114 "Parser.y"
{
                		yyval = new SemValue();
                	}
break;
case 15:
//#line 120 "Parser.y"
{
						yyval.flist.add(val_peek(0).vdef);
					}
break;
case 16:
//#line 124 "Parser.y"
{
						yyval.flist.add(val_peek(0).fdef);
					}
break;
case 17:
//#line 128 "Parser.y"
{
                		yyval = new SemValue();
                		yyval.flist = new ArrayList<Tree>();
                	}
break;
case 19:
//#line 136 "Parser.y"
{
                		yyval = new SemValue();
                		yyval.vlist = new ArrayList<Tree.VarDef>(); 
                	}
break;
case 20:
//#line 143 "Parser.y"
{
						yyval.vlist.add(val_peek(0).vdef);
					}
break;
case 21:
//#line 147 "Parser.y"
{
                		yyval.vlist = new ArrayList<Tree.VarDef>();
						yyval.vlist.add(val_peek(0).vdef);
                	}
break;
case 22:
//#line 154 "Parser.y"
{
						yyval.fdef = new MethodDef(true, val_peek(4).ident, val_peek(5).type, val_peek(2).vlist, (Block) val_peek(0).stmt, val_peek(4).loc);
					}
break;
case 23:
//#line 158 "Parser.y"
{
						yyval.fdef = new MethodDef(false, val_peek(4).ident, val_peek(5).type, val_peek(2).vlist, (Block) val_peek(0).stmt, val_peek(4).loc);
					}
break;
case 24:
//#line 164 "Parser.y"
{
						yyval.stmt = new Block(val_peek(1).slist, val_peek(2).loc);
					}
break;
case 25:
//#line 170 "Parser.y"
{
						yyval.slist.add(val_peek(0).stmt);
					}
break;
case 26:
//#line 174 "Parser.y"
{
                		yyval = new SemValue();
                		yyval.slist = new ArrayList<Tree>();
                	}
break;
case 27:
//#line 181 "Parser.y"
{
						yyval.stmt = val_peek(0).vdef;
					}
break;
case 28:
//#line 186 "Parser.y"
{
                		if (yyval.stmt == null) {
                			yyval.stmt = new Tree.Skip(val_peek(0).loc);
                		}
                	}
break;
case 36:
//#line 201 "Parser.y"
{
						yyval.stmt = new Tree.Assign(val_peek(2).lvalue, val_peek(0).expr, val_peek(1).loc);
					}
break;
case 37:
//#line 205 "Parser.y"
{
                		yyval.stmt = new Tree.Exec(val_peek(0).expr, val_peek(0).loc);
                	}
break;
case 38:
//#line 209 "Parser.y"
{
                		yyval = new SemValue();
                	}
break;
case 40:
//#line 216 "Parser.y"
{
                		yyval = new SemValue();
                	}
break;
case 41:
//#line 222 "Parser.y"
{
						yyval.lvalue = new Tree.Ident(val_peek(1).expr, val_peek(0).ident, val_peek(0).loc);
						if (val_peek(1).loc == null) {
							yyval.loc = val_peek(0).loc;
						}
					}
break;
case 42:
//#line 229 "Parser.y"
{
                		yyval.lvalue = new Tree.Indexed(val_peek(3).expr, val_peek(1).expr, val_peek(3).loc);
                	}
break;
case 43:
//#line 235 "Parser.y"
{
						yyval.expr = new Tree.CallExpr(val_peek(4).expr, val_peek(3).ident, val_peek(1).elist, val_peek(3).loc);
						if (val_peek(4).loc == null) {
							yyval.loc = val_peek(3).loc;
						}
					}
break;
case 44:
//#line 244 "Parser.y"
{
						yyval.expr = val_peek(0).lvalue;
					}
break;
case 47:
//#line 250 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.PLUS, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 48:
//#line 254 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.MINUS, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 49:
//#line 258 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.MUL, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 50:
//#line 262 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.DIV, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 51:
//#line 266 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.MOD, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 52:
//#line 270 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.EQ, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 53:
//#line 274 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.NE, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 54:
//#line 278 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.LT, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 55:
//#line 282 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.GT, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 56:
//#line 286 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.LE, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 57:
//#line 290 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.GE, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 58:
//#line 294 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.AND, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 59:
//#line 298 "Parser.y"
{
                		yyval.expr = new Tree.Binary(Tree.OR, val_peek(2).expr, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 60:
//#line 302 "Parser.y"
{
                		yyval = val_peek(1);
                	}
break;
case 61:
//#line 306 "Parser.y"
{
                		yyval.expr = new Tree.Unary(Tree.NEG, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 62:
//#line 310 "Parser.y"
{
                		yyval.expr = new Tree.Unary(Tree.NOT, val_peek(0).expr, val_peek(1).loc);
                	}
break;
case 63:
//#line 314 "Parser.y"
{
                		yyval.expr = new Tree.ReadIntExpr(val_peek(2).loc);
                	}
break;
case 64:
//#line 318 "Parser.y"
{
                		yyval.expr = new Tree.ReadLineExpr(val_peek(2).loc);
                	}
break;
case 65:
//#line 322 "Parser.y"
{
                		yyval.expr = new Tree.ThisExpr(val_peek(0).loc);
                	}
break;
case 66:
//#line 326 "Parser.y"
{
                		yyval.expr = new Tree.NewClass(val_peek(2).ident, val_peek(3).loc);
                	}
break;
case 67:
//#line 330 "Parser.y"
{
                		yyval.expr = new Tree.NewArray(val_peek(3).type, val_peek(1).expr, val_peek(4).loc);
                	}
break;
case 68:
//#line 334 "Parser.y"
{
                		yyval.expr = new Tree.TypeTest(val_peek(3).expr, val_peek(1).ident, val_peek(5).loc);
                	}
break;
case 69:
//#line 338 "Parser.y"
{
                		yyval.expr = new Tree.TypeCast(val_peek(2).ident, val_peek(0).expr, val_peek(0).loc);
                	}
break;
case 70:
//#line 344 "Parser.y"
{
						yyval.expr = new Tree.Literal(val_peek(0).typeTag, val_peek(0).literal, val_peek(0).loc);
					}
break;
case 71:
//#line 348 "Parser.y"
{
						yyval.expr = new Null(val_peek(0).loc);
					}
break;
case 73:
//#line 355 "Parser.y"
{
                		yyval = new SemValue();
                		yyval.elist = new ArrayList<Tree.Expr>();
                	}
break;
case 74:
//#line 362 "Parser.y"
{
						yyval.elist.add(val_peek(0).expr);
					}
break;
case 75:
//#line 366 "Parser.y"
{
                		yyval.elist = new ArrayList<Tree.Expr>();
						yyval.elist.add(val_peek(0).expr);
                	}
break;
case 76:
//#line 373 "Parser.y"
{
						yyval.stmt = new Tree.WhileLoop(val_peek(2).expr, val_peek(0).stmt, val_peek(4).loc);
					}
break;
case 77:
//#line 379 "Parser.y"
{
						yyval.stmt = new Tree.ForLoop(val_peek(6).stmt, val_peek(4).expr, val_peek(2).stmt, val_peek(0).stmt, val_peek(8).loc);
					}
break;
case 78:
//#line 385 "Parser.y"
{
						yyval.stmt = new Tree.Break(val_peek(0).loc);
					}
break;
case 79:
//#line 391 "Parser.y"
{
						yyval.stmt = new Tree.If(val_peek(3).expr, val_peek(1).stmt, val_peek(0).stmt, val_peek(5).loc);
					}
break;
case 80:
//#line 397 "Parser.y"
{
						yyval.stmt = val_peek(0).stmt;
					}
break;
case 81:
//#line 401 "Parser.y"
{
						yyval = new SemValue();
					}
break;
case 82:
//#line 407 "Parser.y"
{
						yyval.stmt = new Tree.Return(val_peek(0).expr, val_peek(1).loc);
					}
break;
case 83:
//#line 411 "Parser.y"
{
                		yyval.stmt = new Tree.Return(null, val_peek(0).loc);
                	}
break;
case 84:
//#line 417 "Parser.y"
{
						yyval.stmt = new Print(val_peek(1).elist, val_peek(3).loc);
					}
break;
//#line 1168 "Parser.java"
//########## END OF USER-SUPPLIED ACTIONS ##########
    }//switch
    //#### Now let's reduce... ####
    //if (yydebug) debug("reduce");
    state_drop(yym);             //we just reduced yylen states
    yystate = state_peek(0);     //get new state
    val_drop(yym);               //corresponding value drop
    yym = yylhs[yyn];            //select next TERMINAL(on lhs)
    if (yystate == 0 && yym == 0)//done? 'rest' state and at first TERMINAL
      {
      //if (yydebug) debug("After reduction, shifting from state 0 to state "+YYFINAL+"");
      yystate = YYFINAL;         //explicitly say we're done
      state_push(YYFINAL);       //and save it
      val_push(yyval);           //also save the semantic value of parsing
      if (yychar < 0)            //we want another character?
        {
        yychar = yylex();        //get next character
        //if (yychar<0) yychar=0;  //clean, if necessary
        //if (yydebug)
          //yylexdebug(yystate,yychar);
        }
      if (yychar == 0)          //Good exit (if lex returns 0 ;-)
         break;                 //quit the loop--all DONE
      }//if yystate
    else                        //else not done yet
      {                         //get next state and push, for next yydefred[]
      yyn = yygindex[yym];      //find out where to go
      if ((yyn != 0) && (yyn += yystate) >= 0 &&
            yyn <= YYTABLESIZE && yycheck[yyn] == yystate)
        yystate = yytable[yyn]; //get new state
      else
        yystate = yydgoto[yym]; //else go to new defred
      //if (yydebug) debug("after reduction, shifting from state "+state_peek(0)+" to state "+yystate+"");
      state_push(yystate);     //going again, so push state & val...
      val_push(yyval);         //for next action
      }
    }//main loop
  return 0;//yyaccept!!
}
//## end of method parse() ######################################



//## run() --- for Thread #######################################
//## The -Jnorun option was used ##
//## end of method run() ########################################



//## Constructors ###############################################
//## The -Jnoconstruct option was used ##
//###############################################################



}
//################### END OF CLASS ##############################
