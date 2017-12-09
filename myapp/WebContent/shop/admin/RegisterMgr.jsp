<%@ page contentType="text/html;charset=EUC-KR" %>
<%@ page import="java.util.*, shop.*"%>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />
<html>
<head>
<title>Simple Shopping Mall Admin</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">

	<%@ include file="Top.jsp" %> 
	<%Vector<RegisterBean> vlist = regMgr.getRegisterList();%>

	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<tr align="center" bgcolor="#996600"> 
			<td><font color="#FFFFFF">회원이름</font></td>
			<td><font color="#FFFFFF">회원아이디</font></td>
			<td><font color="#FFFFFF">패스워드</font></td>
			<td><font color="#FFFFFF">전화번호</font></td> 
			<td><font color="#FFFFFF">이메일</font></td>
			<td><font color="#FFFFFF">수정</font></td>
			<td><font color="#FFFFFF">메일보내기</font></td>
		</tr>
		<%
		for(int i=0; i<vlist.size(); i++){
			RegisterBean regBean = vlist.get(i);
		%>
		<tr align="center"> 
			<td><%=regBean.getName()%></td>
			<td><%=regBean.getId()%></td>
			<td><%=regBean.getPass()%></td>
			<td><%=regBean.getPhone()%></td>
			<td><%=regBean.getEmail()%></td>
			<td><a href="javascript:update('<%=regBean.getId()%>')">수정하기</a></td>
			<td><font color="#FFFFFF">
			<a href="SendAccount.jsp?id=<%=regBean.getId()%>">메일보내기</a>
			</font></td>
		</tr>
		<%}%>
		</table>
	</td>
	</tr>
	</table>
	<%@ include file="Bottom.jsp" %>
	<form name="update" method="post" action="RegisterUpdate.jsp">
	<input type=hidden name="id">
	</form>
</body>
</html>
