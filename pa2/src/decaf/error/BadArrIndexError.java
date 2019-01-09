package decaf.error;

import decaf.Location;

/**
 * example：array base type must be non-void type<br>
 * PA2
 */
public class BadArrIndexError extends DecafError {

	public BadArrIndexError(Location location) {
		super(location);
	}

	@Override
	protected String getErrMsg() {
		return "array index must be int type";
	}

}
