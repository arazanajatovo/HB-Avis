package fr.humanbooster.ar.avis.business;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
public class Avis {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Date dateEnvoi;
	@Range(min=0, max=20, message="La note doit être comprise entre 0 et 20")
	private Float note;
	@NotBlank(message = "Veuillez saisir une description")
	@Size(min = 3, message = "Votre description doit faire au moins 3 caractères")
	@Lob
	private String description;
	@NotNull(message = "Veuillez renseigner un jeu")
	@ManyToOne
	private Jeu jeu;
	@NotNull(message = "Vous devez être connecté")
	@ManyToOne
	private Joueur joueur;
	
	public Avis() {
		super();
	}

	public Avis(Date dateEnvoi, Float note, String description, Jeu jeu, Joueur joueur) {
		super();
		this.dateEnvoi = dateEnvoi;
		this.note = note;
		this.description = description;
		this.jeu = jeu;
		this.joueur = joueur;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getDateEnvoi() {
		return dateEnvoi;
	}

	public void setDateEnvoi(Date dateEnvoi) {
		this.dateEnvoi = dateEnvoi;
	}

	public Float getNote() {
		return note;
	}

	public void setNote(Float note) {
		this.note = note;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Jeu getJeu() {
		return jeu;
	}

	public void setJeu(Jeu jeu) {
		this.jeu = jeu;
	}

	public Joueur getJoueur() {
		return joueur;
	}

	public void setJoueur(Joueur joueur) {
		this.joueur = joueur;
	}

	@Override
	public String toString() {
		return "Avis [id=" + id + ", dateEnvoi=" + dateEnvoi + ", note=" + note + ", description=" + description
				+ ", jeu=" + jeu + ", joueur=" + joueur + "]";
	}
}
