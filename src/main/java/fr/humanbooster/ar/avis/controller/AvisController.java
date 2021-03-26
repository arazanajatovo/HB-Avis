package fr.humanbooster.ar.avis.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.humanbooster.ar.avis.business.Avis;
import fr.humanbooster.ar.avis.business.Classification;
import fr.humanbooster.ar.avis.business.Editeur;
import fr.humanbooster.ar.avis.business.Genre;
import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.Joueur;
import fr.humanbooster.ar.avis.business.ModeleEconomique;
import fr.humanbooster.ar.avis.business.Plateforme;
import fr.humanbooster.ar.avis.service.AvisService;
import fr.humanbooster.ar.avis.service.ClassificationService;
import fr.humanbooster.ar.avis.service.EditeurService;
import fr.humanbooster.ar.avis.service.GenreService;
import fr.humanbooster.ar.avis.service.JeuService;
import fr.humanbooster.ar.avis.service.JoueurService;
import fr.humanbooster.ar.avis.service.ModeleEconomiqueService;
import fr.humanbooster.ar.avis.service.PlateformeService;

@Controller
public class AvisController {

	private ClassificationService classificationService;
	private EditeurService editeurService;
	private GenreService genreService;
	private JeuService jeuService;
	private ModeleEconomiqueService modeleEconomiqueService;
	private PlateformeService plateformeService;
	private JoueurService joueurService;
	private AvisService avisService;
	
	private HttpSession httpSession;

	public AvisController(ClassificationService classificationService, EditeurService editeurService,
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
		this.httpSession = httpSession;
	}

//	@RequestMapping(value = { "/index", "/" })
//	public ModelAndView accueil(@RequestParam(name = "sort", required=false) String sort) {
//	    ModelAndView mav = new ModelAndView("index");
//	    sort = sort == null ? "nom" : sort;
//	    mav.addObject("jeux", jeuService.recupererJeux(Sort.by(sort)));
//	    return mav;
//	}

	@RequestMapping(value = { "/index", "/" })
	public ModelAndView accueil(
			@PageableDefault(size = 10, sort = "nom", direction = Sort.Direction.ASC) Pageable pageable,
			@RequestParam(name = "genre", required = false, defaultValue = "0") Long genre) {
		ModelAndView mav = new ModelAndView("index");
		Page<Jeu> jeux;
		mav.addObject("genres", genreService.recupererGenres());
		if (genre.equals(0L)) {
			jeux = jeuService.recupererJeux(pageable);
		} else {
			jeux = jeuService.recupererJeux(genre, pageable);
		}
		mav.addObject("idGenre", genre);
		mav.addObject("pageJeux", jeux);
		mav.addObject("jeux", jeux.getContent());
		mav.addObject("size", jeux.getSize());
		mav.addObject("sort", jeux.getSort().iterator().next().getProperty());
		mav.addObject("page", jeux.getNumber());
		mav.addObject("nbPages", jeux.getTotalPages());
		return mav;
	}
	
	@GetMapping(value = "/listeAvis")
	public ModelAndView listeAvisGet(@PageableDefault(size = 10, sort = "dateEnvoi", direction = Sort.Direction.DESC) Pageable pageable,
			@RequestParam(defaultValue = "0", name = "ID_JEU") Long idJeu) {
		ModelAndView mav = new ModelAndView("listeAvis");
		Page<Avis> pageAvis;
		Jeu jeu = null;
		if (idJeu.equals(0L)) {
			pageAvis = avisService.recupererPageAvis(pageable);
		} else {
			pageAvis = avisService.recupererPageAvisParJeuId(idJeu, pageable);
			jeu = jeuService.recupererJeu(idJeu);
		}
		mav.addObject("jeu", jeu);
		mav.addObject("pageAvis", pageAvis);
		mav.addObject("listeAvis", pageAvis.getContent());
		mav.addObject("size", pageAvis.getSize());
		mav.addObject("sort", pageAvis.getSort().iterator().next().getProperty() + "," + pageAvis.getSort().iterator().next().getDirection());
		mav.addObject("page", pageAvis.getNumber());
		mav.addObject("nbPages", pageAvis.getTotalPages());
		return mav;
	}

	@GetMapping(value = "/editeurs")
	public ModelAndView editeursGet() {
		ModelAndView mav = new ModelAndView("editeurs");
		mav.addObject("editeurs", editeurService.recupererEditeurs());
		return mav;
	}

	@GetMapping(value = "/avis")
	public ModelAndView avisGet(@RequestParam(defaultValue = "0", name = "ID_AVIS") Long idAvis) {
		ModelAndView mav = new ModelAndView("avis");
		mav.addObject("jeux", jeuService.recupererJeux());
		Avis avis;
		if (idAvis.equals(0L)) {
			avis = new Avis();
			avis.setId(idAvis);
			avis.setJoueur((Joueur) httpSession.getAttribute("joueur"));
		} else {
			avis = avisService.recupererAvis(idAvis);
		}
		mav.addObject("avis", avis);
		return mav;
	}

