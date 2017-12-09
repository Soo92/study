<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>
<form method="post" enctype="multipart/form-data"
action="viewPage.jsp">
user : <input name="user" value="홍길동"><br/>
title : <input name="title" value="파일업로드"><br/>
file : <input name="uploadFile" type="file"><br/>
<input type="submit" value="UPLOAD">
</form>