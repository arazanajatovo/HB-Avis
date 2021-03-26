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
	<h1>Bienvenue !</h1>
	<h2>Inscription</h2>
	<form:form modelAttribute="joueur" action="inscription" method="post">
		<form:label path="pseudo">Pseudo</form:label><form:input path="pseudo"/><form:errors path="pseudo" cssClass="erreur"/><br>
		<form:label path="motDePasse">Mot de passe</form:label><form:password path="motDePasse"/><form:errors path="motDePasse" cssClass="erreur"/><br>
		<form:button>Inscription</form:button>
	</form:form>
	</body>
</html>