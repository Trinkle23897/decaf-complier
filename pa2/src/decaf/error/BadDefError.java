package decaf.error;

import decaf.Location;

/**
 * example：array base type must be non-void type<br>
 * PA2
 */
public class BadDefError extends DecafError {

	String arrtype;
	String deftype;
	public BadDefError(Location location, String arrtype, String deftype) {
		super(location);
		this.arrtype = arrtype;
		this.deftype = deftype;
	}

	@Override
	protected String getErrMsg() {
		return "Array has Element type "+ arrtype + " but default has type " + deftype;
	}

}
