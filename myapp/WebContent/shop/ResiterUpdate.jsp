<%@ page contentType="text/html;charset=EUC-KR" %>
<%@ page import ="java.util.*,shop.*" %> 
<% request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />
<html>
<head>
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body bgcolor="#996600">
<br>

	<%@ include file="Top.jsp" %>
	<%RegisterBean regBean= regMgr.getRegister(id);%>
	<form name="regForm" method="post" action="ResiterUpdateProc.jsp">
	<table width="75%" align="center" bgcolor="#FFFF99">
		<tr> 
			<td align="center" bgcolor="#FFFFCC">
			<table width="95%" align="center" bgcolor="#FFFF99" border="1">
				<tr align="center" bgcolor="#996600"> 
					<td colspan="3"><font color="#FFFFFF"><b> 
					<%=regBean.getName()%>
					ȸ������ ������ �����մϴ�.</b></font> </td>
				</tr>
				<tr> 
					<td>���̵�</td>
					<td><%=regBean.getId()%></td>
				</tr>
				<tr> 
					<td>�н�����</td>
					<td><input name="pass" value="<%=regBean.getPass()%>"></td>
				</tr>
				<tr> 
					<td>�̸�</td>
					<td><input name="name" value="<%=regBean.getName()%>"></td>
				</tr>
				<tr> 
					<td>�̸���</td>
					<td><input name="email"  size="30" value="<%=regBean.getEmail()%>"></td>
				</tr>
				<tr> 
					<td>��ȭ��ȣ</td>
					<td><input name="phone" value="<%=regBean.getPhone()%>"></td>
				</tr>
				<tr> 
					<td>�����ȣ</td>
					<td><input name="zipcode" value="<%=regBean.getZipcode()%>">
						<input type="button" value="�����ȣã��" onClick="zipCheck()">
					</td>
				</tr>
				<tr> 
					<td>�ּ�</td>
					<td><input name="address" size="50" value="<%=regBean.getAddress()%>"></td>
				</tr>
				<tr> 
					<td>����</td>
					<td><select name=job>
							<option value="0" selected>�����ϼ���.</option>
							<option value="ȸ���">ȸ���</option>
							<option value="����������">����������</option>
							<option value="�����л�">�����л�</option>
							<option value="�Ϲ��ڿ���">�Ϲ��ڿ���</option>
							<option value="������">������</option>
							<option value="�Ƿ���">�Ƿ���</option>
							<option value="������">������</option>
							<option value="����,���,������">��</option>
							<option value="��,��,����,������">��/��/����/������</option>
							<option value="�ֺ�">�ֺ�</option>
							<option value="����">����</option>
							<option value="��Ÿ">��Ÿ</option>
							</select>
							<script>document.regForm.job.value="<%=regBean.getJob()%>"</script>
					</td>
				</tr>
				 <tr>  
		            <td>���</td>
		            <td>
		            <% 
						String list[] = { "������", "ä��", "�¶���", "��ȭ����", "���" };
		            	String hobbys[] = regBean.getHobby();
		            	for(int i=0;i<list.length;i++){
		            		out.println("<input type=checkbox name=hobby ");
		            		out.println("value="+list[i]+" " +(hobbys[i].equals("1")?"checked":"")+">"+list[i]);
		            	}
		            %>
		 			</td>
		        </tr>
				<tr> 
					<td colspan="2" align="center">
				   <input type="submit" value="�����Ϸ�"> 
				   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
				   <input type="reset" value="�ٽþ���"> 
				 </td>
			</tr>
		</table>
	</td>
	</tr>
	</table>
	<input type="hidden" name="id" value="<%=id%>">
	</form>
	<%@ include file="Bottom.jsp" %>
</body>
</html>
