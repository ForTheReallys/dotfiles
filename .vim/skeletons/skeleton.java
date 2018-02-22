/*
 * @author Alex Maese
 * @version `!v strftime("%b-%d-%Y")`
 */

${1}
`!p
def JavaSkeletonException():
	if snip.basename.endswith("Exception"):
		return "extends Exception"
	return ""
def JavaSkeletonBody():
	if snip.basename.endswith("Exception"):
		body = """	public snip.basename() {}

		public snip.basename(String message) {
			super(message);
		}

		public snip.basename(String message, Throwable cause) {
			super(message, cause);
		}

		public snip.basename(Throwable cause) {
			super(cause);
		}"""
		body = body.replace("snip.basename", snip.basename)
	else:
		body = ""
	return body
`
public class `!p snip.rv = snip.basename` `!p snip.rv = JavaSkeletonException()`{
	${0}`!p snip.rv = JavaSkeletonBody()`
}
