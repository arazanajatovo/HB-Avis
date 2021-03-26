<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Connexion</title>
	</head>
	<body>
		<h1>Bienvenue !</h1>
		<h2>Connexion</h2>
		<form action="connexion" method="post">
			<label>Pseudo</label><input type="text" name="PSEUDO" placeholder="Votre pseudo"><br>
			<label>Mot de passe</label><input type="password" name="MOT_DE_PASSE" placeholder="Mot de passe"><br>
			<input type="submit" value="Connexion">
		</form>
	</body>
</html>