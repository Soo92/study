/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-10-30 01:42:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ch03.gugu;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;

public final class gugudan_005fydh_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


public String randomColor(){
	Random r = new Random();
	String rgb = Integer.toHexString(r.nextInt(256));
	 rgb += Integer.toHexString(r.nextInt(256));
	 rgb += Integer.toHexString(r.nextInt(256));
	 return "#"+rgb;
}

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Random");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");

	request.setCharacterEncoding("euc-kr");

      out.write('\r');
      out.write('\n');
      out.write(" \r\n");
      out.write("<style>\r\n");
      out.write("\ttable {\r\n");
      out.write("\t\tborder-Color : blue;\r\n");
      out.write("\t\ttext-align : center;\r\n");
      out.write("\t\twidth : 75%;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\th2{\r\n");
      out.write("\t\twidth : 75%;\r\n");
      out.write("\t\ttext-align : center;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tth, td{\r\n");
      out.write("\t\t/*background-Color : blue;*/\r\n");
      out.write("\t\theight : 50px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\th3{\r\n");
      out.write("\t\ttext-decoration : underline;\r\n");
      out.write("\t}\r\n");
      out.write("\ttd:nth-child(even){background-color: #f2f2f2}\r\n");
      out.write("\tth:nth-child(even){background-color: #f2f2f2}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<h2><font color=\"");
      out.print(randomColor());
      out.write("\">1단</font>부터 <font color=\"");
      out.print(randomColor());
      out.write("\">9단</font></h2>\r\n");
      out.write("\r\n");
      out.write("<table border=\"2\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t");

		 for(int k=1; k<10; k++){
			 
      out.write("\r\n");
      out.write("\t\t\t <th>");
      out.print(k+"단");
      out.write("</th>\r\n");
      out.write("\t\t\t ");

		 }
		
      out.write("\r\n");
      out.write("\t</tr>\r\n");

  for(int i=1; i<10; i++) {

      out.write("\r\n");
      out.write("\t  <tr>\r\n");

	  for(int j=1; j<10; j++){	  

      out.write("\r\n");
      out.write("\t\t\t<td><font color=\"");
      out.print(randomColor());
      out.write('"');
      out.write('>');
      out.print(j + " * " + i);
      out.write("<h3>");
      out.print(i*j);
      out.write("</h3></font></td>\r\n");

	  }

      out.write("\r\n");
      out.write("\t  </tr>\r\n");

  }

      out.write("\r\n");
      out.write("</table>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
