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
		<h1>Ajouter un jeu</h1>
		<form:form modelAttribute="jeu" action="jeu" method="post">
		<form:hidden path="id"/>
		<form:hidden path="fichier"/>
		<table>
			<tr>
				<td>Nom</td>
				<td><form:input path="nom" /></td>
				<td><form:errors path="nom" cssClass="erreur" /></td>
			</tr>
			
			<tr>
				<td>Editeur</td>
				<td>
					<form:select path="editeur">
						<form:option value="">Veuillez choisir</form:option>
						<form:options items="${editeurs}" itemValue="id" itemLabel="nom"/>
					</form:select>
				</td>
				<td><form:errors path="editeur" cssClass="erreur" /></td>
			</tr>
			
			<tr>
				<td>Date de sortie</td>
				<td><form:input path="dateSortie" type="date" /></td>
				<td><form:errors path="dateSortie" cssClass="erreur" /></td>
			</tr>
			
			<tr>
				<td>Description</td>
				<td><form:textarea path="description" cssClass="desc" /></td>
				<td><form:errors path="description" cssClass="erreur" /></td>
			</tr>
			
			<tr>
				<td>Genre</td>
				<td>
					<form:select path="genre">
						<form:option value="">Veuillez choisir</form:option>
						<form:options items="${genres}" itemValue="id" itemLabel="nom"/>
					</form:select>
				</td>
				<td><form:errors path="genre" cssClass="erreur" /></td>
			</tr>
			
			<tr>
				<td>Classification</td>
				<td>
					<form:select path="classification">
						<form:option value="">Veuillez choisir</form:option>
						<form:options items="${classifications}" itemValue="id" itemLabel="nom"/>
					</form:select>
				</td>
				<td><form:errors path="classification" cssClass="erreur" /></td>
			</tr>
			
			<tr>
				<td>Plateforme(s)</td>
				<td>
					<form:select path="plateformes" multiple="true">
						<form:option value="">Veuillez choisir</form:option>
						<form:options items="${plateformes}" itemValue="id" itemLabel="nom"/>
					</form:select>
				</td>
				<td><form:errors path="plateformes" cssClass="erreur" /></td>
			</tr>
			
			<tr>
				<td>Modèle économique</td>
				<td>
					<form:select path="modeleEconomique">
						<form:option value="">Veuillez choisir</form:option>
						<form:options items="${modeleEconomiques}" itemValue="id" itemLabel="nom"/>
					</form:select>
				</td>
				<td><form:errors path="modeleEconomique" cssClass="erreur" /></td>
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