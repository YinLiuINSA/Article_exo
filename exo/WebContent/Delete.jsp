<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Deleted
	<%
	//get the id from Main.jsp with url
	String a = request.getParameter("entryID");
	pageContext.setAttribute("id", a);
%>
	<form method="post" action='Controller'>
		<input type="submit" name='delete' value='Back'> <input
			type="hidden" name="id" value="${id}"><br />
	</form>
</body>
</html>