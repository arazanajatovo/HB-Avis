package fr.humanbooster.ar.avis.service;

import java.util.Date;
import java.util.List;

import fr.humanbooster.ar.avis.business.Joueur;

public interface JoueurService {

	Joueur ajouterJoueur(String pseudo, String motDePasse, Date dateInscription, boolean estAdministrateur);
	List<Joueur> recupererJoueurs();
	Joueur recupererJoueur(String pseudo, String motDePasse);
	Joueur recupererJoueur(Long id);
	Joueur recupererJoueurTopAvis();
}
