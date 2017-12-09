<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%@page import="fileupload.FileloadBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="mgr" class="fileupload.FileloadMgr"/>
<%

		Vector<FileloadBean> vlist = mgr.fileList();
%>
<script>	
	function allCheck() {
		f = document.frm;
		if(f.allCh.checked){
			 for (i = 0; i < f.fch.length; i++) {
				 f.fch[i].checked = true;
			 }
			 f.btn.disabled = false;
		}else{
 			for (i = 0; i < f.fch.length; i++) {
 				 f.fch[i].checked = false;
			 }
 			f.btn.disabled = true;
		}
	}
	
	function chk(){
		 f = document.frm;
		 for (i = 0; i < f.fch.length; i++) {
			if(f.fch[i].checked){
				f.btn.disabled = false;//버튼의 활성화
				return;
			}
		}
		 f.btn.disabled = true;
	}
</script>
<body>
<div align="center">
<h2>File List</h2>
<form name="frm" action="fdeleteProc.jsp">
<table border="1">
	<tr>
		<td><input type="checkbox" name="allCh" 
		onclick="allCheck()"></td>
		<td>번호</td>
		<td>파일명</td>
		<td>파일크기</td>
	</tr>
	<%
			for(int i=0;i<vlist.size();i++){
				FileloadBean bean = vlist.get(i);
				int num = bean.getNum();
				String file = bean.getFile();
		%>
		<tr>
			<td align="center">
			<input type="checkbox" name="fch" 
					value="<%=num%>" onclick="chk()"></td>
			<td align="center"><%=i+1%></td>
			<td>
					<a href="fdownload.jsp?file=<%=file%>">
					<%=file %></a>
				</td>
			<td><%=bean.getSize() %></td>
		</tr>
		<%}%>
	<tr>
		<td colspan="4">
			<input type="submit" value="DELETE" name="btn" disabled>
		</td>
	</tr>
</table>
</form>	<p/>
<a href="fupload.jsp">입력폼</a>
</div>
</body>







