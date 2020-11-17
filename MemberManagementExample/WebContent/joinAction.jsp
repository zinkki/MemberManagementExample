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
	String id = null;
	if(session.getAttribute("id") != null) {
		id = (String)session.getAttribute("id");
	}
	if(id != null) {
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('Already logged in')");
		script.println("location.href='main.jsp'");
		script.println("</script>");
	}

	MemberDAO mdao = new MemberDAO();
	
	if(mbean.getId()==null || mbean.getPass1()==null || mbean.getPass2()==null || mbean.getEmail()==null ||
		mbean.getTel()==null || mbean.getHobby()==null || mbean.getJob()==null || mbean.getInfo()==null){
		//입력안된사항이있을때
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('There is an empty spot!')");
		script.println("history.go(-1)");
		script.println("</script>");
	}else if(!mbean.getPass1().equals(mbean.getPass2())){
		//비밀번호,비밀번호 확인 결과 불일치
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('PASSWORD IS NOT CORRECTED!!')");
		script.println("history.go(-1)");
		script.println("</script>");
	}else if(mdao.idCheck(mbean.getId())==true){
		//아이디 중복체크
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('The ID already exists.')");
		script.println("history.go(-1)");
		script.println("</script>");
	}else {
	PrintWriter script = response.getWriter();
		
		String [] hobby = request.getParameterValues("hobby");
		String texthobby = "";
		
		for(int i=0; i<hobby.length;i++) {
			texthobby += hobby[i]+" ";
		}
		mbean.setHobby(texthobby);
		
		mdao.insertMember(mbean);
		
		script.println("<script>");
		script.println("alert('JOIN SUCCESS!!')");
		script.println("location.href='main.jsp'");
		script.println("</script");
		
		session.setAttribute("id", mbean.getId());
		session.setAttribute("pass1", mbean.getPass1());
		
		session.setMaxInactiveInterval(60);
		
		response.sendRedirect("main.jsp");
	}
	
	

%>

</body>
</html>