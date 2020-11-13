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
	Vector<MemberBean> vec = mdao.memberInfo(mbean.getId());
	
	for(int i=0; i<vec.size();i++) {
		MemberBean bean = vec.get(i);
%>


<h1 align="center">Member Information</h1>
<table align="center" border="1">
	<tr height="40">
		<td align="center" width="120">I D</td>
		<td align="center" width="200"><%=bean.getId() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">E-Mail</td>
		<td align="center" width="200"><%=bean.getEmail() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">T E L</td>
		<td align="center" width="200"><%=bean.getTel() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">J O B</td>
		<td align="center" width="200"><%=bean.getJob() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">HOBBY</td>
		<td align="center" width="200"><%=bean.getHobby() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">INFO</td>
		<td align="center" width="200"><%=bean.getInfo() %></td>
	</tr>
	<tr height="40">
		<td align="center" colspan="2">
		<input type="button" value="DELETE" onclick="#"> &nbsp;&nbsp;
		<input type="button" value="MODIFY" onclick="#"> &nbsp;&nbsp;
		<input type="button" value="LIST" onclick="location.href='memberList.jsp'"></td>
	</tr>
	
<%
	}
%>
</table>

</body>
</html>