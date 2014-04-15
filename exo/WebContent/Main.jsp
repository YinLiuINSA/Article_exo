<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="exo.Article"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${listArticle}" var="Article">
		<tr>
			<td>${Article.titre}</td>

			<td>
				<form method=get action=View.jsp?entryID=${Article.ID}>
					<%
	                ArrayList<Article> list = (ArrayList<Article>) request.getAttribute("listArticle");
	                session.setAttribute("list", list);%>
				</form>
			<td><a href="View.jsp?entryID=${Article.ID}">View</a></td>
			<td><a href="Edit.jsp?entryID=${Article.ID}">Edit</a></td>
			<td><a href="Delete.jsp?entryID=${Article.ID}">Delete</a></td>
			</td>
		</tr>
		<br />
	</c:forEach>
	<form method='get'>
		<input type='submit' name='create' value='Create'>
	</form>
	<br />
</body>
</html>