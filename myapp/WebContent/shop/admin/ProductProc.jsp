<!-- ProductProc.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="proMgr" class="shop.ProductMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String flag = request.getParameter("flag");
		String msg = "������ �߻��Ͽ����ϴ�.";
		boolean result = false;
		if(flag.equals("insert")){
			result = proMgr.insertProduct(request);
			if(result) msg = "����Ͽ����ϴ�.";
		}else if(flag.equals("update")){
			result = proMgr.updateProduct(request);
			if(result) msg = "�����Ͽ����ϴ�.";
		}else if(flag.equals("delete")){
			int no = Integer.parseInt(request.getParameter("no"));
			result = proMgr.deleteProduct(no);
			if(result) msg = "�����Ͽ����ϴ�.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "ProductMgr.jsp";
</script>







