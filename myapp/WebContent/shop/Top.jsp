<%@ page pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("idKey");
	
	String log="";
	if(id == null) log ="<a href=Login.jsp>�α���</a>";
	else log = "<a href=Logout.jsp>�α׾ƿ�</a>";

	String reg="";
	if(id == null) reg ="<a href=Register.jsp>ȸ������</a>";
	else reg = "<a href=ResiterUpdate.jsp>ȸ������</a>";
%>

<table width="75%" align="center" bgcolor="#FFFF99">
  <tr bgcolor="#FFCC00"> 
    <th><%=log%></th>
    <th><%=reg%></th>
    <th><a href="ProductList.jsp">��ǰ���</a></th>
    <th><a href="CartList.jsp">��ٱ���</a></th>
    <th><a href="OrderList.jsp">���Ÿ��</a></th>
  </tr>
</table>
