<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.getParameter("name");
		request.getParameter("residentNum1");
		request.getParameter("residentNum2");
		request.getParameter("carrier");
		request.getParameter("phone");
		request.getParameter("email");
		request.getParameter("domain");
	%>
	
		결과</br>
		이름 : ${param.name}</br>
		주민번호 : ${param.residentNum1}-${param.residentNum2}XXXXXX</br>
		${param.carrier} ${param.phone}</br>
		${param.email}@${param.domain}</br>
	
</body>
</html>