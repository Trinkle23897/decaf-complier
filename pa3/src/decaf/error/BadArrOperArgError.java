package decaf.error;

import decaf.Location;

/**
 * example：incompatible argument 3: int[] given, int/bool/string expected<br>
 * 3表示发生错误的是第三个参数<br>
 * PA2
 */
public class BadArrOperArgError extends DecafError {

	public BadArrOperArgError(Location location) {
		super(location);
	}

	@Override
	protected String getErrMsg() {
		return "Array Operation on non-array type" ;
	}

}
