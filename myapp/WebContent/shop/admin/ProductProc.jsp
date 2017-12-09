<!-- ProductProc.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="proMgr" class="shop.ProductMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String flag = request.getParameter("flag");
		String msg = "오류가 발생하였습니다.";
		boolean result = false;
		if(flag.equals("insert")){
			result = proMgr.insertProduct(request);
			if(result) msg = "등록하였습니다.";
		}else if(flag.equals("update")){
			result = proMgr.updateProduct(request);
			if(result) msg = "수정하였습니다.";
		}else if(flag.equals("delete")){
			int no = Integer.parseInt(request.getParameter("no"));
			result = proMgr.deleteProduct(no);
			if(result) msg = "삭제하였습니다.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "ProductMgr.jsp";
</script>







