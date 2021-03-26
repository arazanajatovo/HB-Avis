package fr.humanbooster.ar.avis.service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import fr.humanbooster.ar.avis.business.Fichier;

public interface FichierService {
	Fichier ajouterFichier(Fichier fichier);
	String stockerFichier(MultipartFile fichier);
	Resource fichierEnRessource(String nomFichier);
}
