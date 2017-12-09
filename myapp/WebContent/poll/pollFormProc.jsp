<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="poll.PollMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		int num= 0;
		if(request.getParameter("num")!=null){
			num = Integer.parseInt(request.getParameter("num"));
		}
		String itemnum[] = 
				request.getParameterValues("itemnum");
		boolean result = mgr.updatePoll(num, itemnum);
		String msg = "투표에 실패하였습니다.";
		if(result) 
			msg = "투표를 하였습니다.";
%>
<script>
	alert("<%=msg%>");
	location.href = "pollList.jsp?num=<%=num%>";
</script>












