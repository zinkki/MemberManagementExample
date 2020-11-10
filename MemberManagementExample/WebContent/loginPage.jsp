<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
<h2 align="center">LOGIN PAGE</h2>
<form action="loginAction.jsp" method="post">
<table align="center" width="100" border="1">
	<tr height="50">
		<td width="150" align="center">I D</td>
		<td width="70" align="center"><input type="text" name="id" size="40" placeholder="I D"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center">PASSWORD</td>
		<td width="70" align="center"><input type="password" name="pass1" size="40" placeholder="PASSWORD"></td>
	</tr>
	<tr height="50">
		<td width="100" align="center" colspan="2">
		<input type="button" onclick="location.href='joinPage.jsp'" value="JOIN">&nbsp;&nbsp;
		<input type="submit" value="LOGIN"></td>
		  
</table>
</form>
</body>
</html>