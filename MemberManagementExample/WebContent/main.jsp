<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<body>



<%
	String logout = request.getParameter("logout");

	if(logout != null) {
		session.setAttribute("id", null);
		session.setMaxInactiveInterval(0);
	}
	
 	String id = (String)session.getAttribute("id");
	
	if(id == null) {
		id= "GUEST";
	}
%>

<h1 align="center">This is Main Page</h1>


<h4 align="center">
<%
	if(id.equals("GUEST")){
%>
		WELCOME, YOU ARE <%=id %> . <br><br><a href="loginPage.jsp">go to login</a> &nbsp;&nbsp; <a href="joinPage.jsp">go to join</a>
<%} else if(id.equals("admin")){ %>

		WELCOME, YOU ARE <%=id %> . <br><br><a href="memberList.jsp">go to MemberList</a>
		
<%}else { %>
		
		WELCOME, YOU ARE <%=id %> . <br><br><a href="logoutAction.jsp">logout</a>

<%} %>
</h4>


</body>
</html>