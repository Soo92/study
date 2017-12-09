<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="bean" class="ch06.SimpleBean"/>
<jsp:setProperty property="message" name="bean"/>
message:<jsp:getProperty property="message" name="bean"/><br/>
<%=bean.getMessage()%>