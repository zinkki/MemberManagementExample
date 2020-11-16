
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
	
<%
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();

	if(id != null) {
		mdao.deleteMember(id);
%>
	<script>
	if(confirm("Are you sure you want to delete it? ")){
		alert("deleted! :)");
		<%
		response.sendRedirect("memberList.jsp");
		%>
		
	}else {
		alert("canceled! :)");
		history.go(-1);
	}

	</script>
<%
	}else {
%>
	<script>
	alert("failed");
	</script>
<%
	}
%>



</body>
</html>