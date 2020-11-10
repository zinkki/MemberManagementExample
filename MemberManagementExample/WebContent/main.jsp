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
 	String id = null;
	
	if(id == null) {
		id= "GUEST";
	}
%>

<h1>This is Main Page</h1>
<h2>Welcome, <%=id %></h2>
</body>
</html>