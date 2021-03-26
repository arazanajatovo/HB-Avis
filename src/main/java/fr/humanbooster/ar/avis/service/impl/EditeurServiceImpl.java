package fr.humanbooster.ar.avis.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import fr.humanbooster.ar.avis.business.Editeur;
import fr.humanbooster.ar.avis.dao.EditeurDao;
import fr.humanbooster.ar.avis.service.EditeurService;

@Service
public class EditeurServiceImpl implements EditeurService {

	private EditeurDao editeurDao;
	
	public EditeurServiceImpl(EditeurDao editeurDao) {
		super();
		this.editeurDao = editeurDao;
	}
	
	@Override
	public Editeur ajouterEditeur(String nom) {
		return editeurDao.save(new Editeur(nom));
	}

	@Override
	public List<Editeur> recupererEditeurs() {
		return editeurDao.findAll();
	}

	@Override
	public Optional<Editeur> recupererEditeur(Long id) {
		return editeurDao.findById(id);
	}

	@Override
	public List<Editeur> recupererEditeurs(String nom) {
		return editeurDao.findByNomLike("%" + nom + "%");
	}

	@Override
	public List<Editeur> recupererEditeursParGenreDeJeu(String nom) {
		return editeurDao.findDistinctByJeuxGenreNomStartingWith(nom);
	}
}