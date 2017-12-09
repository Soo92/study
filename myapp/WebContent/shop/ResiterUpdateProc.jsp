<%@ page contentType="text/html;charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />
<jsp:useBean id="regBean" class="shop.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%boolean flag = regMgr.updateRegister(regBean);
if(flag){%>
	<script>
		alert("성공적으로 수정하였습니다");
		location.href="Index.jsp";
	</script>
<%}else{%>
	<script>
		alert("수정도중 에러가 발생하였습니다.");
		history.back();
	</script>
<%}%>


