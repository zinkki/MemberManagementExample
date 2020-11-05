<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
</head>
<body>
<h2 align="center">JOIN PAGE</h2>
<form action="joinAction.jsp" method="post">
<table align="center" width="500" border="1">
	<tr height="50">
		<td width="150" align="center"> I D </td>
		<td width="350" align="center"> <input type="text" name="id" size="40" placeholder="I D"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> PASSWORD </td>
		<td width="350" align="center"> <input type="password" name="pass1" size="40" placeholder="PASSWORD"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> PASSWORD CONFIRM </td>
		<td width="350" align="center"> <input type="password" name="pass2" size="40" placeholder="PASSWORD CONFIRM"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> E-MAIL </td>
		<td width="350" align="center"> <input type="email" name="email" size="40" placeholder="E-MAIL"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> TEL </td>
		<td width="350" align="center"> <input type="tel" name="tel" size="40" placeholder="T E L"></td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> JOB </td>
		<td width="350" align="center">
		<select name="job">
		<option>Choose</option>
		<option value="freelancer">freelancer</option>
		<option value="alien">alien</option>
		<option value="programmer">programmer</option>
		<option value="student">student</option>
		<option value="can_opener">can_opener</option>
		<option value="ect.">ect.</option>
		</select>
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> HOBBY </td>
		<td width="350" align="center"> 
		<input type="checkbox" name="hobby" value="camping">camping &nbsp;
		<input type="checkbox" name="hobby" value="cooking">cooking &nbsp;
		<input type="checkbox" name="hobby" value="walking">walking &nbsp;<br>
		<input type="checkbox" name="hobby" value="book">book &nbsp;
		<input type="checkbox" name="hobby" value="play_cat">play_cat &nbsp;
		<input type="checkbox" name="hobby" value="movie">movie &nbsp;
		</td>
	</tr>
	<tr height="50">
		<td width="150" align="center"> INFORMATION </td>
		<td width="350" align="center">
		<textarea rows="5" cols="40" name="info" placeholder="~ M E M O ~"></textarea>
		</td>
	</tr>
	<tr height="50">
		<td align="center" colspan="2">
		<input type="reset" value="RESET">&nbsp;&nbsp;
		<input type="submit" value="JOIN"></td>
	</tr>
</table>
</form>
</body>
</html>