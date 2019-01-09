package decaf.error;

import decaf.Location;

/**
 * example：incompatible argument 3: int[] given, int/bool/string expected<br>
 * 3表示发生错误的是第三个参数<br>
 * PA2
 */
public class BadScopySrcError extends DecafError {

	private String count;

	private String dsttype;
	private String srctype;

	public BadScopySrcError(Location location, String dsttype, String srctype) {
		super(location);
		this.count = count;
		this.dsttype = dsttype;
		this.srctype = srctype;
	}

	@Override
	protected String getErrMsg() {
		return "incompatible dst type: " + dsttype+ " and src type: " + srctype;
	}

}
