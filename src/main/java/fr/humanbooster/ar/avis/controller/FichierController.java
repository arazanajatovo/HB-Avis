package fr.humanbooster.ar.avis.controller;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import fr.humanbooster.ar.avis.business.Fichier;
import fr.humanbooster.ar.avis.service.FichierService;
import fr.humanbooster.ar.avis.service.JeuService;

@Controller
public class FichierController {

	private FichierService fichierService;
	private JeuService jeuService;

	public FichierController(FichierService fichierService, JeuService jeuService) {
		super();
		this.fichierService = fichierService;
		this.jeuService = jeuService;
	}

	@GetMapping("/televerserFichier")
	public ModelAndView televerserFichierGet(@RequestParam("ID_JEU") Long idJeu) {
		ModelAndView mav = new ModelAndView("televerser");
		mav.addObject("jeu", jeuService.recupererJeu(idJeu));
		return mav;
	}
	
	@PostMapping("/televerserFichier")
	public ModelAndView televerserFichierPost(@RequestParam("FICHIER") MultipartFile fichier,
			@RequestParam("ID_JEU") Long idJeu) {
		String nomFichier = fichierService.stockerFichier(fichier);
		String uriDL = ServletUriComponentsBuilder
				.fromPath("telecharger/")
				.path(nomFichier)
				.toUriString();
		String uriImg = ServletUriComponentsBuilder
				.fromPath("images/")
				.path(nomFichier)
				.toUriString();
//				.fromCurrentContextPath()
		Fichier f = new Fichier(nomFichier, uriDL, uriImg, fichier.getContentType(), fichier.getSize());
		f = fichierService.ajouterFichier(f);
		jeuService.modifierFichier(idJeu, f.getId());
		return new ModelAndView("redirect:index");
	}
	
	@GetMapping("/telecharger/{nomFichier}")
	public ResponseEntity<Resource> telechargerFichier(@PathVariable String nomFichier, HttpServletRequest request) {
		Resource resource = fichierService.fichierEnRessource(nomFichier);
		String type = null;
		try {
			type = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
		} catch (IOException e) {
			System.out.println("Type non déterminé");
		}
		
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(type))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachement; filename=\"" + resource.getFilename() + "\"")
				.body(resource);
	}
	
	@PostConstruct
	public void init() {

	}
}