<%@ page contentType="text/html;charset=EUC-KR" %>
<%@ page import ="java.util.*,shop.*" %> 
<% 
request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="regBean" class="shop.RegisterBean"/>
<jsp:setProperty name="regBean" property="*" />
<html>
<head>
<title>ȸ������ Ȯ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body bgcolor="#996600">
<br>

	<%@ include file="Top.jsp" %>
	
	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
		<form name="regForm" method="post" action="ResiterInsert.jsp">
		<tr align="center" bgcolor="#996600"> 
		<td colspan="3"><font color="#FFFFFF"><b> 
		<jsp:getProperty name="regBean" property="name" />
		ȸ������ �ۼ��Ͻ� �����Դϴ�. Ȯ���� �ּ���</b></font> </td>
		</tr> 
		<tr> 
		<td>���̵�</td>
		<td><input name="id" 
		value="<jsp:getProperty name="regBean" property="id" />"></td>
		</tr>
		<tr> 
		<td>�н�����</td>
		<td><input name="pass" 
		value="<jsp:getProperty name="regBean" property="pass" />"></td>
		</tr>
		<tr> 
		<td>�̸�</td>
		<td><input name="name" 
		value="<jsp:getProperty name="regBean" property="name" />"></td>
		</tr>
		<tr> 
		<td>�̸���</td>
		<td><input name="email"  size="30" 
		value="<jsp:getProperty name="regBean" property="email" />"></td>
		</tr>
		<tr> 
		<td>��ȭ��ȣ</td>
		<td><input name="phone" 
		value="<jsp:getProperty name="regBean" property="phone" />"></td>
		</tr>
		<tr> 
		<td>�����ȣ</td>
		<td><input name="zipcode" 
		value="<jsp:getProperty name="regBean" property="zipcode" />"></td>
		</tr>
		<tr> 
		<td>�ּ�</td>
		<td><input name="address" size="50" 
		value="<jsp:getProperty name="regBean" property="address" />"></td>
		</tr>
		<tr> 
		<td>����</td>
		<td><input name="job" 
		value="<jsp:getProperty name="regBean" property="job" />"></td>
		</tr>
		<tr> 
            <td>���</td>
            <td>
            <% 
            if(regBean.getHobby()!=null){
				String list[] = { "������", "ä��", "�¶���", "��ȭ����", "���" };
            	String hobbys[] = regBean.getHobby();

            	for(int i =0;i<hobbys.length;i++){
   	              out.print("<input type=checkbox name=hobby"
   	            		  +  " checked value="+ hobbys[i] + ">" + hobbys[i]);
   	             }
            }else{
            	out.println("���õ� ��̰� �����ϴ�.");
            }
            %>
            </td>
          </tr>
		<tr> 
		<td colspan="2" align="center"><input type="submit" value="Ȯ�οϷ�"> 
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
		<input type="button" value="�ٽþ���" onClick="history.back()"> 
		</td>
		</tr>
		</form>
		</table>

	</td>
	</tr>
	</table>
	
	<%@ include file="Bottom.jsp" %>
		
</body>
</html>
