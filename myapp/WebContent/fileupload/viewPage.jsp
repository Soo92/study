<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		final String saveFolder = 
		"C:/Jsp/myapp/WebContent/fileupload/filestorage/";
		final String encType = "EUC-KR";
		final int maxSize = 5*1024*1024;//5MB
		try{
			MultipartRequest multi = 
				new MultipartRequest(request, saveFolder, 
						maxSize, encType, new DefaultFileRenamePolicy());
			String fileName = multi.getFilesystemName("uploadFile");
			String original = multi.getOriginalFileName("uploadFile");
			String type = multi.getContentType("uploadFile");
			File f = multi.getFile("uploadFile");
			int len = 0;
			if(f!=null){
				len = (int)f.length();
			}
			String user = multi.getParameter("user");
			String title = multi.getParameter("title");
%>
저장된 파일 : <%=fileName %><br/>
실제 파일 : <%=original %><br/>
파일타입 : <%=type %><br/>
파일크기 : <%=len %>byte<br/>
user : <%=user %><br/>
title : <%=title %><br/>
<%			
		}catch(Exception e){
			out.print(e.getMessage());
		}
%>








