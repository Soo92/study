<%@page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		int totalRecord = //총게시물수
		Integer.parseInt(request.getParameter("totalRecord"));
		int numPerPage = 10;//페이지당 레코드수
		int pagePerBlock = 15;//블럭당 페이지수
		int totalBlock = 0;
		int totalPage = 0;
		int nowPage = 1;//현재페이지
		int nowBlock = 1;//현재블럭
		
		int start = 0;//DB에서 select 시작번호
		int end = numPerPage;//시작번호로부터 읽어올 select수
		
		int listSize = 0;//현재 읽어온 게시물 번호
		
		if(request.getParameter("nowPage")!=null){
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		start = (nowPage*numPerPage)-numPerPage;
		
		totalPage = (int)Math.ceil((double)totalRecord/numPerPage);
		totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
		nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);
%>
<html>
<head>
	<title>페이징 & 블럭 처리 테스트</title>
</head>
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
</script>
<body bgcolor="#FFFFCC">
<div align="center">
<br/>
<table>
	<tr align="center">
		<td>
		Total : <%=totalRecord%>Articles(
		<font color="red"><%=nowPage%>/<%=totalPage%>
		</font>)	
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>게시물 번호 : &nbsp;</td>
		<%
				listSize = totalRecord - start;
				for(int i=0;i<numPerPage;i++){
					if(i==listSize) break;
		%>
		<td align="center">
		<%=totalRecord-((nowPage-1)*numPerPage)-i%>
		</td>
		<%}//for%>
	</tr>
</table>
<!-- 페이징 및 블럭 Start -->
<table>
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
	</tr>
</table>

<!-- 페이징 및 블럭 End -->
<hr width="45%"/>
<form name="readFrm">
	<input type="hidden" name="totalRecord" value="<%=totalRecord%>">
	<input type="hidden" name="nowPage" value="<%=nowPage%>">
</form>
<b>
totalRecord : <%=totalRecord%>&nbsp;
numPerPage : <%=numPerPage%>&nbsp;
pagePerBlock : <%=pagePerBlock%>&nbsp;
totalPage : <%=totalPage%>&nbsp;<br/>
totalBlock : <%=totalBlock%>&nbsp;
nowPage : <%=nowPage%>&nbsp;
nowBlock : <%=nowBlock%>&nbsp;
start : <%=start%>&nbsp;
</b>
<p/>
<input type="button" value="TotalRecord 입력폼"
 onClick="javascript:location.href='pageView.html'">
</div>
</html>








