<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="mgr" class="fileupload.FileloadMgr"/>
<%
		boolean result = mgr.fileUpload(request);
		if(result){
			response.sendRedirect("flist.jsp");
		}else{
			response.sendRedirect("fupload.jsp");
		}
%>