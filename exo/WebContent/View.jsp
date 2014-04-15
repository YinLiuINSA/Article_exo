<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="exo.Article"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//get the article list
		ArrayList<Article> list = (ArrayList<Article>) session
				.getAttribute("list");
		//get the article to view its details
		int a = Integer.decode(request.getParameter("entryID"));
		Article art = list.get(a - 1);
		pageContext.setAttribute("titre", art.getTitre());
		pageContext.setAttribute("auteur", art.getAuteur());
		pageContext.setAttribute("contenu", art.getContenu());
	%>
	<b>Titre: ${titre}</b>
	<br /> Auteur: ${auteur}
	<br /> Contenu: ${contenu}
	<br />
	<form method="GET" action='Controller' name="view_back">
		<input type="submit" value="back">
	</form>
</body>
</html>