package fr.humanbooster.ar.avis.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import fr.humanbooster.ar.avis.business.Avis;
import fr.humanbooster.ar.avis.business.Joueur;

public interface AvisDao extends JpaRepository<Avis, Long> {
	Avis findFirstById(Long id);
	Page<Avis> findAllByJeuId(Long id, Pageable pageable);
	List<Avis> findAllByJeuId(Long id);
	Page<Avis> findAll(Pageable pageable);
	Avis findFirstByJoueurOrderByDateEnvoiDesc(Joueur joueur);
}
