package fr.humanbooster.ar.avis.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.ar.avis.business.ModeleEconomique;

public interface ModeleEconomiqueDao extends JpaRepository<ModeleEconomique, Long> {

}
