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
	    <h1>Bienvenue <c:if test="${sessionScope.joueur != null}">${sessionScope.joueur.pseudo}</c:if></h1>
	    <h2>Voici la liste des jeux</h2>
	    <form action="?sort=${sort}&page=0&size=${size}" method="post">
	    	<label for="genre">Genres : </label>
	    	<select name="genre" id="genre">
	    		<option value="0">Tous</option>
	    		<c:forEach items="${genres}" var="genre">
	    			<option value="${genre.id}"<c:if test="${genre.id eq idGenre}">selected</c:if>>${genre.nom}</option>
	    		</c:forEach>
	    	</select>
	    	<input type="submit" value="Filtrer" />
	    </form><br>
	    <form action="?sort=${sort}&page=0&genre=${idGenre}" method="post">
	    	<label for="size">Nombre de lignes : </label><input style="width: 32px" type="number" id="size" name="size" value="${size}" />
	    	<input type="submit" value="Changer" />
	    </form><br>
	    <c:if test="${page != 0}"><a href="?sort=${sort}&size=${size}&page=${page - 1}&genre=${idGenre}">&#x23EA;</a></c:if>
	    <c:if test="${nbPages <= 5 }">
		    <c:forEach var="i" begin="1" end="${nbPages}">
		    	<c:if test="${page != i - 1}"><a href="?sort=${sort}&size=${size}&page=${i - 1}&genre=${idGenre}"> ${i} </a></c:if>
		    	<c:if test="${page == i - 1}"> ${i} </c:if>
		    </c:forEach>
	    </c:if>
	    <c:if test="${nbPages > 5 }">
	  		<c:if test="${page - 1 > 2}"><a href="?sort=${sort}&size=${size}&page=0&genre=${idGenre}"> 1 </a>... </c:if>
		    <c:forEach var="i" begin="${page - 1 <= 2 ? 1 : page - 1 }" end="${page + 3 >= nbPages - 1 ? nbPages : page + 3 }">
		    	<c:if test="${page != i - 1}"><a href="?sort=${sort}&size=${size}&page=${i - 1}&genre=${idGenre}"> ${i} </a></c:if>
		    	<c:if test="${page == i - 1}"> ${i} </c:if>
		    </c:forEach>
	    	<c:if test="${page + 3 < nbPages - 1}"> ...<a href="?sort=${sort}&size=${size}&page=${nbPages - 1}&genre=${idGenre}"> ${nbPages} </a></c:if>
	    </c:if>
	    <c:if test="${page != nbPages - 1}"><a href="?sort=${sort}&size=${size}&page=${page + 1}&genre=${idGenre}">&#x23E9;</a></c:if>
	    <table>
	    	<thead>
	    		<tr>
	    			<th>Icone</th>
			    	<th><a href="?sort=nom&size=${size}&page=0&genre=${idGenre}">Nom</a></th>
			    	<th>Plateforme(s)</th>
			    	<th><a href="?sort=genre&size=${size}&page=0&genre=${idGenre}">Genre</a></th>
			    	<th><a href="?sort=classification&size=${size}&page=0&genre=${idGenre}">Classification</a></th>
			    	<th><a href="?sort=dateSortie&size=${size}&page=0&genre=${idGenre}">Date de sortie</a></th>
			    	<th><a href="?sort=modeleEconomique&size=${size}&page=0&genre=${idGenre}">Modèle économique</a></th>
			    	<th>Nombre d'avis</th>
			    	<th>Moyenne des notes</th>
			    	<th>Image</th>
			    	<th>PDF</th>
			    	<c:if test="${sessionScope.joueur.estAdministrateur == true}">
				    	<th>Modifier</th>
				    	<th>Supprimer</th>
				    	<th>Televerser</th>
			    	</c:if>
		    	</tr>
	    	</thead>
	    	<tbody>
	    		<c:forEach items="${jeux}" var="jeu">
	    		<tr>
	    			<c:choose>
	    				<c:when test="${jeu.moyenne >= 15}"><c:set var="color" value="green" /></c:when>
	    				<c:when test="${jeu.moyenne >= 10}"><c:set var="color" value="orange" /></c:when>
	    				<c:when test="${jeu.moyenne < 10}"><c:set var="color" value="red" /></c:when>
	    				<c:otherwise><c:set var="color" value="white" /></c:otherwise>
	    			</c:choose>
	    			<td><c:if test="${jeu.fichier != null}"><img src="${jeu.fichier.uriImg}" alt="icone" /></c:if></td>
	    			<td>${jeu.nom}</td>
	    			<td><c:forEach items="${jeu.plateformes}" var="plateforme">${plateforme.nom}<br></c:forEach></td>
	    			<td>${jeu.genre.nom}</td>
	    			<td>${jeu.classification.nom}</td>
	    			<td>${jeu.dateSortie}</td>
	    			<td>${jeu.modeleEconomique.nom}</td>
	    			<td><a href="listeAvis?ID_JEU=${jeu.id}">Avis (${jeu.avis.size()})</a></td>
	    			<td><span style="color : ${color};">${jeu.moyenne == null ? "Non noté" : jeu.moyenne}</span></td>
	    			<c:if test="${jeu.fichier != null}"><td><a href="${jeu.fichier.uriImg}">Aperçu</a><br/><br/>
	    			<a href="${jeu.fichier.uriDL}">Télécharger</a></td></c:if>
	    			<c:if test="${jeu.fichier == null}"><td>Pas d'image</td></c:if>
	    			<td><a href="jeuPDF/${jeu.id}/${jeu.nom}">PDF</a></td>
			    	<c:if test="${sessionScope.joueur.estAdministrateur == true}">
		    			<td><a href="jeu?ID_JEU=${jeu.id}">Modifier</a></td>
		    			<td>
		    				<form action="supprimer" method="post" onsubmit="return confirm('Etes-vous sur de vouloir supprimer ${jeu.nom} ?') ? true : false;">
		    					<input type="hidden" name="ID_JEU" value="${jeu.id}" />
		    					<input type="submit" value="Supprimer" />
		    				</form>
		    			</td>
		    			<td><a href="televerserFichier?ID_JEU=${jeu.id}">Televerser</a></td>
	    			</c:if>
	    		</tr>
   				</c:forEach>
	    	</tbody>
    	</table>
	    <br>
	    <a href="editeurs">Liste des éditeurs</a><br/>
	    <a href="listeAvis">Liste des avis</a><br/>
	    <c:if test="${sessionScope.joueur != null}">
	    	<a href="avis">Ajouter un avis</a><br/>
	    	<c:if test="${sessionScope.joueur.estAdministrateur == true}"><a href="jeu">Ajouter un jeu</a><br/></c:if>
	    	<a href="deconnexion">Déconnexion</a><br/>
	    </c:if>
	    <c:if test="${sessionScope.joueur == null}">
		    <a href="connexion">Connexion</a><br/>
		    <a href="inscription">Inscription</a><br/>
	    </c:if>
	</body>
</html>