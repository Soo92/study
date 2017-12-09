<%@ page contentType="text/html;charset=EUC-KR" %>
<%@ page import ="java.util.*,shop.*" %> 
<% 
request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="regBean" class="shop.RegisterBean"/>
<jsp:setProperty name="regBean" property="*" />
<html>
<head>
<title>회원가입 확인</title>
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
		회원님이 작성하신 내용입니다. 확인해 주세요</b></font> </td>
		</tr> 
		<tr> 
		<td>아이디</td>
		<td><input name="id" 
		value="<jsp:getProperty name="regBean" property="id" />"></td>
		</tr>
		<tr> 
		<td>패스워드</td>
		<td><input name="pass" 
		value="<jsp:getProperty name="regBean" property="pass" />"></td>
		</tr>
		<tr> 
		<td>이름</td>
		<td><input name="name" 
		value="<jsp:getProperty name="regBean" property="name" />"></td>
		</tr>
		<tr> 
		<td>이메일</td>
		<td><input name="email"  size="30" 
		value="<jsp:getProperty name="regBean" property="email" />"></td>
		</tr>
		<tr> 
		<td>전화번호</td>
		<td><input name="phone" 
		value="<jsp:getProperty name="regBean" property="phone" />"></td>
		</tr>
		<tr> 
		<td>우편번호</td>
		<td><input name="zipcode" 
		value="<jsp:getProperty name="regBean" property="zipcode" />"></td>
		</tr>
		<tr> 
		<td>주소</td>
		<td><input name="address" size="50" 
		value="<jsp:getProperty name="regBean" property="address" />"></td>
		</tr>
		<tr> 
		<td>직업</td>
		<td><input name="job" 
		value="<jsp:getProperty name="regBean" property="job" />"></td>
		</tr>
		<tr> 
            <td>취미</td>
            <td>
            <% 
            if(regBean.getHobby()!=null){
				String list[] = { "웹서핑", "채팅", "온라인", "영화감상", "등산" };
            	String hobbys[] = regBean.getHobby();

            	for(int i =0;i<hobbys.length;i++){
   	              out.print("<input type=checkbox name=hobby"
   	            		  +  " checked value="+ hobbys[i] + ">" + hobbys[i]);
   	             }
            }else{
            	out.println("선택된 취미가 없습니다.");
            }
            %>
            </td>
          </tr>
		<tr> 
		<td colspan="2" align="center"><input type="submit" value="확인완료"> 
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
		<input type="button" value="다시쓰기" onClick="history.back()"> 
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
