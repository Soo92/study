<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="bean" class="board.BoardBean" scope="session"/>
<html>
<head> 
<% 
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  String subject = bean.getSubject();
	  String name = bean.getName(); 
	  String content = bean.getContent(); 
%>
<title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function check() {
	   if (document.updateFrm.pass.value == "") {
		 alert("������ ���� �н����带 �Է��ϼ���.");
		 document.updateFrm.pass.focus();
		 return false;
		 }
	   document.updateFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
<div align="center">
<br/><br/>
<table>
  <tr>
   <td bgcolor="#FF9018"  width="450" align="center">�����ϱ�</td>
  </tr>
</table>
<form name="updateFrm" method="post" action="updateProc.jsp" >
<table>
 <tr>
  <td align="center">
   <table>
    <tr>
     <td width="100">�� ��</td>
     <td>
	  <input name="name" value="<%=name%>" size="30" maxlength="20">
	 </td>
	</tr>
	<tr>
     <td>�� ��</td>
     <td>
	  <input name="subject" size="50" value="<%=subject%>" maxlength="50">
	 </td>
    <tr>
     <td>�� ��</td>
     <td>
	  <textarea name="content" rows="10" cols="50"><%=content%></textarea>
	 </td>
    </tr>
	<tr>
     <td>��� ��ȣ</td> 
     <td><input type="password" name="pass" size="15" maxlength="15">
      �����ÿ��� ��й�ȣ�� �ʿ��մϴ�.</td>
    </tr>
	<tr>
     <td colspan="2" height="5"><hr/></td>
    </tr>
	<tr>
     <td colspan="2">
	  <input type="button" value="�����Ϸ�" onClick="check()">
      <input type="reset" value="�ٽü���"> 
      <input type="button" value="�ڷ�" onClick="history.go(-1)">
	 </td>
    </tr> 
   </table>
  </td>
 </tr>
</table>
 <input type="hidden" name="nowPage" value="<%=nowPage %>">
 <input type='hidden' name="num" value="<%=num%>">
</form> 
</div>
</body>
</html>