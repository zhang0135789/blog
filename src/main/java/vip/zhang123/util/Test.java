package vip.zhang123.util;

import org.apache.commons.lang.StringEscapeUtils;

public class Test {

	public static void main(String[] args) {
		String str="<p>fda</p>";
		System.out.println(StringEscapeUtils.escapeHtml(str));
	}
}
