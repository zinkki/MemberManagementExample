<%@page import="java.io.PrintWriter"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="member.MemberBean" %>
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
	mdao.insertMember(mbean);
	MemberBean mb = new MemberBean();
	
	if(mbean.getId()==null || mbean.getPass1()==null || mbean.getPass2()==null || mbean.getEmail()==null ||
		mbean.getTel()==null || mbean.getHobby()==null || mbean.getJob()==null || mbean.getInfo()==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('There's an empty spot!)");
		script.println("history.back()");
		script.println("</script>");
	}else if(!mbean.getPass1().equals(mbean.getPass2())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('PASSWORD IS NOT CORRECTED!!')");
		script.println("history.back()");
		script.println("</script>");
	}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('JOIN SUCCESS!!')");
		script.println("location.href='main.jsp'");
		script.println("</script");
	}
	
	String [] hobby = request.getParameterValues("hobby");
	String texthobby = "";
	
	for(int i=0; i<hobby.length;i++) {
		texthobby += hobby[i]+" ";
	}
	mbean.setHobby(texthobby);

%>

</body>
</html>