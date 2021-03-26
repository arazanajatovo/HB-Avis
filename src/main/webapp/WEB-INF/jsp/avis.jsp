<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="style/style.css">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Ajouter un avis</h1>
		<form:form modelAttribute="avis" action="avis" method="post">
		<form:hidden path="joueur" />
		<form:hidden path="id" />
		<table>
			<tr>
				<td>Jeu</td>
				<td>
					<form:select path="jeu">
						<form:option value="">Veuillez choisir</form:option>
						<form:options items="${jeux}" itemValue="id" itemLabel="nom"/>
					</form:select>
				</td>
				<td><form:errors path="jeu" cssClass="erreur" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><form:textarea path="description" cssClass="desc" /></td>
				<td><form:errors path="description" cssClass="erreur" /></td>
			</tr>
			<tr>
				<td>Note attribuée</td>
				<td>
					<form:select path="note">
						<form:option value="-1">Veuillez choisir</form:option>
						<c:forEach var="i" begin="0" end="20">
							<form:option value="${i}">${i}</form:option>
						</c:forEach>
					</form:select>
				</td>
				<td><form:errors path="note" cssClass="erreur" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button>Enregistrer</form:button></td>
				<td><form:errors path="*" cssClass="erreur" /></td>
			</tr>
		</table>
		</form:form><br/>
		<a href="index">Retour à l'index</a>
	</body>
</html>