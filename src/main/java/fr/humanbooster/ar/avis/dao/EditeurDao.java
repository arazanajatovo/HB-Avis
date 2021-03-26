package fr.humanbooster.ar.avis.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.humanbooster.ar.avis.business.Editeur;

public interface EditeurDao extends JpaRepository<Editeur, Long> {
	
	@Query("from Editeur where nom Like ?1")
	List<Editeur> findByNomLike(String nom);
	
	@Query("select distinct j.editeur from Jeu j where j.genre.nom Like ?1%")
    List<Editeur> findDistinctByJeuxGenreNomStartingWith(String nom);
}