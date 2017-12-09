<%@page import="board.BoardBean"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="board.BoardMgr" />
<jsp:useBean id="cmgr" class="board.BCommentMgr" />
<%
	request.setCharacterEncoding("EUC-KR");

	int totalRecord = 0;//총게시물수
	int numPerPage = 10;//페이지당 레코드수
	int pagePerBlock = 15;//블럭당 페이지수
	int totalBlock = 0;
	int totalPage = 0;
	int nowPage = 1;//현재페이지
	int nowBlock = 1;//현재블럭

	int start = 0;//DB에서 select 시작번호
	int end = numPerPage;//시작번호로부터 읽어올 select수

	int listSize = 0;//현재 읽어온 게시물 번호
	
	String keyField = "", keyWord = "";
	//검색일때
	if(request.getParameter("keyWord") != null){
		keyField = request.getParameter("keyField");
		keyWord = request.getParameter("keyWord");
	}
	
	//검색후에 다시 검색 안된 페이지 요청 => reload=true
	if(request.getParameter("reload")!=null&&
			request.getParameter("reload").equals("true")){
		keyField = ""; keyWord="";
	}
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage * numPerPage) - numPerPage;
	totalRecord = mgr.getTotalCount(keyField, keyWord);

	totalPage = (int) Math.ceil((double) totalRecord / numPerPage);
	totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);
	nowBlock = (int) Math.ceil((double) nowPage / pagePerBlock);
%>
<html>
<head>
	<title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function pageing(page) {
		document.readFrm.nowPage.value=page;
		document.readFrm.submit();
	}
	
	function block(block) {
		document.readFrm.nowPage.value=
			<%=pagePerBlock%>*(block-1)+1;
		document.readFrm.submit();
	}
	function list(){
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	
	function read(num) {
		document.readFrm.num.value=num;
		document.readFrm.action = "read.jsp";
		document.readFrm.submit();
	}
	
	function check() {
		if(document.searchFrm.keyWord.value==""){
			alert("검색어를 입력하세요.");
			document.searchFrm.keyWord.focus();
			return;
		}
		document.searchFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC" >
<div align="center">
<h2>JSPBoard</h2><br/>
<table>
	<tr>
		<td width="700" align="left">
		Total : <%=totalRecord%>Articles(
		<font color="red"><%=nowPage%>/<%=totalPage%>
		</font>)	
		</td>
	</tr>
</table>

<table>
<tr>
	<td align="center" colspan="2">
	<%
			Vector<BoardBean> vlist =
			mgr.getBoardList(keyField, keyWord, start, end);
			listSize = vlist.size();
			if(vlist.isEmpty()){
				out.println("등록된 게시물이 없습니다.");
			}else{
		%>
		<table cellspacing=0>
			<tr align="center" bgcolor="#D0D0D0">
				<td width="100">번 호</td>
				<td width="250">제 목</td>
				<td width="100">이 름</td>
				<td width="150">날 짜</td>
				<td width="100">조회수</td>
			</tr>
			<%
					for(int i=0;i<numPerPage;i++){
						if(i==listSize) break;
						BoardBean bean = vlist.get(i);
						int num = bean.getNum();
						String subject = bean.getSubject();
						String name = bean.getName();
						String regdate = bean.getRegdate();
						int depth = bean.getDepth();
						int count =  bean.getCount();
						String filename = bean.getFilename();
						int bcount = cmgr.getBCommentCount(num);
			%>
			<tr align="center">
				<td>
				<%=totalRecord-((nowPage-1)*numPerPage)-i%>
				</td>
				<td align="left">
				<%
						if(depth>0){
							for(int j=0;j<depth;j++){
								out.println("&nbsp;&nbsp;");
							}
						}
				%>
				<a href="javascript:read('<%=num%>')">
					<%=subject%>
				</a>
				<%if(filename!=null&&!filename.equals("")){%>
				<img alt="첨부파일" src="img/icon_file.gif" align="middle">	
				<%}%>
				<%if(bcount>0){%>
					<font color="red">(<%=bcount%>)</font>
				<%} %>
				</td>
				<td><%=name%></td>
				<td><%=regdate %></td>
				<td><%=count %></td>
			</tr>
			<% 			
					}//vlist for
			%>
		</table>
		<%		
			}//vlist isEmpty if
	%>
	</td>
</tr>
<tr>
	<td colspan="2"><br/><br/></td>
</tr>
<tr>
	<td>
	<% 
				int pageStart = (nowBlock-1)*pagePerBlock+1;
				int pageEnd = ((pageStart+pagePerBlock)<totalPage)?
						                (pageStart+pagePerBlock):totalPage+1;            
		%>
		<%if(totalPage!=0){%>
		<!-- 이전 블럭 Start -->
		<%if(nowBlock>1){ %>
		<a href="javascript:block('<%=nowBlock-1%>')">
		prev...</a>&nbsp;
		<%}%>
		<!-- 이전 블럭 End -->
		<!-- 페이징 Start -->
		<%
				for(;pageStart<pageEnd;pageStart++){
		%>
			<a href="javascript:pageing('<%=pageStart%>')">
			<%if(nowPage==pageStart){%><font color="blue"><%}%>
			[<%=pageStart%>]
			<%if(nowPage==pageStart){%></font><%}%>
			</a>
		<%}//for%>&nbsp;
		<!-- 페이징 End -->
		<!-- 다음 블럭 Start -->
		<%if(totalBlock>nowBlock){ %>
		<a href="javascript:block('<%=nowBlock+1%>')">
		...next</a>
		<%}%>
		<!-- 다음 블럭 End -->
		<%}%>
	</td>
	<td align="right">
		<a href="post.jsp">[글쓰기]</a>
		<a href="javascript:list()">[리스트]</a>
	</td>
</tr>
</table>

<hr width="750"/>

<form  name="searchFrm"  method="post" action="list.jsp">
	<table border="0" width="527" align=center cellpadding="4" cellspacing="0">
 		<tr>
  			<td align="center" valign="bottom">
   				<select name="keyField" size="1" >
    				<option value="name"> 이 름</option>
    				<option value="subject"> 제 목</option>
    				<option value="content"> 내 용</option>
   				</select>
   				<input size="16" name="keyWord">
   				<input type="button"  value="찾기" onClick="javascript:check()">
   				<input type="hidden" name="nowPage" value="1">
  			</td>
 		</tr>
	</table>
</form>

<form name="readFrm" method="get">
	<input type="hidden" name="num"> 
	<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
	<input type="hidden" name="keyField" value="<%=keyField%>"> 
	<input type="hidden" name="keyWord" value="<%=keyWord%>">
</form>
<form name="listFrm" method="post">
	<input type="hidden" name="reload" value="true"> 
	<input type="hidden" name="nowPage" value="1">
</form>
</div>
</body>
</html>


