package fr.humanbooster.ar.avis.service;

import java.util.List;
import java.util.Optional;

import fr.humanbooster.ar.avis.business.Plateforme;

public interface PlateformeService {

	Plateforme ajouterPlateforme(String nom);
	List<Plateforme> recupererPlateformes();
	Optional<Plateforme> recupererPlateforme(Long id);
}
