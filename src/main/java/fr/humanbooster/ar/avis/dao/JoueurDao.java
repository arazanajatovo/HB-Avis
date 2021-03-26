package fr.humanbooster.ar.avis.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.humanbooster.ar.avis.business.Joueur;

public interface JoueurDao extends JpaRepository<Joueur, Long> {

	Joueur findFirstByPseudoLikeAndMotDePasseLike(String pseudo, String motDePasse);
	
	@Query("select joueur from Avis group by joueur_id order by count(joueur_id) desc")
	List<Joueur> findFirstByCountAvis();
	
}
