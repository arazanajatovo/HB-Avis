package fr.humanbooster.ar.avis.service;

import java.util.List;
import java.util.Optional;

import fr.humanbooster.ar.avis.business.Classification;

public interface ClassificationService {

	Classification ajouterClassification(String nom);
	List<Classification> recupererClassifications();
	Optional<Classification> recupererClassification(Long id);
}
