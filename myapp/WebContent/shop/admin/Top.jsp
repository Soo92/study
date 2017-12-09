<%@ page pageEncoding="EUC-KR"%>
<%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("AdminLogin.jsp");
	}
%>
<table width="75%" align="center" bgcolor="#FFFF99">
  <tr bgcolor="#FFCC00"> 
    <th><a href="../Index.jsp">权</a></th>
    <th><a href="AdminLogout.jsp">肺弊酒眶</a></th>
    <th><a href="RegisterMgr.jsp">雀盔包府</a></th>
    <th><a href="ProductMgr.jsp">惑前包府</a></th>
    <th><a href="OrderMgr.jsp">林巩包府</a></th>
  </tr>
</table> 