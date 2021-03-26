package fr.humanbooster.ar.avis.dao;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.humanbooster.ar.avis.business.Editeur;
import fr.humanbooster.ar.avis.business.Genre;
import fr.humanbooster.ar.avis.business.Jeu;

public interface JeuDao extends JpaRepository<Jeu, Long> {
	
	@Transactional
	@Modifying
	@Query("update Jeu set fichier_id = :idFichier where id = :idJeu")
	void updateFichier(@Param("idJeu") Long idJeu, @Param("idFichier") Long idFichier);
	
	@Transactional
	@Modifying
	@Query("update Jeu set nom = :nomJeu where id = :idJeu")
	void updateNom(@Param("idJeu") Long idJeu, @Param("nomJeu") String nomJeu);
	
	Jeu findFirstById(Long id);
	
	Page<Jeu> findAllByGenreNomLike(String nom, Pageable pageable);
	
	Page<Jeu> findAllByGenreId(Long idGenre, Pageable pageable);
	
    List<Jeu> findByEditeur(Editeur editeur);

    List<Jeu> findByEditeurAndGenre(Editeur editeur, Genre genre);

    List<Jeu> findByNomLike(String nom);
    
    List<Jeu> findByNomLikeAndDateSortieBetween(String nom, Date dateDebut, Date dateFin);

    List<Jeu> findByEditeurAndNomLikeAndDateSortieBetween(Editeur editeur, String nom, Date dateDebut, Date dateFin);
    
    List<Jeu> findByGenre(Genre genre);
    
    List<Jeu> findByGenreNomLike(String nom);
    
    @Query("from Jeu where dateSortie between :dateDebut and :dateFin order by dateSortie")
    List<Jeu> findByDateSortieBetween(@Param("dateDebut") Date dateDebut, @Param("dateFin") Date dateFin);
    
    @Query("select a.jeu from Avis a group by a.jeu order by avg(a.note) desc, a.jeu.dateSortie desc")
    List<Jeu> findFirstGroupByJeuOrderByMoyenneNoteAndDateSortie();
}