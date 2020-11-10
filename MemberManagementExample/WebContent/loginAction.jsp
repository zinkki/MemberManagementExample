<%@ page import="java.io.PrintWriter" %>
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
	<jsp:setProperty name="mbean" property="id"/>
	<jsp:setProperty name="mbean" property="pass1"/>	
</jsp:useBean>

<%
	String id = null;
	if(session.getAttribute("id") != null){
		id = (String)session.getAttribute("id");
	}
	if(id != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('Already Logged in')");
		script.println("location.href='main.jsp'");
		script.println("</script>");
	}

	MemberDAO mdao = new MemberDAO();
	int result = mdao.login(mbean.getId(), mbean.getPass1());
	if(result==1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('LOGIN SUCCESS!')");
		script.println("location.href='main.jsp'");
		script.println("</script>");
	}else if(result==0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('PASSWORD IS NOT CORRECTED!!')");
		script.println("history.go(-1)");
		script.println("</script>");
	}else if(result==-1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('NON-EXISTENT ID')");
		script.println("history.go(-1)");
		script.println("</script>");
	}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('FAILED DB CONNECTED')");
		script.println("history.go(-1)");
		script.println("</script>");
	}
%>
	
</body>
</html>