<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="test01.jsp">
		<input type="text" name="username"> <input type="submit" />
	</form>
	<%
		String name = request.getParameter("username");
		out.print("name=" + name);
	%>
</body>
</html>