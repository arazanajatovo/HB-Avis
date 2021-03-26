package fr.humanbooster.ar.avis.service;

import java.util.List;

import fr.humanbooster.ar.avis.business.Genre;

public interface GenreService {

	Genre ajouterGenre(String nom);
	List<Genre> recupererGenres();
	List<Genre> recupererGenres(String nom);
	Genre recupererGenre(String nom);
}
