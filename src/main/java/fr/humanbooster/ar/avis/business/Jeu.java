package fr.humanbooster.ar.avis.business;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Jeu {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank(message = "Veuillez saisir le nom")
	private String nom;
	@NotBlank(message = "Veuillez saisir une description")
	@Lob
	private String description;
	@NotNull(message = "Veuillez saisir une date")
	@Past(message = "La date doit être antérieur à la date actuelle")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateSortie;
	@NotNull(message = "Veuillez choisir un modele economique")
	@ManyToOne
	private ModeleEconomique modeleEconomique;
	@NotNull(message = "Veuillez choisir une classification")
	@ManyToOne
	private Classification classification;
	@NotNull(message = "Veuillez choisir un genre")
	@ManyToOne
	private Genre genre;
	@NotNull(message = "Veuillez choisir un éditeur")
	@ManyToOne
	private Editeur editeur;
	@JsonIgnore
	@NotEmpty(message = "Veuillez choisir au moins une plateforme")
	@ManyToMany
	private List<Plateforme> plateformes;
	@JsonIgnore
	@OneToMany(mappedBy = "jeu", cascade = CascadeType.REMOVE)
	private List<Avis> avis;
	@ManyToOne
	private Fichier fichier;

	public Jeu() {
		super();
	}

	public Jeu(String nom, String description, Date dateSortie, ModeleEconomique modeleEconomique,
			Classification classification, Genre genre, Editeur editeur, List<Plateforme> plateformes) {
		super();
		this.nom = nom;
		this.description = description;
		this.dateSortie = dateSortie;
		this.modeleEconomique = modeleEconomique;
		this.classification = classification;
		this.genre = genre;
		this.editeur = editeur;
		this.plateformes = plateformes;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateSortie() {
		return dateSortie;
	}

	public void setDateSortie(Date dateSortie) {
		this.dateSortie = dateSortie;
	}

	public ModeleEconomique getModeleEconomique() {
		return modeleEconomique;
	}

	public void setModeleEconomique(ModeleEconomique modeleEconomique) {
		this.modeleEconomique = modeleEconomique;
	}

	public Classification getClassification() {
		return classification;
	}

	public void setClassification(Classification classification) {
		this.classification = classification;
	}

	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}

	public Editeur getEditeur() {
		return editeur;
	}

	public void setEditeur(Editeur editeur) {
		this.editeur = editeur;
	}

	public List<Plateforme> getPlateformes() {
		return plateformes;
	}

	public void setPlateformes(List<Plateforme> plateformes) {
		this.plateformes = plateformes;
	}

	public List<Avis> getAvis() {
		return avis;
	}

	public void setAvis(List<Avis> avis) {
		this.avis = avis;
	}

	public Fichier getFichier() {
		return fichier;
	}

	public void setFichier(Fichier fichier) {
		this.fichier = fichier;
	}
	
//	public Double getMoyenne() {
//		Double moyenne = 0d;
//		for (Avis a : avis) {
//		moyenne += a.getNote();
//		}
//		if (avis.isEmpty()) {
//			return null;
//		} else {
//			moyenne /= avis.size();
//			return (double) Math.round(moyenne * 100) / 100;
//		}
//	}
	
	public Double getMoyenne() {
		Double moyenne = null;
		if (!avis.isEmpty()) {
			moyenne = avis.stream().mapToDouble(avis -> avis.getNote()).average().orElse(0);
			moyenne = (double) Math.round(moyenne * 100) / 100;
		}
		return moyenne;
	}

	@Override
	public String toString() {
		return "Jeu [id=" + id + ", nom=" + nom + ", description=" + description + ", dateSortie=" + dateSortie
				+ ", modeleEconomique=" + modeleEconomique + ", classification=" + classification + ", genre=" + genre
				+ ", editeur=" + editeur + ", fichier=" + fichier + "]";
	}

}