<%@ page contentType="text/html;charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />
<jsp:useBean id="regBean" class="shop.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%boolean flag = regMgr.updateRegister(regBean);
if(flag){%>
	<script>
		alert("���������� �����Ͽ����ϴ�");
		location.href="Index.jsp";
	</script>
<%}else{%>
	<script>
		alert("�������� ������ �߻��Ͽ����ϴ�.");
		history.back();
	</script>
<%}%>


