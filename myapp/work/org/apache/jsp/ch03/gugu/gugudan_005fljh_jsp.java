/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-10-30 00:31:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ch03.gugu;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;

public final class gugudan_005fljh_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

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
      response.setContentType("text/html; charset=UTF-8");
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

	request.setCharacterEncoding("UTF-8");

      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<style type=\"text/css\">\r\n");

Random ran = new Random();
String url[] = {"http://cfile28.uf.tistory.com/image/247EB244539652CE05C010",
		"http://www.missdica.com/files/attach/images/569309/353/200/001/dbd0c866c04f9e9583c828aa8c73cedd.jpg",
		"http://cfile8.uf.tistory.com/image/23107744539652D23AB121",
		"http://file.osen.co.kr/article/2014/06/28/201406281957771852_53aea026639c6.jpg",
		"http://www.missdica.com/files/attach/images/569309/353/200/001/02268a68ac2b87f025ae43717e80ee42.jpg",
		"http://www.missdica.com/files/attach/images/569309/353/200/001/1f20810cf35c2bae9812bc5092154bf1.jpg",
		"http://pds.joins.com/news/component/osen_new/201407/01/201406282002774963_53aea1051bfbc.jpg",
		"http://pds.joins.com/news/component/osen_new/201407/01/201406281839770664_53ae8e75ea303.jpg",
		"http://files.photom.com/attach/images/456930/548/817/817548123024.jpg",
		"http://tmtj1.tvcps.com/timg//l/20140802/l_2014080201000093600003543.jpg",
		"http://i.ytimg.com/vi/EYbUqQvye5U/maxresdefault.jpg",
		"http://i.imgur.com/2TKkXvX.jpg",
		"http://snsnews.org/news/upload/1419388778131.jpg",
		"http://itsue.kr/data/cheditor4/1401/f0fdb4c3f58e3e3f8e77162d893d3055_4UzwIzusYvWj8FykF.jpg",
		"http://i.ytimg.com/vi/LMtxUk8xYfU/maxresdefault.jpg",
		"https://i.ytimg.com/vi/siaDBQXvG4M/maxresdefault.jpg",
		"http://www.etobang.com/data/mw.cheditor/150208/f3a9af45638c222d76629de84defbb82_uujEMdJsMRQYQjZdCQl3F2Wg.jpg",
		"http://cfile30.uf.tistory.com/original/1310CA4C4F44AFA12E3966",
		"http://i2.imgtong.com/1411/181960a36457258d97612de451fe4e90_LAWtpppE.jpg"};
int a = ran.nextInt(url.length);

      out.write("\r\n");
      out.write("body {\r\n");
      out.write("\tbackground-image:\r\n");
      out.write("\t\turl(\"");
      out.print(url[a] );
      out.write("\");\r\n");
      out.write("\tbackground-color: #cccccc;\r\n");
      out.write("\tbackground-size: cover;\r\n");
      out.write("\tbackground-repeat: no-repeat;\r\n");
      out.write("}\r\n");
      out.write("#hd {\r\n");
      out.write("\tbackground-color: #B2EBF4;\r\n");
      out.write("}\r\n");
      out.write("table {\r\n");
      out.write("\tcolor: black;\r\n");
      out.write("\tfont-size: 20;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("\ttext-align: center\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<table border=\"1\" align=\"center\" width=\"100%\" height=\"100%\">\r\n");
      out.write("\t\t");

			
			for(int i=0; i<10; i++){
				if(i==0)
					out.write("<tr id=\"hd\">");
				else
					out.write("<tr>");
				for(int j=1; j<10; j++){
					if(i==0){
						out.write("<th>");
						out.println(j+"단");
						out.write("</th>");
					} else {
						out.write("<td>");
						out.println("&nbsp"+j+" x "+i+" = "+i*j+"&nbsp");
						out.write("</td>");
					}
					
				}
				out.write("</tr>");
				
			}
		
      out.write("\r\n");
      out.write("\t</table>\r\n");
      out.write("</body>");
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
