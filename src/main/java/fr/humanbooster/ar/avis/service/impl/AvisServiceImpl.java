package fr.humanbooster.ar.avis.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import fr.humanbooster.ar.avis.business.Avis;
import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.Joueur;
import fr.humanbooster.ar.avis.dao.AvisDao;
import fr.humanbooster.ar.avis.service.AvisService;

@Service
public class AvisServiceImpl implements AvisService {

	private AvisDao avisDao;
	
	public AvisServiceImpl(AvisDao avisDao) {
		super();
		this.avisDao = avisDao;
	}
	
	@Override
	public Avis ajouterAvis(Date dateEnvoi, Float note, String description, Jeu jeu, Joueur joueur) {
		return avisDao.save(new Avis(dateEnvoi, note, description, jeu, joueur));
	}

	@Override
	public List<Avis> recupererDesAvis() {
		return avisDao.findAll();
	}

	@Override
	public Page<Avis> recupererPageAvisParJeuId(Long id, Pageable pageable) {
		return avisDao.findAllByJeuId(id, pageable);
	}

	@Override
	public Page<Avis> recupererPageAvis(Pageable pageable) {
		return avisDao.findAll(pageable);
	}

	@Override
	public Avis ajouterAvis(Avis avis) {
		return avisDao.save(avis);
	}

	@Override
	public Avis recupererAvis(Long id) {
		return avisDao.findById(id).orElse(null);
	}

	@Override
	public List<Avis> recupererDesAvisParJeuId(Long id) {
		return avisDao.findAllByJeuId(id);
	}

	@Override
	public void supprimerAvis(Avis avis) {
		avisDao.delete(avis);
	}

	@Override
	public Avis recupererDernierAvisParJoueur(Joueur joueur) {
		return avisDao.findFirstByJoueurOrderByDateEnvoiDesc(joueur);
	}
}