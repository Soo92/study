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
			alert("내용을 입력해 주세요.");
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
				<td><font size="2"><b><%=login.getName()%></b>님 환영합니다.
				</font></td>
				<td align="right">
					<a href="logout.jsp">로그아웃</a>
				</td>
			</tr>
		</table>
		<!-- GuestBook List Start -->
		<%
			   if(vlist.isEmpty()){
		%>		
		<table  width="520" cellspacing="0" cellpadding="7">
			<tr>
				<td>등록된 글이 없습니다.</td>
			</tr>
		</table>
		<%}else{
				for(int i=0;i<vlist.size();i++){
					GuestBookBean bean = vlist.get(i);
					//방명록 글쓴 사람의 정보
					JoinBean regMem = mgr.getJoin(bean.getId());
		%>
		<table  width="520" border="1" bordercolor="#000000" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<table bgcolor="#F5F5F5">
								<tr>
									<td width="225">NO: <%=vlist.size() - i%></td>
									<td width="225"><img src="img/face.bmp" border="0" alt="성명">
										<a href="mailto:<%=regMem.getEmail()%>"><%=regMem.getName()%></a></td>
										<td width="150" align="center">
										<%
											if (regMem.getHp() == null || regMem.getHp().equals("")) {
											 	out.println("홈페이지가 없네요."); 
											}else {
										%> 
										<a href="<%="http://" + regMem.getHp()%>"> 
											<img src="img/hp.bmp" border="0" alt="홈페이지">
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
 											<a href="javascript:updateFn('<%=bean.getNum()%>')">[수정]</a>
										<%}%>
											 <a href="deleteGuestBook.jsp?num=<%=bean.getNum()%>">[삭제]</a>
										<%
											}
 												if (bean.getSecret().trim().equals("1")){
 												out.println("비밀글");
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
									<a href="commentProc.jsp?flag=delete&cnum=<%=cbean.getCnum()%>">[삭제]</a>
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
					<td><input type="button" value="댓글" onclick="javascript:commentPost(this.form)">
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
<% //"getSession.jsp에 else의 } 닫는다. %>
</head>
</html>





