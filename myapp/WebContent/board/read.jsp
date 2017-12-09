<%@page import="java.util.Vector"%>
<%@page import="board.BCommentBean"%>
<%@page import="board.BoardBean"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="board.BoardMgr" />
<jsp:useBean id="cmgr" class="board.BCommentMgr" />
<%
		request.setCharacterEncoding("EUC-KR");
		int num = Integer.parseInt(request.getParameter("num"));
		String nowPage = request.getParameter("nowPage");
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		
		//��� �Է� �� ����
		if(request.getParameter("flag")!=null){
			if(request.getParameter("flag").equals("insert")){
				BCommentBean cbean = new BCommentBean();
				cbean.setNum(num);
				cbean.setName(request.getParameter("cName"));
				cbean.setComment(request.getParameter("comment"));
				cmgr.insertBComment(cbean);
			}else if(request.getParameter("flag").equals("del")){
				int cnum = 
					Integer.parseInt(request.getParameter("cnum"));
				cmgr.deleteBComment(cnum);
			}
			response.sendRedirect("read.jsp?"
			+request.getQueryString());
		}else{
			mgr.upCount(num);//��ȸ�� ����
		}
		
		BoardBean bean = mgr.getBoard(num);
		session.setAttribute("bean", bean);
		String subject = bean.getSubject();
		String name = bean.getName();
		String content = bean.getContent();
		String regdate = bean.getRegdate();
		String ip = bean.getIp();
		int count =  bean.getCount();
		String filename = bean.getFilename();
		int filesize = bean.getFilesize();
%>
<html>
<head>
	<title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function list() {
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	
	function down(filename) {
		document.downFrm.filename.value=filename;
		document.downFrm.submit();
	}
	
	function cInsert() {
		if(document.insFrm.comment.value==""){
			alert("����� �Է��ϼ���.");
			document.insFrm.comment.focus();
			return;
		}
		document.insFrm.submit();
	}
	
	function cDel(cnum) {
		document.cFrm.cnum.value=cnum;
		document.cFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC" >
<div align="center">
<br/><br/>
<table>
 <tr>
  <td bgcolor="#9CA2EE" width="550" align="center">���б�</td>
 </tr>
 <tr>
  <td>
   	<table> 
    <tr> 
		  <td align="center" bgcolor="#DDDDDD" width="100"> �� �� </td>
		  <td bgcolor="#FFFFE8" width="200"><%=name%></td>
		  <td align="center" bgcolor="#DDDDDD" width="100"> ��ϳ�¥ </td>
		  <td bgcolor="#FFFFE8" width="150"><%=regdate%></td>
 	</tr>
 	<tr> 
    	<td align="center" bgcolor="#DDDDDD"> �� ��</td>
    	<td bgcolor="#FFFFE8" colspan="3"><%=subject%></td>
   </tr>
   <tr> 
     <td align="center" bgcolor="#DDDDDD">÷������</td>
     <td bgcolor="#FFFFE8" colspan="3">
     <% if( filename !=null && !filename.equals("")) {%>
  		<a href="javascript:down('<%=filename%>')"><%=filename%></a>
  		 &nbsp;&nbsp;<font color="blue">(<%=filesize%>KBytes)</font>  
  		 <%} else{%> ��ϵ� ������ �����ϴ�.<%}%>
     </td>
   </tr>
   <tr> 
    <td colspan="4"><br/><pre><%=content%></pre><br/></td>
   </tr>
   <tr>
    <td colspan="4" align="right">
     IP <%=ip%>/��ȸ��  <%=count%>
    </td>
   </tr>
   </table>
  </td>
 </tr>
 <tr>
 	<td align="center">
 	<!-- ��� �Է��� Start -->
 	<form method="post" name="insFrm">
		<table>
			<tr  align="center">
				<td width="50">�� ��</td>
				<td align="left">
					<input name="cName" size="10" value="aaa">
				</td>
			</tr>
			<tr align="center">
				<td>�� ��</td>
				<td>
				<input name="comment" size="50"> 
				<input type="button" value="���" onclick="cInsert()"></td>
			</tr>
		</table>
	 <input type="hidden" name="flag" value="insert">	
	 <input type="hidden" name="num" value="<%=num%>">
    <input type="hidden" name="nowPage" value="<%=nowPage%>">
   <%if(!(keyWord==null||keyWord.equals(""))){ %>
    <input type="hidden" name="keyField" value="<%=keyField%>">
    <input type="hidden" name="keyWord" value="<%=keyWord%>">
	<%} %>
	</form>
 <!-- ��� �Է��� End -->
 <hr/>
 <% 
 		Vector<BCommentBean> cvlist = 
 		cmgr.getBComment(num);
 		if(!cvlist.isEmpty()){
 %>
 <table>
 <%
 		for(int i=0;i<cvlist.size();i++){
 			BCommentBean cbean = cvlist.get(i);
 			String cname = cbean.getName();
 			String comment = cbean.getComment();
 			String cregdate = cbean.getRegdate();
 			int cnum = cbean.getCnum();
 	%>
 	  	<tr >
  			<td colspan="3" width="600"><b><%=cname%></b></td>
  		</tr>
  		<tr>
  			<td>���:<%=comment%></td>
  			<td align="right"><%=cregdate%></td>
  			<td align="center" valign="middle">
  				<input type="button" value="����" onclick="cDel('<%=cnum%>')">
  			</td>
  		</tr>
  		<tr>
  			<td colspan="3"><br/></td>
  		</tr>
 	<%		
 		}//cvlist for
 %>	
 </table>
 <%			
 		}//cvlist if		
 %>
 <hr/>
 [ <a href="javascript:list()" >����Ʈ</a> | 
 <a href="update.jsp?num=<%=num%>&nowPage=<%=nowPage%>" >�� ��</a> |
 <a href="reply.jsp?nowPage=<%=nowPage%>" >�� ��</a> |
 <a href="delete.jsp?num=<%=num%>&nowPage=<%=nowPage%>">�� ��</a> ]<br/>
 	</td>
 </tr>
 </table>
 
 <form name="listFrm">
 	<input type="hidden" name="nowPage" value="<%=nowPage%>">
 	<%if(!(keyWord==null||keyWord.equals(""))){%>
 	<input type="hidden" name="keyField" value="<%=keyField%>">
 	<input type="hidden" name="keyWord" value="<%=keyWord%>">
 	<%} %>
 </form>
 
 <form name="downFrm"  action="download.jsp" method="post">
	<input type="hidden" name="filename">
</form>

<form name="cFrm" method="post">
	<input type="hidden" name="flag" value="del">
	<input type="hidden" name="cnum">
	<input type="hidden" name="num" value="<%=num%>">
	<input type="hidden" name="nowPage" value="<%=nowPage%>">
	<%if(!(keyWord==null||keyWord.equals(""))){ %>
	<input type="hidden" name="keyWord" value="<%=keyWord%>">
	<input type="hidden" name="keyField" value="<%=keyField%>">
	<%} %>
</form>
</div>
</body>
</html>






