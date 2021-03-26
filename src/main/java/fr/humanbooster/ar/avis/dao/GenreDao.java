package fr.humanbooster.ar.avis.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.ar.avis.business.Genre;

public interface GenreDao extends JpaRepository<Genre, Long> {

	List<Genre> findByNomContaining(String nom);
	Genre findFirstByNomContaining(String nom);
	
}
