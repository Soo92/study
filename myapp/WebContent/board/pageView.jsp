<%@page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		int totalRecord = //�ѰԽù���
		Integer.parseInt(request.getParameter("totalRecord"));
		int numPerPage = 10;//�������� ���ڵ��
		int pagePerBlock = 15;//���� ��������
		int totalBlock = 0;
		int totalPage = 0;
		int nowPage = 1;//����������
		int nowBlock = 1;//�����
		
		int start = 0;//DB���� select ���۹�ȣ
		int end = numPerPage;//���۹�ȣ�κ��� �о�� select��
		
		int listSize = 0;//���� �о�� �Խù� ��ȣ
		
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
	<title>����¡ & �� ó�� �׽�Ʈ</title>
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
		<td>�Խù� ��ȣ : &nbsp;</td>
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
<!-- ����¡ �� �� Start -->
<table>
	<tr>
		<td>
		<% 
				int pageStart = (nowBlock-1)*pagePerBlock+1;
				int pageEnd = ((pageStart+pagePerBlock)<totalPage)?
						                (pageStart+pagePerBlock):totalPage+1;            
		%>
		<%if(totalPage!=0){%>
		<!-- ���� �� Start -->
		<%if(nowBlock>1){ %>
		<a href="javascript:block('<%=nowBlock-1%>')">
		prev...</a>&nbsp;
		<%}%>
		<!-- ���� �� End -->
		<!-- ����¡ Start -->
		<%
				for(;pageStart<pageEnd;pageStart++){
		%>
			<a href="javascript:pageing('<%=pageStart%>')">
			<%if(nowPage==pageStart){%><font color="blue"><%}%>
			[<%=pageStart%>]
			<%if(nowPage==pageStart){%></font><%}%>
			</a>
		<%}//for%>&nbsp;
		<!-- ����¡ End -->
		<!-- ���� �� Start -->
		<%if(totalBlock>nowBlock){ %>
		<a href="javascript:block('<%=nowBlock+1%>')">
		...next</a>
		<%}%>
		<!-- ���� �� End -->
		<%}%>
		</td>
	</tr>
</table>

<!-- ����¡ �� �� End -->
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
<input type="button" value="TotalRecord �Է���"
 onClick="javascript:location.href='pageView.html'">
</div>
</html>








