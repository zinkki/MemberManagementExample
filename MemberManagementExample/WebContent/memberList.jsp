<%@page import="java.util.Vector"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="member.MemberBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList</title>
</head>
<body>


<%
	MemberDAO mdao = new MemberDAO();
	Vector<MemberBean> vec = mdao.memberList();
%>

	<h1 align="center">Member List</h1>
	<table align="center" width="400" border="1">
	<tr height="40">
		<td width="50" align="center">NUM</td>
		<td width="200" align="center">Member ID</td>
		<td width="200" align="center">E-MAIL</td>
	</tr>

<%
	
for(int i=0; i<vec.size(); i++) {
	MemberBean mbean = vec.get(i);
%>	
	
	<tr height="40">
		<td width="50" align="center"><%=i+1 %></td>
		<td width="200" align="center"><a href="memberInfo.jsp"><%=mbean.getId() %></a></td>
		<td width="200" align="center"><%=mbean.getEmail() %></td>
	</tr>

<%
	}
%>	
	
	</table>	
</body>
</html>