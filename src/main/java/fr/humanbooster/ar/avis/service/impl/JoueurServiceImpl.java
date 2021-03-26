package fr.humanbooster.ar.avis.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import fr.humanbooster.ar.avis.business.Joueur;
import fr.humanbooster.ar.avis.dao.JoueurDao;
import fr.humanbooster.ar.avis.service.JoueurService;

@Service
public class JoueurServiceImpl implements JoueurService {

	private JoueurDao joueurDao;
	
	public JoueurServiceImpl(JoueurDao joueurDao) {
		super();
		this.joueurDao = joueurDao;
	}
	
	@Override
	public Joueur ajouterJoueur(String pseudo, String motDePasse, Date dateInscription, boolean estAdministrateur) {
		return joueurDao.save(new Joueur(pseudo, motDePasse, dateInscription, estAdministrateur));
	}

	@Override
	public List<Joueur> recupererJoueurs() {
		return joueurDao.findAll();
	}

	@Override
	public Joueur recupererJoueur(String pseudo, String motDePasse) {
		return joueurDao.findFirstByPseudoLikeAndMotDePasseLike(pseudo, motDePasse);
	}

	@Override
	public Joueur recupererJoueur(Long id) {
		return joueurDao.findById(id).orElse(null);
	}

	@Override
	public Joueur recupererJoueurTopAvis() {
		List<Joueur> joueurs = joueurDao.findFirstByCountAvis();
		if (!joueurs.isEmpty()) {
			return joueurs.get(0);
		}
		return null;
	}
}