<%@page import="guestbook.CommentBean"%>
<%@page import="guestbook.JoinBean"%>
<%@page import="guestbook.GuestBookBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
<%@include file="getSession.jsp" %>
<jsp:useBean id="mgr" class="guestbook.GuestBookMgr"/>
<title>GuestBook</title>
<script type="text/javascript">

	function updateFn(num) {
		url = "updateGuestBook.jsp?num=" + num;
		window.open(url, "updateGuestBook", "width=520,height=300");
	}

	function commentPost(frm) {
		if (frm.comment.value == "") {
			alert("������ �Է��� �ּ���.");
			frm.comment.focus();
			return;
		}
		frm.submit();
	}
</script>
</head>
<link href="css/style.css" rel="stylesheet" type="text/css">
<body bgcolor="#996600">
	<div align="center">
	<%@include file="postGuestBook.jsp" %>
	<%
			Vector<GuestBookBean> vlist = 
			mgr.listGuestBook(login.getId(), login.getGrade());
	%>
		<table width="520" cellspacing="0" cellpadding="3">
			<tr bgcolor="#F5F5F5">
				<td><font size="2"><b><%=login.getName()%></b>�� ȯ���մϴ�.
				</font></td>
				<td align="right">
					<a href="logout.jsp">�α׾ƿ�</a>
				</td>
			</tr>
		</table>
		<!-- GuestBook List Start -->
		<%
			   if(vlist.isEmpty()){
		%>		
		<table  width="520" cellspacing="0" cellpadding="7">
			<tr>
				<td>��ϵ� ���� �����ϴ�.</td>
			</tr>
		</table>
		<%}else{
				for(int i=0;i<vlist.size();i++){
					GuestBookBean bean = vlist.get(i);
					//���� �۾� ����� ����
					JoinBean regMem = mgr.getJoin(bean.getId());
		%>
		<table  width="520" border="1" bordercolor="#000000" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<table bgcolor="#F5F5F5">
								<tr>
									<td width="225">NO: <%=vlist.size() - i%></td>
									<td width="225"><img src="img/face.bmp" border="0" alt="����">
										<a href="mailto:<%=regMem.getEmail()%>"><%=regMem.getName()%></a></td>
										<td width="150" align="center">
										<%
											if (regMem.getHp() == null || regMem.getHp().equals("")) {
											 	out.println("Ȩ�������� ���׿�."); 
											}else {
										%> 
										<a href="<%="http://" + regMem.getHp()%>"> 
											<img src="img/hp.bmp" border="0" alt="Ȩ������">
										</a> 
										<%}%>
									</td>
								</tr>
								<tr>
									<td colspan="3"><%=bean.getContents()%></td>
								</tr>
								<tr>
									<td width="150">From:<%=bean.getIp()%></td>
									<td width="200"><%=bean.getRegdate()%>&nbsp; <%=bean.getRegtime()%></td>
									<td width="150">
										<%
											boolean chk = login.getId().equals(regMem.getId());
												if (chk || login.getGrade().trim().equals("1")) {						
 													if (chk) {
 									     %>
 											<a href="javascript:updateFn('<%=bean.getNum()%>')">[����]</a>
										<%}%>
											 <a href="deleteGuestBook.jsp?num=<%=bean.getNum()%>">[����]</a>
										<%
											}
 												if (bean.getSecret().trim().equals("1")){
 												out.println("��б�");
 											}
 										%>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<!-- Comment List Start -->
				<%
						Vector<CommentBean> cvlist = 
						mgr.listComment(bean.getNum());
						if(!cvlist.isEmpty()){
					%>
							<table width="500" bgcolor="#F5F5F5">
						<% 
							for(int j=0;j<cvlist.size();j++){
								CommentBean cbean = cvlist.get(j);
						%>
						<tr>
							<td>
							<table width="500">
							<tr>
								<td>
									<b><%=cbean.getCid() %></b>
								</td>
								<td align="right">
								<%if(cbean.getCid().equals(login.getId())){%>
									<a href="commentProc.jsp?flag=delete&cnum=<%=cbean.getCnum()%>">[����]</a>
								<%}%>
								</td>
							</tr>
							<tr>
								<td colspan="2"><%=cbean.getComment() %></td>
							</tr>
							<tr>
								<td>
									From : <%=cbean.getCip()%>
								</td>
								<td align="right">
									<%=cbean.getCregDate()%>
								</td>
							</tr>
						</table>
						<hr/>
							</td>
						</tr>
						<%} %>
					</table>
					<%		
						}//comment if
				%>
				<!-- Comment List End -->

				<!-- Comment Form Start -->
				<form name="cFrm" action="commentProc.jsp">
				<table>
				<tr>
					<td><textarea name="comment" cols="72" rows="2"
							maxlength="1000"></textarea></td>
					<td><input type="button" value="���" onclick="javascript:commentPost(this.form)">
					<input type="hidden" name="flag" value="insert">
					<input type="hidden" name="num" value="<%=bean.getNum()%>">
					<input type="hidden" name="cid" value="<%=login.getId()%>">
					<input type="hidden" name="cip" value="<%=request.getRemoteAddr()%>">
					</td>
				</tr>
				</table>
				</form>
				<!-- Comment Form End -->
		<%			
				}//for
		    }//if
		 %>
		<!-- GuestBook List End -->
	</div>
</body>
<% //"getSession.jsp�� else�� } �ݴ´�. %>
</head>
</html>





