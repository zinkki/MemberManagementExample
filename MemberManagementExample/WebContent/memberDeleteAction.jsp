<%@ page import="member.MemberDAO" %>
<%@ page import="member.MemberBean" %>
<%@ page import="java.io.PrintWriter" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<jsp:useBean id="mbean" class="member.MemberBean">
	 <jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
	
 	<%	String id = request.getParameter("id");
		MemberDAO mdao = new MemberDAO();
		mdao.deleteMember(id);
		response.sendRedirect("memberList.jsp");
	%> 
	

</body>
</html>