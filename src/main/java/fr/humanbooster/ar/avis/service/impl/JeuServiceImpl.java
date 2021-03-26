package fr.humanbooster.ar.avis.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import fr.humanbooster.ar.avis.business.Classification;
import fr.humanbooster.ar.avis.business.Editeur;
import fr.humanbooster.ar.avis.business.Genre;
import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.ModeleEconomique;
import fr.humanbooster.ar.avis.business.Plateforme;
import fr.humanbooster.ar.avis.dao.JeuDao;
import fr.humanbooster.ar.avis.service.JeuService;

@Service
public class JeuServiceImpl implements JeuService {

	private JeuDao jeuDao;

	public JeuServiceImpl(JeuDao jeuDao) {
		super();
		this.jeuDao = jeuDao;
	}

	@Override
	public Jeu ajouterJeu(String nom, String description, Date dateSortie, ModeleEconomique modeleEconomique,
			Classification classification, Genre genre, Editeur editeur, List<Plateforme> plateformes) {
		return jeuDao.save(
				new Jeu(nom, description, dateSortie, modeleEconomique, classification, genre, editeur, plateformes));
	}

	@Override
	public List<Jeu> recupererJeux() {
		return jeuDao.findAll();
	}

	@Override
	public List<Jeu> recupererJeux(Sort sort) {
		return jeuDao.findAll(sort);
	}

	@Override
	public Page<Jeu> recupererJeux(Pageable pageable) {
		return jeuDao.findAll(pageable);
	}

	@Override
	public Page<Jeu> recupererJeux(String nom, Pageable pageable) {
		return jeuDao.findAllByGenreNomLike(nom, pageable);
	}

	@Override
	public Page<Jeu> recupererJeux(Long genreId, Pageable pageable) {
		return jeuDao.findAllByGenreId(genreId, pageable);
	}

	@Override
	public List<Jeu> recupererJeux(Editeur editeur) {
		return jeuDao.findByEditeur(editeur);
	}

	@Override
	public List<Jeu> recupererJeux(Genre genre) {
		return jeuDao.findByGenre(genre);
	}

	@Override
	public List<Jeu> recupererJeuxParNomDeGenre(String nom) {
		return jeuDao.findByGenreNomLike(nom + "%");
	}

	@Override
	public List<Jeu> recupererJeux(Date dateDebut, Date dateFin) {
		return jeuDao.findByDateSortieBetween(dateDebut, dateFin);
	}

	@Override
	public Jeu recupererJeu(Long id) {
		return jeuDao.findById(id).orElse(null);
	}

	@Override
	public Jeu ajouterJeu(Jeu jeu) {
		return jeuDao.save(jeu);
	}
	
	@Override
	public void supprimerJeu(Long id) {
		jeuDao.deleteById(id);
	}

	@Override
	public void modifierFichier(Long idJeu, Long idFichier) {
		jeuDao.updateFichier(idJeu, idFichier);
	}

	@Override
	public void modifierNom(Long idJeu, String nomJeu) {
		jeuDao.updateNom(idJeu, nomJeu);
		
	}

	@Override
	public Jeu recupererJeuAvecMeilleurMoyenne() {
		List<Jeu> jeux = jeuDao.findFirstGroupByJeuOrderByMoyenneNoteAndDateSortie();
		return !jeux.isEmpty() ? jeux.get(0) : null;
	}
}