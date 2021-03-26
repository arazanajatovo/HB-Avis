package fr.humanbooster.ar.avis.service;

import java.util.List;
import java.util.Optional;

import fr.humanbooster.ar.avis.business.Editeur;

public interface EditeurService {

	Editeur ajouterEditeur(String nom);
	List<Editeur> recupererEditeurs();
	List<Editeur> recupererEditeurs(String nom);
	Optional<Editeur> recupererEditeur(Long id);
	List<Editeur> recupererEditeursParGenreDeJeu(String nom);
}
