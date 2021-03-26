package fr.humanbooster.ar.avis.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import fr.humanbooster.ar.avis.business.Classification;
import fr.humanbooster.ar.avis.business.Editeur;
import fr.humanbooster.ar.avis.business.Genre;
import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.ModeleEconomique;
import fr.humanbooster.ar.avis.business.Plateforme;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class JeuServiceImplTest {
	
	@Autowired
	private JeuService jeuService;
	@Autowired
	private ModeleEconomiqueService modeleEconomiqueService;
	@Autowired
	private ClassificationService classificationService;
	@Autowired
	private GenreService genreService;
	@Autowired
	private EditeurService editeurService;
	@Autowired
	private PlateformeService plateformeService;
	private static Long idJeu;
	
	@Test
	@Order(1)
	public void testerAjouterJeu() {
		String nom = "Test";
		String description = "description";
		Date date = new Date();
		ModeleEconomique modeleEconomique = modeleEconomiqueService.ajouterModeleEconomique("un Nom");
		Classification classification = classificationService.ajouterClassification("un Nom");
		Genre genre = genreService.ajouterGenre("un bnom");
		Editeur editeur = editeurService.ajouterEditeur("un niom");
		Plateforme plateforme = plateformeService.ajouterPlateforme("un onlm");
		List<Plateforme> plateformes = new ArrayList<>();
		plateformes.add(plateforme);
		Jeu jeu = jeuService.ajouterJeu(nom, description, date, modeleEconomique, classification, genre, editeur, plateformes);
		assertNotNull(jeu);
		assertNotNull(jeu.getNom());
		assertEquals(jeu.getNom(), nom);
		assertNotNull(jeu.getDescription());
		assertEquals(jeu.getDescription(), description);
		assertNotNull(jeu.getDateSortie());
		assertEquals(jeu.getDateSortie(), date);
		assertNotNull(jeu.getModeleEconomique());
		assertNotNull(jeu.getClassification());
		assertNotNull(jeu.getGenre());
		assertNotNull(jeu.getEditeur());
		assertNotNull(jeu.getPlateformes());
		assertFalse(jeu.getPlateformes().isEmpty());
		idJeu = jeu.getId();
	}
	
	@Test
	@Order(2)
	public void testerRecupererJeux() {
		List<Jeu> jeux = jeuService.recupererJeux();
		assertNotNull(jeux);
		assertFalse(jeux.isEmpty());
	}
	
	@Test
	@Order(3)
	public void testerRecupererJeu() {
		Jeu jeu = jeuService.recupererJeu(idJeu);
		assertNotNull(jeu);
	}
	
	@Test
	@Order(4)
	public void testerSupprimerJeu() {
		jeuService.supprimerJeu(idJeu);
		assertNull(jeuService.recupererJeu(idJeu));
	}

}
