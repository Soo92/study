<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="mgr" class="fileupload.FileloadMgr"/>
<%
		String snum[] = request.getParameterValues("fch");
		//문자열 배열 => 숫자 배열 형변환  ex) 1 3 5
		int num[] = new int[snum.length];
		for(int i=0;i<num.length;i++){
			num[i] = Integer.parseInt(snum[i]);
		}
		mgr.fileDelete(num);
		response.sendRedirect("flist.jsp");
%>