<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		//DB���� �����ϰ�...
		boolean flag = true;
		//boolean flag = false;
		if(flag){
			session.setAttribute("idKey", id);
			session.setMaxInactiveInterval(60*3);//3��
		}else{
%>
			<script>
				alert("�α��� �����Ͽ����ϴ�.");
				location.href = "session1.html";
			</script>
<%}%>
<h1>Session Example1</h1>
<FORM METHOD=POST ACTION="session1_1.jsp">
    1.���� �����ϴ� ������?<br>
	<INPUT TYPE="radio" NAME="season" VALUE="��">��
	<INPUT TYPE="radio" NAME="season" VALUE="����">����
	<INPUT TYPE="radio" NAME="season" VALUE="����">����
	<INPUT TYPE="radio" NAME="season" VALUE="�ܿ�">�ܿ�<p>

	2.���� �����ϴ� ������?<br>
	<INPUT TYPE="radio" NAME="fruit" VALUE="watermelon">����
	<INPUT TYPE="radio" NAME="fruit" VALUE="melon">���
	<INPUT TYPE="radio" NAME="fruit" VALUE="apple">���
	<INPUT TYPE="radio" NAME="fruit" VALUE="orange">������<p>
	<INPUT TYPE="submit" VALUE="�������">
</FORM>













