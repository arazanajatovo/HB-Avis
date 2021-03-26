package fr.humanbooster.ar.avis.service;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import fr.humanbooster.ar.avis.business.Classification;
import fr.humanbooster.ar.avis.business.Editeur;
import fr.humanbooster.ar.avis.business.Genre;
import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.ModeleEconomique;
import fr.humanbooster.ar.avis.business.Plateforme;

public interface JeuService {

	Jeu ajouterJeu(Jeu jeu);
	void modifierFichier(Long idJeu, Long idFichier);
	Jeu ajouterJeu(String nom, String description, Date dateSortie, ModeleEconomique modeleEconomique,
			Classification classification, Genre genre, Editeur editeur, List<Plateforme> plateformes);
	Jeu recupererJeu(Long id);
	List<Jeu> recupererJeux();
	List<Jeu> recupererJeux(Sort sort);
	Page<Jeu> recupererJeux(Pageable pageable);
	Page<Jeu> recupererJeux(String nom, Pageable pageable);
	Page<Jeu> recupererJeux(Long genreId, Pageable pageable);
	List<Jeu> recupererJeux(Editeur editeur);
	List<Jeu> recupererJeux(Genre genre);
	List<Jeu> recupererJeuxParNomDeGenre(String nom);
	List<Jeu> recupererJeux(Date dateDebut, Date dateFin);
	void supprimerJeu(Long id);
	void modifierNom(Long idJeu, String nomJeu);
	Jeu recupererJeuAvecMeilleurMoyenne();
	
}
