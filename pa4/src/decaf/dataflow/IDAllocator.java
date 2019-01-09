package decaf.dataflow;

/**
 * Allocate unique Ids for TAC.
 */
public class IDAllocator {
    private static int cnt = 0;

    public static int apply() {
        ++cnt;
        return cnt;
    }
}
