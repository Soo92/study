<%@ page contentType="text/html;charset=EUC-KR" %>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />
<%
	String admin_id = request.getParameter("admin_id");
	String admin_pass = request.getParameter("admin_pass");
	boolean adminCheck = regMgr.adminCheck(admin_id, admin_pass);
    if(adminCheck) {
	    session.setAttribute("adminKey", admin_id);
%>
   <script>
   location.href="Index.jsp";
   </script>
<%}else{%>
   <script>
   alert("입력한 정보가 정확하지 않습니다.");
   location.href="AdminLogin.jsp";
   </script>
<%}%>