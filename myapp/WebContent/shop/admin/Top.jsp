<%@ page pageEncoding="EUC-KR"%>
<%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("AdminLogin.jsp");
	}
%>
<table width="75%" align="center" bgcolor="#FFFF99">
  <tr bgcolor="#FFCC00"> 
    <th><a href="../Index.jsp">Ȩ</a></th>
    <th><a href="AdminLogout.jsp">�α׾ƿ�</a></th>
    <th><a href="RegisterMgr.jsp">ȸ������</a></th>
    <th><a href="ProductMgr.jsp">��ǰ����</a></th>
    <th><a href="OrderMgr.jsp">�ֹ�����</a></th>
  </tr>
</table> 