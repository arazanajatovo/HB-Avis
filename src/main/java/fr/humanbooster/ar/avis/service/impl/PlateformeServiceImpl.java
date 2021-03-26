package fr.humanbooster.ar.avis.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import fr.humanbooster.ar.avis.business.Plateforme;
import fr.humanbooster.ar.avis.dao.PlateformeDao;
import fr.humanbooster.ar.avis.service.PlateformeService;

@Service
public class PlateformeServiceImpl implements PlateformeService {

	private PlateformeDao plateformeDao;
	
	public PlateformeServiceImpl(PlateformeDao plateformeDao) {
		super();
		this.plateformeDao = plateformeDao;
	}
	
	@Override
	public Plateforme ajouterPlateforme(String nom) {
		return plateformeDao.save(new Plateforme(nom));
	}

	@Override
	public List<Plateforme> recupererPlateformes() {
		return plateformeDao.findAll();
	}

	@Override
	public Optional<Plateforme> recupererPlateforme(Long id) {
		return plateformeDao.findById(id);
	}
}