package fr.humanbooster.ar.avis.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.ar.avis.business.Plateforme;

public interface PlateformeDao extends JpaRepository<Plateforme, Long> {

}
