package fr.humanbooster.ar.avis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.service.JeuService;
import fr.humanbooster.ar.avis.view.JeuPDFView;

@Controller
public class PDFController {

	@Autowired
	private JeuService jeuService;
	
	@GetMapping("/jeuPDF/{idJeu}/{nom}")
	public ModelAndView jeuPDF(@PathVariable Long idJeu) {
		Jeu jeu = jeuService.recupererJeu(idJeu);
		return new ModelAndView(new JeuPDFView(), "jeu", jeu);
	}
}
