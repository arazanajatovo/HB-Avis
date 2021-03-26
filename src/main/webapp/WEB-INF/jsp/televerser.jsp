<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Inscription</title>
		<link href="style/style.css" rel="stylesheet">
	</head>
	<body>
		<h2>Televerser une image pour ${jeu.nom}</h2>
		<form action="televerserFichier" method="post" enctype="multipart/form-data">
			<input type="hidden" name="ID_JEU" value="${jeu.id}"/>
			<input type="file" name="FICHIER" /><br/><br/>
			<input type="submit" value="Enregistrer" />
		</form>
	</body>
</html>