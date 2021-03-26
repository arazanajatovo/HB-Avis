package fr.humanbooster.ar.avis.service.impl;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import fr.humanbooster.ar.avis.business.Fichier;
import fr.humanbooster.ar.avis.dao.FichierDao;
import fr.humanbooster.ar.avis.property.FichierProperties;
import fr.humanbooster.ar.avis.service.FichierService;

@Service
public class FichierServiceImpl implements FichierService {
	
	private final Path cheminStockage;
	@Autowired
	private FichierDao fichierDao;

	@Autowired
	public FichierServiceImpl(FichierProperties fichierProperties) {
		this.cheminStockage = Paths.get(fichierProperties.getUploadDir()).toAbsolutePath().normalize();
		try {
			Files.createDirectories(this.cheminStockage);
		} catch (IOException e) {
			System.out.println("Erreur lors de la création du dossier");
		}
	}
	
	@Override
	public String stockerFichier(MultipartFile fichier) {
		String nomFichier = StringUtils.cleanPath(fichier.getOriginalFilename());

		try {
			Path nouveauChemin = this.cheminStockage.resolve(nomFichier);
			Files.copy(fichier.getInputStream(), nouveauChemin, StandardCopyOption.REPLACE_EXISTING);
			
			return nomFichier;
		} catch (IOException e) {
			System.out.println("Erreur lors du stockage du fichier");
			return null;
		}
	}
	
	@Override
	public Resource fichierEnRessource(String nomFichier) {
		Path cheminFichier = this.cheminStockage.resolve(nomFichier).normalize();
		try {
			Resource resource = new UrlResource(cheminFichier.toUri());
			if (resource.exists()) {
				return resource;
			}
		} catch (MalformedURLException e) {
			System.out.println("Erreur lors de la conversion du fichier en resource");
		}
		return null;
	}

	@Override
	public Fichier ajouterFichier(Fichier fichier) {
		return fichierDao.save(fichier);
	}
}
