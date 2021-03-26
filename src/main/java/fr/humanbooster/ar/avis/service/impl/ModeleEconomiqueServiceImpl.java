package fr.humanbooster.ar.avis.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import fr.humanbooster.ar.avis.business.ModeleEconomique;
import fr.humanbooster.ar.avis.dao.ModeleEconomiqueDao;
import fr.humanbooster.ar.avis.service.ModeleEconomiqueService;

@Service
public class ModeleEconomiqueServiceImpl implements ModeleEconomiqueService {

	private ModeleEconomiqueDao modeleEconomiqueDao;
	
	public ModeleEconomiqueServiceImpl(ModeleEconomiqueDao modeleEconomiqueDao) {
		super();
		this.modeleEconomiqueDao = modeleEconomiqueDao;
	}
	
	@Override
	public ModeleEconomique ajouterModeleEconomique(String nom) {
		return modeleEconomiqueDao.save(new ModeleEconomique(nom));
	}

	@Override
	public List<ModeleEconomique> recupererModeleEconomiques() {
		return modeleEconomiqueDao.findAll();
	}

	@Override
	public Optional<ModeleEconomique> recupererModeleEconomique(Long id) {
		return modeleEconomiqueDao.findById(id);
	}
}