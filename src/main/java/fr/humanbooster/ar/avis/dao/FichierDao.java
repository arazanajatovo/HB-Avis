package fr.humanbooster.ar.avis.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.ar.avis.business.Fichier;

public interface FichierDao extends JpaRepository<Fichier, Long> {
	
}
