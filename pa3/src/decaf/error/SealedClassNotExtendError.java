package decaf.error;

import decaf.Location;

/**
 * example：declaration of 'abcde' here conflicts with earlier declaration at (3,2)<br>
 * PA2
 */
public class SealedClassNotExtendError extends DecafError {


	private String name;

	public SealedClassNotExtendError(Location location, String name) {
		super(location);
		this.name = name;
	}

	@Override
	protected String getErrMsg() {
		return "sealed class '" + name + " cannot be extended. ";
	}

}
