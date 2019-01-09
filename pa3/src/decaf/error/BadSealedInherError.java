package decaf.error;

import decaf.Location;

/**
 * example：illegal class inheritance (should be a cyclic)<br>
 * PA2
 */
public class BadSealedInherError extends DecafError {

	public BadSealedInherError(Location location) {
		super(location);
	}

	@Override
	protected String getErrMsg() {
		return "illegal class inheritance from sealed class";
	}

}
