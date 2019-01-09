package decaf.error;

import decaf.Location;

/**
 * example: unterminated multi comment
 * PA1
 * 
 * @author paul
 */

public class UntermCommentError extends DecafError {
	public UntermCommentError(Location location) {
		super(location);

	}

	@Override
	protected String getErrMsg() {
		return "unterminated multi comment";
	}
}
