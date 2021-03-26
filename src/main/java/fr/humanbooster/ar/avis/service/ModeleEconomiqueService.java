package fr.humanbooster.ar.avis.service;

import java.util.List;
import java.util.Optional;

import fr.humanbooster.ar.avis.business.ModeleEconomique;

public interface ModeleEconomiqueService {

	ModeleEconomique ajouterModeleEconomique(String nom);
	List<ModeleEconomique> recupererModeleEconomiques();
	Optional<ModeleEconomique> recupererModeleEconomique(Long id);
}
