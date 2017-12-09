<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="board.BoardMgr"/>
<jsp:useBean id="bean" class="board.BoardBean" scope="session"/>
<jsp:useBean id="upBean" class="board.BoardBean"/>
<jsp:setProperty property="*" name="upBean"/>
<% 
		String nowPage = request.getParameter("nowPage");
		String dbPass = bean.getPass();
		String upPass = upBean.getPass();
		if(dbPass.equals(upPass)){
			mgr.updateBoard(upBean);
			String url = "read.jsp?nowPage="+nowPage+
					"&num="+upBean.getNum();
			response.sendRedirect(url);
		}else{
%>
		<script>
			alert("입력하신 비밀번호가 아닙니다.");
			history.back();
		</script>
<%}%>