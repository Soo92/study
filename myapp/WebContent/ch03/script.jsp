<!-- script.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%!
        //���𹮿��� ����� ������ �ʵ�
		String declaration = "����";
%>
<%!
		//�Ϲݸ޼ҵ�
		public String decMethod(){
			return declaration;
		}
%>
<%
		String scriptlet = "��ũ��Ʈ��";
		String comment = "�ּ�";
		
		out.println("����(����)��ü�� �̿��� ��� : " + declaration+"<p/>");
%>
������ ���1 : <%=declaration %><p/>
������ ���2 : <%=decMethod() %><p/>
��ũ��Ʈ���� ��� : <%=scriptlet %><p/>

<!-- JSP �ּ��κ� -->
<!-- JSP �ּ�1 : <%=comment%> --><p/>
<%-- JSP�ּ�2 : <%=comment%> --%>
<%
		/*�κ��ּ� �� ������ �ּ�*/
		//���� �ּ�
%>





















