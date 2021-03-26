package fr.humanbooster.ar.avis.service;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import fr.humanbooster.ar.avis.business.Avis;
import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.Joueur;

public interface AvisService {

	Avis ajouterAvis(Date dateEnvoi, Float note, String description, Jeu jeu, Joueur joueur);
	Avis ajouterAvis(Avis avis);
	Avis recupererAvis(Long id);
	void supprimerAvis(Avis avis);
	List<Avis> recupererDesAvis();
	Page<Avis> recupererPageAvis(Pageable pageable);
	Page<Avis> recupererPageAvisParJeuId(Long id, Pageable pageable);
	List<Avis> recupererDesAvisParJeuId(Long id);
	Avis recupererDernierAvisParJoueur(Joueur joueur);
}
