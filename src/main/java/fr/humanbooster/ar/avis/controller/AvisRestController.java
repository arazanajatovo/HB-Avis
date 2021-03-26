package fr.humanbooster.ar.avis.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import fr.humanbooster.ar.avis.business.Avis;
import fr.humanbooster.ar.avis.business.Classification;
import fr.humanbooster.ar.avis.business.Editeur;
import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.Joueur;
import fr.humanbooster.ar.avis.service.AvisService;
import fr.humanbooster.ar.avis.service.ClassificationService;
import fr.humanbooster.ar.avis.service.EditeurService;
import fr.humanbooster.ar.avis.service.GenreService;
import fr.humanbooster.ar.avis.service.JeuService;
import fr.humanbooster.ar.avis.service.JoueurService;
import fr.humanbooster.ar.avis.service.ModeleEconomiqueService;
import fr.humanbooster.ar.avis.service.PlateformeService;

@RestController
public class AvisRestController {
	
	private ClassificationService classificationService;
	private EditeurService editeurService;
	private GenreService genreService;
	private JeuService jeuService;
	private ModeleEconomiqueService modeleEconomiqueService;
	private PlateformeService plateformeService;
	private JoueurService joueurService;
	private AvisService avisService;

	public AvisRestController(ClassificationService classificationService, EditeurService editeurService,
			GenreService genreService, JeuService jeuService, ModeleEconomiqueService modeleEconomiqueService,
			PlateformeService plateformeService, JoueurService joueurService, AvisService avisService,
			HttpSession httpSession) {
		super();
		this.classificationService = classificationService;
		this.editeurService = editeurService;
		this.genreService = genreService;
		this.jeuService = jeuService;
		this.modeleEconomiqueService = modeleEconomiqueService;
		this.plateformeService = plateformeService;
		this.joueurService = joueurService;
		this.avisService = avisService;
	}
	
	/**
	 * Ajoute un éditeur.
	 * @param nomEditeur
	 * @return
	 */
	@PostMapping("/editeurs/{nomEditeur}")
	public Editeur ajouterEditeur(@PathVariable String nomEditeur) {
		return editeurService.ajouterEditeur(nomEditeur);
	}
	
	/**
	 * Ajoute un avis.
	 * @param idJeu
	 * @param idJoueur
	 * @param note
	 * @param description
	 * @return
	 */
	@PostMapping("/jeux/{idJeu}/avis/{idJoueur}/{note}/{description}")
	public Avis ajouterAvis(@PathVariable Long idJeu, @PathVariable Long idJoueur,
			@PathVariable Float note, @PathVariable String description) {
		Avis avis = new Avis();
		avis.setDateEnvoi(new Date());
		avis.setDescription(description);
		avis.setJeu(jeuService.recupererJeu(idJeu));
		avis.setJoueur(joueurService.recupererJoueur(idJoueur));
		avis.setNote(note);
		return avisService.ajouterAvis(avis);
	}
	
	/**
	 * Recupere la liste des avis d'un jeu.
	 * @param idJeu
	 * @return
	 */
	@GetMapping("/jeux/{idJeu}/avis")
	public List<Avis> recupererAvisParId(@PathVariable Long idJeu) {
		return avisService.recupererDesAvisParJeuId(idJeu);
	}
	
	/**
	 * Modifie le nom d'un jeu.
	 * @param idJeu
	 * @param nomJeu
	 * @return
	 */
	@PutMapping("/jeux/{idJeu}/{nomJeu}")
	public boolean modifierNomJeu(@PathVariable Long idJeu, @PathVariable String nomJeu) {
		Jeu jeu = jeuService.recupererJeu(idJeu);
		if (jeu != null) {
			jeuService.modifierNom(idJeu, nomJeu);
			return true;
		}
		return false;
	}
	
	/**
	 * Ajoute une classification.
	 * @param nomClassification
	 * @return
	 */
	@PostMapping("/classification/{nomClassification}")
	public Classification ajouterClassification(@PathVariable String nomClassification) {
		return classificationService.ajouterClassification(nomClassification);
	}
	
	/**
	 * Récupère le joueur ayant posté le plus d'avis.
	 * @return
	 */
	@GetMapping("/joueurs/top")
	public Joueur recupererJoueurTopAvis() {
		return joueurService.recupererJoueurTopAvis();
	}
	
	/**
	 * Supprime un avis (en précisant l'id du jeu et l'id de l'avis)
	 * @param idJeu
	 * @param idAvis
	 * @return
	 */
	@DeleteMapping("/jeux/{idJeu}/avis/{idAvis}")
	public boolean supprimerAvis(@PathVariable Long idJeu, @PathVariable Long idAvis) {
		Avis avis = avisService.recupererAvis(idAvis);
		if (avis != null && avis.getJeu().getId().equals(idJeu)) {
			avisService.supprimerAvis(avis);
			return true;
		}
		return false;
	}
	
	/**
	 * Récupère le dernier avis posté par un joueur.
	 * @param idJoueur
	 * @return
	 */
	@GetMapping("/joueur/{idJoueur}/dernierAvis")
	public Avis recupererDernierAvisDuJoueur(@PathVariable Long idJoueur) {
		Joueur joueur = joueurService.recupererJoueur(idJoueur);
		return avisService.recupererDernierAvisParJoueur(joueur);
	}
	
	/**
	 * Récupère la liste de jeu sortie entre 2 dates.
	 * @param dateDebut
	 * @param dateFin
	 * @return
	 */
	@GetMapping("/jeux")
	public List<Jeu> recupererJeuxEnterDeuxDates(@RequestParam(value = "dateDebut") Date dateDebut,
			@RequestParam(value = "dateFin") Date dateFin) {
		return jeuService.recupererJeux(dateDebut, dateFin);
	}
	
	/**
	 * Récupère le jeux ayant la meilleur moyenne de note.
	 * Si plusieurs jeux ont la même moyenne, on récupère le jeu le plus récent.
	 * @return
	 */
	@GetMapping("/jeux/top")
	public Jeu recupererJeuxAvecMeilleurMoyenne() {
		return jeuService.recupererJeuAvecMeilleurMoyenne();
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(simpleDateFormat, true));
	}
}
