<!-- script.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%!
        //선언문에서 선언된 변수는 필드
		String declaration = "선언문";
%>
<%!
		//일반메소드
		public String decMethod(){
			return declaration;
		}
%>
<%
		String scriptlet = "스크립트릿";
		String comment = "주석";
		
		out.println("내부(내장)객체를 이용한 출력 : " + declaration+"<p/>");
%>
선언문으 출력1 : <%=declaration %><p/>
선언문의 출력2 : <%=decMethod() %><p/>
스크립트릿의 출력 : <%=scriptlet %><p/>

<!-- JSP 주석부분 -->
<!-- JSP 주석1 : <%=comment%> --><p/>
<%-- JSP주석2 : <%=comment%> --%>
<%
		/*부분주석 및 여러줄 주석*/
		//한줄 주석
%>





















