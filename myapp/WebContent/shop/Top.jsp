<%@ page pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("idKey");
	
	String log="";
	if(id == null) log ="<a href=Login.jsp>로그인</a>";
	else log = "<a href=Logout.jsp>로그아웃</a>";

	String reg="";
	if(id == null) reg ="<a href=Register.jsp>회원가입</a>";
	else reg = "<a href=ResiterUpdate.jsp>회원수정</a>";
%>

<table width="75%" align="center" bgcolor="#FFFF99">
  <tr bgcolor="#FFCC00"> 
    <th><%=log%></th>
    <th><%=reg%></th>
    <th><a href="ProductList.jsp">상품목록</a></th>
    <th><a href="CartList.jsp">장바구니</a></th>
    <th><a href="OrderList.jsp">구매목록</a></th>
  </tr>
</table>
