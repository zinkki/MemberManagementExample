<%@page import="java.util.Vector"%>
<%@ page import="member.MemberBean" %>
<%@ page import="member.MemberDAO" %>
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
	
	<%
		MemberDAO mdao = new MemberDAO();
		mdao.memberList();
		response.sendRedirect("memberList.jsp");
	%>
	

</body>
</html>