<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New article</title>
</head>
<body>

<form method="post" action='Controller'>
	Titre:
	<input type="text" name="titre"><br />
	Auteur:
	<input type='text' name='auteur'><br />
	Contenu:
	<input type='text' name='contenu'><br />
	<input type="submit"  name='save' value='Save'>
</form>

</body>
</html>