	@PostMapping("/avis")
	public ModelAndView avisPost(@Valid @ModelAttribute Avis avis, BindingResult result) {
		if (result.hasErrors()) {
			ModelAndView mav = avisGet(avis.getId());
			mav.addObject("avis", avis);
			return mav;
		} else {
			if (avis.getId().equals(0L)) {
				avis.setId(null);
			}
			avis.setDateEnvoi(new Date());
			avisService.ajouterAvis(avis);
			ModelAndView mav = new ModelAndView("redirect:index");
			return mav;
		}
	}

	@GetMapping(value = "/jeu")
	public ModelAndView jeuGet(@RequestParam(defaultValue = "0", name = "ID_JEU") Long idJeu) {
		ModelAndView mav = new ModelAndView("jeu");
		if (idJeu.equals(0L)) {
			Jeu jeu = new Jeu();
			jeu.setId(idJeu);
			mav.addObject("jeu", jeu);
		} else {
			mav.addObject("jeu", jeuService.recupererJeu(idJeu));
		}
		mav.addObject("jeux", jeuService.recupererJeux());
		mav.addObject("editeurs", editeurService.recupererEditeurs());
		mav.addObject("genres", genreService.recupererGenres());
		mav.addObject("classifications", classificationService.recupererClassifications());
		mav.addObject("plateformes", plateformeService.recupererPlateformes());
		mav.addObject("modeleEconomiques", modeleEconomiqueService.recupererModeleEconomiques());
		return mav;
	}

	@PostMapping("/jeu")
	public ModelAndView jeuPost(@Valid @ModelAttribute Jeu jeu, BindingResult result) {
		if (result.hasErrors()) {
			ModelAndView mav = jeuGet(jeu.getId());
			mav.addObject("jeu", jeu);
			return mav;
		} else {
			if (jeu.getId().equals(0L)) {
				jeu.setId(null);
			}
			jeuService.ajouterJeu(jeu);
			ModelAndView mav = new ModelAndView("redirect:index");
			return mav;
		}
	}

	@PostMapping(value = "/supprimer")
	public ModelAndView supprimerGet(@RequestParam("ID_JEU") Long idJeu) {
//		for (Avis avis : avisService.recupererDesAvisParJeuId(idJeu)) {
//			avisService.supprimerAvis(avis);
//		}
		jeuService.supprimerJeu(idJeu);
		ModelAndView mav = new ModelAndView("redirect:index");
		return mav;
	}
	
	@GetMapping(value = "/inscription")
	public ModelAndView inscriptionGet() {
		ModelAndView mav = new ModelAndView("inscription");
		mav.addObject("joueur", new Joueur());
		return mav;
	}

	@PostMapping("/inscription")
	public ModelAndView inscriptionPost(@Valid @ModelAttribute Joueur joueur, BindingResult result) {
		if (result.hasErrors()) {
			ModelAndView mav = new ModelAndView("inscription");
			mav.addObject("joueur", joueur);
			return mav;
		} else {
			
			joueurService.ajouterJoueur(joueur.getPseudo(), joueur.getMotDePasse(), new Date(), false);
			ModelAndView mav = new ModelAndView("redirect:index");
			return mav;
		}
	}

	@GetMapping(value = "/connexion")
	public ModelAndView connexionGet() {
		ModelAndView mav = new ModelAndView("connexion");
		return mav;
	}

	@PostMapping("/connexion")
//	public ModelAndView connexionPost(@RequestParam("PSEUDO") String pseudo,
//			@RequestParam("MOT_DE_PASSE") String motDePasse) {
	public ModelAndView connexionPost(@RequestParam Map<String, String> map) {
		String pseudo = map.get("PSEUDO");
		String motDePasse = map.get("MOT_DE_PASSE");
		Joueur joueur = joueurService.recupererJoueur(pseudo, motDePasse);
		if (joueur == null) {
			return new ModelAndView("connexion");
		} else {
			httpSession.setAttribute("joueur", joueur);
			return new ModelAndView("redirect:index");
		}
	}

	@GetMapping("/deconnexion")
	public ModelAndView deconnexion() {
		httpSession.invalidate();
		return new ModelAndView("redirect:index");
	}
	
	@GetMapping("/mapJoueurs")
	public void mapGet() {
		Map<Long, Joueur> map = new HashMap<>();
		List<Joueur> joueurs = joueurService.recupererJoueurs();
		for (Joueur joueur : joueurs) {
			map.put(joueur.getId(), joueur);
		}
		for (Long cle : map.keySet()) {
			System.out.println("Clé " + cle + " : " + map.get(cle));
		}
	}

	@PostConstruct
	public void init() {
//		ajouterDonneInitiale();
//		afficherDonnee();
	}

