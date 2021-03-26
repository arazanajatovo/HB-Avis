package fr.humanbooster.ar.avis.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.ar.avis.business.Classification;

public interface ClassificationDao extends JpaRepository<Classification, Long> {

}
