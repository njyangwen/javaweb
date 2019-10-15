<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.Vector"%>
<%@ page import="com.banyuan.service.StudentService"%>
<%@ page import="com.banyuan.entity.Student"%>
<%@ page import="com.banyuan.util.MyFactory"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Vector v = new Vector();
		v.add("One");
		v.add("Two");
		v.add("Three");
		v.add("Four");

		pageContext.setAttribute("vector", v);
	%>

	<c:forEach items="${vector}" var="item">
        ${item}
    </c:forEach>

	<%
		StudentService ss = (StudentService) MyFactory.getInstance("studentService");
		Vector<Student> students = ss.getData(1, 3);

		pageContext.setAttribute("ss", students);
	%>
	<table border="1">
		<c:forEach items="${ss}" var="item">
			<tr>
				<td>${item.id}</td>
				<td>${item.name}</td>
				<td>${item.age}</td>
				<td>${item.birthday }</td>
				<td>${item.sex }</td>
			</tr>
		</c:forEach>
	</table>



</body>
</html>