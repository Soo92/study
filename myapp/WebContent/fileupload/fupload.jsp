<%@ page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
<script>
	function check() {
		if(document.forms[0].file.value==0){
			alert("파일을 선택하세요.");
			return;
		}
		document.forms[0].submit();
	}
</script>
<body>
<div align="center">
<h2>File Upload</h2>
<form method="post" enctype="multipart/form-data" action="fuploadProc.jsp">
<table border="1">
 <tr>
 	<td>파일선택</td>
 	<td><input type="file" name="file"></td>
 </tr>
 <tr>
 	<td colspan="2">
 		<input type="button" value="파일업로드" onclick="check()">
 	</td>
 </tr>
</table>
</form><p/>
<a href="flist.jsp">파일리스트</a>
</div>
</body>