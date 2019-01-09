package decaf.error;

import decaf.Location;

/**
 * example：array base type must be non-void type<br>
 * PA2
 */
public class BadArrCompArgTypeError extends DecafError {

	String arrtype;
	String vartype;
	public BadArrCompArgTypeError (Location location, String arrtype, String vartype) {
		super(location);
		this.arrtype = arrtype;
		this.vartype = vartype;
	}

	@Override
	protected String getErrMsg() {
		return "Array has Element type "+ arrtype + " but holder has type " + vartype;
	}

}
