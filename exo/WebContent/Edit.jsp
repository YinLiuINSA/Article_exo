<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	//get the article to be edited
	ArrayList<Article> list = (ArrayList<Article>)session.getAttribute("list");
	int a = Integer.decode(request.getParameter("entryID") );
	Article art = list.get(a-1);
	pageContext.setAttribute("titre", art.getTitre());
	pageContext.setAttribute("auteur", art.getAuteur());
	pageContext.setAttribute("contenu", art.getContenu());
	//get the id from Main.jsp with url
	String id = request.getParameter("entryID");
	pageContext.setAttribute("id", id);
	%>
	<form method="post" action='Controller'>
		Titre: <input type="text" name="titre"><br /> Auteur: <input
			type='text' name='auteur'><br /> Contenu: <input type='text'
			name='contenu'><br /> <input type="hidden" name="id"
			value="${id}"> <input type="submit" name='edit' value='Save'>
	</form>
</body>
</html>