package decaf.error;

import decaf.Location;

/**
 * example：incompatible argument 3: int given, bool expected<br>
 * 3表示发生错误的是第三个参数<br>
 * PA2
 */
public class BadForeachTypeError extends DecafError {


	private String given;

	private String expect;

	public BadForeachTypeError(Location location, String given,
			String expect) {
		super(location);
		this.given = given;
		this.expect = expect;
	}

	@Override
	protected String getErrMsg() {
		return given + " is incompatible with " + expect ;
	}

}
