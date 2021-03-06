/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.23
 * Generated at: 2017-11-27 03:15:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import board.BoardBean;
import java.util.Vector;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("board.BoardBean");
    _jspx_imports_classes.add("java.util.Vector");
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
      out.write("\r\n");
      board.BoardMgr mgr = null;
      mgr = (board.BoardMgr) _jspx_page_context.getAttribute("mgr", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (mgr == null){
        mgr = new board.BoardMgr();
        _jspx_page_context.setAttribute("mgr", mgr, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      board.BCommentMgr cmgr = null;
      cmgr = (board.BCommentMgr) _jspx_page_context.getAttribute("cmgr", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (cmgr == null){
        cmgr = new board.BCommentMgr();
        _jspx_page_context.setAttribute("cmgr", cmgr, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write('\r');
      out.write('\n');

	request.setCharacterEncoding("EUC-KR");

	int totalRecord = 0;//총게시물수
	int numPerPage = 10;//페이지당 레코드수
	int pagePerBlock = 15;//블럭당 페이지수
	int totalBlock = 0;
	int totalPage = 0;
	int nowPage = 1;//현재페이지
	int nowBlock = 1;//현재블럭

	int start = 0;//DB에서 select 시작번호
	int end = numPerPage;//시작번호로부터 읽어올 select수

	int listSize = 0;//현재 읽어온 게시물 번호
	
	String keyField = "", keyWord = "";
	//검색일때
	if(request.getParameter("keyWord") != null){
		keyField = request.getParameter("keyField");
		keyWord = request.getParameter("keyWord");
	}
	
	//검색후에 다시 검색 안된 페이지 요청 => reload=true
	if(request.getParameter("reload")!=null&&
			request.getParameter("reload").equals("true")){
		keyField = ""; keyWord="";
	}
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage * numPerPage) - numPerPage;
	totalRecord = mgr.getTotalCount(keyField, keyWord);

	totalPage = (int) Math.ceil((double) totalRecord / numPerPage);
	totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
	nowBlock = (int) Math.ceil((double) nowPage / pagePerBlock);

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>JSPBoard</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction pageing(page) {\r\n");
      out.write("\t\tdocument.readFrm.nowPage.value=page;\r\n");
      out.write("\t\tdocument.readFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction block(block) {\r\n");
      out.write("\t\tdocument.readFrm.nowPage.value=\r\n");
      out.write("\t\t\t");
      out.print(pagePerBlock);
      out.write("*(block-1)+1;\r\n");
      out.write("\t\tdocument.readFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction list(){\r\n");
      out.write("\t\tdocument.listFrm.action = \"list.jsp\";\r\n");
      out.write("\t\tdocument.listFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction read(num) {\r\n");
      out.write("\t\tdocument.readFrm.num.value=num;\r\n");
      out.write("\t\tdocument.readFrm.action = \"read.jsp\";\r\n");
      out.write("\t\tdocument.readFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction check() {\r\n");
      out.write("\t\tif(document.searchFrm.keyWord.value==\"\"){\r\n");
      out.write("\t\t\talert(\"검색어를 입력하세요.\");\r\n");
      out.write("\t\t\tdocument.searchFrm.keyWord.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tdocument.searchFrm.submit();\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#FFFFCC\" >\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<h2>JSPBoard</h2><br/>\r\n");
      out.write("<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"700\" align=\"left\">\r\n");
      out.write("\t\tTotal : ");
      out.print(totalRecord);
      out.write("Articles(\r\n");
      out.write("\t\t<font color=\"red\">");
      out.print(nowPage);
      out.write('/');
      out.print(totalPage);
      out.write("\r\n");
      out.write("\t\t</font>)\t\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td align=\"center\" colspan=\"2\">\r\n");
      out.write("\t");

			Vector<BoardBean> vlist =
			mgr.getBoardList(keyField, keyWord, start, end);
			listSize = vlist.size();
			if(vlist.isEmpty()){
				out.println("등록된 게시물이 없습니다.");
			}else{
		
      out.write("\r\n");
      out.write("\t\t<table cellspacing=0>\r\n");
      out.write("\t\t\t<tr align=\"center\" bgcolor=\"#D0D0D0\">\r\n");
      out.write("\t\t\t\t<td width=\"100\">번 호</td>\r\n");
      out.write("\t\t\t\t<td width=\"250\">제 목</td>\r\n");
      out.write("\t\t\t\t<td width=\"100\">이 름</td>\r\n");
      out.write("\t\t\t\t<td width=\"150\">날 짜</td>\r\n");
      out.write("\t\t\t\t<td width=\"100\">조회수</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");

					for(int i=0;i<numPerPage;i++){
						if(i==listSize) break;
						BoardBean bean = vlist.get(i);
						int num = bean.getNum();
						String subject = bean.getSubject();
						String name = bean.getName();
						String regdate = bean.getRegdate();
						int depth = bean.getDepth();
						int count =  bean.getCount();
						String filename = bean.getFilename();
						int bcount = cmgr.getBCommentCount(num);
			
      out.write("\r\n");
      out.write("\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t");
      out.print(totalRecord-((nowPage-1)*numPerPage)-i);
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td align=\"left\">\r\n");
      out.write("\t\t\t\t");

						if(depth>0){
							for(int j=0;j<depth;j++){
								out.println("&nbsp;&nbsp;");
							}
						}
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"javascript:read('");
      out.print(num);
      out.write("')\">\r\n");
      out.write("\t\t\t\t\t");
      out.print(subject);
      out.write("\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t");
if(filename!=null&&!filename.equals("")){
      out.write("\r\n");
      out.write("\t\t\t\t<img alt=\"첨부파일\" src=\"img/icon_file.gif\" align=\"middle\">\t\r\n");
      out.write("\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t");
if(bcount>0){
      out.write("\r\n");
      out.write("\t\t\t\t\t<font color=\"red\">(");
      out.print(bcount);
      out.write(")</font>\r\n");
      out.write("\t\t\t\t");
} 
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(name);
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(regdate );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(count );
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
 			
					}//vlist for
			
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t");
		
			}//vlist isEmpty if
	
      out.write("\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td colspan=\"2\"><br/><br/></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td>\r\n");
      out.write("\t");
 
				int pageStart = (nowBlock-1)*pagePerBlock+1;
				int pageEnd = ((pageStart+pagePerBlock)<totalPage)?
						                (pageStart+pagePerBlock):totalPage+1;            
		
      out.write("\r\n");
      out.write("\t\t");
if(totalPage!=0){
      out.write("\r\n");
      out.write("\t\t<!-- 이전 블럭 Start -->\r\n");
      out.write("\t\t");
if(nowBlock>1){ 
      out.write("\r\n");
      out.write("\t\t<a href=\"javascript:block('");
      out.print(nowBlock-1);
      out.write("')\">\r\n");
      out.write("\t\tprev...</a>&nbsp;\r\n");
      out.write("\t\t");
}
      out.write("\r\n");
      out.write("\t\t<!-- 이전 블럭 End -->\r\n");
      out.write("\t\t<!-- 페이징 Start -->\r\n");
      out.write("\t\t");

				for(;pageStart<pageEnd;pageStart++){
		
      out.write("\r\n");
      out.write("\t\t\t<a href=\"javascript:pageing('");
      out.print(pageStart);
      out.write("')\">\r\n");
      out.write("\t\t\t");
if(nowPage==pageStart){
      out.write("<font color=\"blue\">");
}
      out.write("\r\n");
      out.write("\t\t\t[");
      out.print(pageStart);
      out.write("]\r\n");
      out.write("\t\t\t");
if(nowPage==pageStart){
      out.write("</font>");
}
      out.write("\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t");
}//for
      out.write("&nbsp;\r\n");
      out.write("\t\t<!-- 페이징 End -->\r\n");
      out.write("\t\t<!-- 다음 블럭 Start -->\r\n");
      out.write("\t\t");
if(totalBlock>nowBlock){ 
      out.write("\r\n");
      out.write("\t\t<a href=\"javascript:block('");
      out.print(nowBlock+1);
      out.write("')\">\r\n");
      out.write("\t\t...next</a>\r\n");
      out.write("\t\t");
}
      out.write("\r\n");
      out.write("\t\t<!-- 다음 블럭 End -->\r\n");
      out.write("\t\t");
}
      out.write("\r\n");
      out.write("\t</td>\r\n");
      out.write("\t<td align=\"right\">\r\n");
      out.write("\t\t<a href=\"post.jsp\">[글쓰기]</a>\r\n");
      out.write("\t\t<a href=\"javascript:list()\">[리스트]</a>\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<hr width=\"750\"/>\r\n");
      out.write("\r\n");
      out.write("<form  name=\"searchFrm\"  method=\"post\" action=\"list.jsp\">\r\n");
      out.write("\t<table border=\"0\" width=\"527\" align=center cellpadding=\"4\" cellspacing=\"0\">\r\n");
      out.write(" \t\t<tr>\r\n");
      out.write("  \t\t\t<td align=\"center\" valign=\"bottom\">\r\n");
      out.write("   \t\t\t\t<select name=\"keyField\" size=\"1\" >\r\n");
      out.write("    \t\t\t\t<option value=\"name\"> 이 름</option>\r\n");
      out.write("    \t\t\t\t<option value=\"subject\"> 제 목</option>\r\n");
      out.write("    \t\t\t\t<option value=\"content\"> 내 용</option>\r\n");
      out.write("   \t\t\t\t</select>\r\n");
      out.write("   \t\t\t\t<input size=\"16\" name=\"keyWord\">\r\n");
      out.write("   \t\t\t\t<input type=\"button\"  value=\"찾기\" onClick=\"javascript:check()\">\r\n");
      out.write("   \t\t\t\t<input type=\"hidden\" name=\"nowPage\" value=\"1\">\r\n");
      out.write("  \t\t\t</td>\r\n");
      out.write(" \t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<form name=\"readFrm\" method=\"get\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"num\"> \r\n");
      out.write("\t<input type=\"hidden\" name=\"nowPage\" value=\"");
      out.print(nowPage);
      out.write("\"> \r\n");
      out.write("\t<input type=\"hidden\" name=\"keyField\" value=\"");
      out.print(keyField);
      out.write("\"> \r\n");
      out.write("\t<input type=\"hidden\" name=\"keyWord\" value=\"");
      out.print(keyWord);
      out.write("\">\r\n");
      out.write("</form>\r\n");
      out.write("<form name=\"listFrm\" method=\"post\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"reload\" value=\"true\"> \r\n");
      out.write("\t<input type=\"hidden\" name=\"nowPage\" value=\"1\">\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
