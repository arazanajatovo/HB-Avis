package fr.humanbooster.ar.avis.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import fr.humanbooster.ar.avis.business.Classification;
import fr.humanbooster.ar.avis.dao.ClassificationDao;
import fr.humanbooster.ar.avis.service.ClassificationService;

@Service
public class ClassificationServiceImpl implements ClassificationService {

	private ClassificationDao classificationDao;
	
	public ClassificationServiceImpl(ClassificationDao classificationDao) {
		super();
		this.classificationDao = classificationDao;
	}
	
	@Override
	public Classification ajouterClassification(String nom) {
		return classificationDao.save(new Classification(nom));
	}

	@Override
	public List<Classification> recupererClassifications() {
		return classificationDao.findAll();
	}

	@Override
	public Optional<Classification> recupererClassification(Long id) {
		return classificationDao.findById(id);
	}
}