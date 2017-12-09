




<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="pBean" class="ch06.ScopeBean" scope="page"/>
<jsp:useBean id="rBean" class="ch06.ScopeBean" scope="request"/>
<jsp:useBean id="sBean" class="ch06.ScopeBean" scope="session"/>






<jsp:setProperty property="num" name="pBean" 
value="<%=pBean.getNum()+10%>"/>
<jsp:setProperty property="num" name="rBean"
value="<%=rBean.getNum()+10%>"/>
<jsp:setProperty property="num" name="sBean"
value="<%=sBean.getNum()+10%>"/>

<h2>Scope1</h2>
pBean : <%=pBean.getNum()%>
<hr color="red">
rBean : <%=rBean.getNum()%>
<hr color="blue">
sBean : <%=sBean.getNum()%>
<hr color="green">











