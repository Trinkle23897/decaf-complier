package decaf.error;

import decaf.Location;

/**
 * example：array base type must be non-void type<br>
 * PA2
 */
public class BadArrTimesError extends DecafError {

	public BadArrTimesError(Location location) {
		super(location);
	}

	@Override
	protected String getErrMsg() {
		return "array repeats time type must be int type";
	}

}
