<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>
<form method="post" enctype="multipart/form-data"
action="viewPage.jsp">
user : <input name="user" value="ȫ�浿"><br/>
title : <input name="title" value="���Ͼ��ε�"><br/>
file : <input name="uploadFile" type="file"><br/>
<input type="submit" value="UPLOAD">
</form>