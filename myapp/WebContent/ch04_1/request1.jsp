<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		String studentNum = request.getParameter("studentNum");
		String gender = request.getParameter("gender");
		String major = request.getParameter("major");
		String hobby[] = request.getParameterValues("hobby");
		
		if(gender.equals("man")){
			gender = "����";
		}else{
			gender = "����";
		}
%>
���� : <%=name%><br/>
�й� : <%=studentNum%><br/>
���� : <%=gender%><br/>
�а� : <%=major%><br/>
��� : <%
		for(int i=0;i<hobby.length;i++){
			out.println(hobby[i] +" ");
		}
%>