	public void ajouterDonneInitiale() {
		if (classificationService.recupererClassifications().isEmpty()) {
			classificationService.ajouterClassification("+12");
			classificationService.ajouterClassification("+16");
			classificationService.ajouterClassification("+18");
		}
		if (editeurService.recupererEditeurs().isEmpty()) {
			editeurService.ajouterEditeur("Riot Games");
			editeurService.ajouterEditeur("Rockstar Games");
			editeurService.ajouterEditeur("Blizzard");
			editeurService.ajouterEditeur("Microsoft");
			editeurService.ajouterEditeur("Valve");
		}
		if (genreService.recupererGenres().isEmpty()) {
			genreService.ajouterGenre("First Person Shooter");
			genreService.ajouterGenre("Real Time Strategy");
			genreService.ajouterGenre("Multiplayer Online Battle Arena");
		}
		if (modeleEconomiqueService.recupererModeleEconomiques().isEmpty()) {
			modeleEconomiqueService.ajouterModeleEconomique("Vente");
			modeleEconomiqueService.ajouterModeleEconomique("Abonnement");
			modeleEconomiqueService.ajouterModeleEconomique("Free to play");
		}
		if (plateformeService.recupererPlateformes().isEmpty()) {
			plateformeService.ajouterPlateforme("PS5");
			plateformeService.ajouterPlateforme("Nintendo Switch");
			plateformeService.ajouterPlateforme("PC");
		}
		if (jeuService.recupererJeux().isEmpty()) {
			ModeleEconomique modeleEconomique = modeleEconomiqueService.recupererModeleEconomiques().get(0);
			Classification classification = classificationService.recupererClassifications().get(0);
			Genre genre = genreService.recupererGenres().get(0);
			Editeur editeur = editeurService.recupererEditeurs().get(3);
			List<Plateforme> plateformes = plateformeService.recupererPlateformes();
			jeuService.ajouterJeu("Halo", "Master chief", new Date(), modeleEconomique, classification, genre, editeur,
					plateformes);
			modeleEconomique = modeleEconomiqueService.recupererModeleEconomiques().get(0);
			classification = classificationService.recupererClassifications().get(1);
			genre = genreService.recupererGenres().get(1);
			editeur = editeurService.recupererEditeurs().get(2);
			plateformes = new ArrayList<>();
			plateformes.add(plateformeService.recupererPlateformes().get(2));
			jeuService.ajouterJeu("Warcraft 3", "wc3", new Date(), modeleEconomique, classification, genre, editeur,
					plateformes);
			modeleEconomique = modeleEconomiqueService.recupererModeleEconomiques().get(0);
			classification = classificationService.recupererClassifications().get(2);
			genre = genreService.recupererGenres().get(0);
			editeur = editeurService.recupererEditeurs().get(4);
			plateformes = new ArrayList<>();
			plateformes.add(plateformeService.recupererPlateformes().get(2));
			jeuService.ajouterJeu("Counter-Strike", "CS", new Date(), modeleEconomique, classification, genre, editeur,
					plateformes);
		}
	}

	public void afficherDonnee() {
//		for (Jeu jeu : jeuService.recupererJeux()) {
//			System.out.println(jeu);
//		}
//		for (Editeur editeur : editeurService.recupererEditeurs("art")) {
//			System.out.println(editeur.getNom() + " :");
//			for (Jeu jeu : jeuService.recupererJeux(editeur)) {
//				System.out.println(jeu.getNom());
//			}
//		}
//		for (Genre genre : genreService.recupererGenres("FPS")) {
//			System.out.println(genre.getNom() + " :");
//			for (Jeu jeu : jeuService.recupererJeux(genre)) {
//				System.out.println(jeu.getNom());
//			}
//		}
//		System.out.println("FPS :");
//		for (Jeu jeu : jeuService.recupererJeuxParNomDeGenre("fps")) {
//			System.out.println(jeu.getNom());
//		}

//		Set<Editeur> editeurs = new HashSet<>();
//		Genre genre = genreService.recupererGenre("rpg");
//		for (Jeu jeu : jeuService.recupererJeux(genre)) {
//			editeurs.add(jeu.getEditeur());
//		}
//		for (Editeur editeur : editeurs) {
//			System.out.println(editeur.getNom());
//		}
//		System.out.println();
//		
//		editeurs = new HashSet<>();
//		for (Jeu jeu : jeuService.recupererJeuxParNomDeGenre("rpg")) {
//			editeurs.add(jeu.getEditeur());
//		}
//		for (Editeur editeur : editeurs) {
//			System.out.println(editeur.getNom());
//		}
//		System.out.println();
//		
//		for (Editeur editeur : editeurService.recupererEditeursParGenreDeJeu("rpg")) {
//			System.out.println(editeur.getNom());
//		}

		Calendar c = Calendar.getInstance();
		c.set(Calendar.YEAR, 2011);
		Date dateDebut = c.getTime();
		c.set(Calendar.YEAR, 2020);
		Date dateFin = c.getTime();
		for (Jeu jeu : jeuService.recupererJeux(dateDebut, dateFin)) {
			System.out.println(jeu.getNom() + " " + jeu.getDateSortie());
		}
	}
}