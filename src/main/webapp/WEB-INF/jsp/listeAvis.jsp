<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="../style/style.css">
		<title>Insert title here</title>
	</head>
	<body>
	    <h2>Voici la liste des avis<c:if test="${jeu != null}"> de ${jeu.nom}</c:if></h2>
	    <table>
	    	<thead>
	    		<tr>
			    	<th><a href="#">Date d'envoi</a></th>
			    	<th><a href="#">Nom du Jeu</a></th>
			    	<th><a href="#">Pseudo du Joueur</a></th>
			    	<th><a href="#">Note</a></th>
			    	<th><a href="#">Description</a></th>
			    	<th>Modifier</th>
		    	</tr>
	    	</thead>
	    	<tbody>
	    		<c:forEach items="${listeAvis}" var="avis">
	    		<tr>
	    			<td>${avis.dateEnvoi}</td>
	    			<td>${avis.jeu.nom}</td>
	    			<td>${avis.joueur.pseudo}</td>
	    			<td>${avis.note}</td>
	    			<td>${avis.description}</td>
	    			<td><c:if test="${avis.joueur.id == sessionScope.joueur.id}"><a href="avis?ID_AVIS=${avis.id}">Modifier</a></c:if></td>
	    		</tr>
   				</c:forEach>
	    	</tbody>
    	</table>
	    <br>
	    <a href="index">Retour à l'accueil</a><br/>
	</body>
</html>