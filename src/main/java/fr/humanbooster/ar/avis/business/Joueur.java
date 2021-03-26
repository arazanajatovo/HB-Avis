package fr.humanbooster.ar.avis.business;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Joueur {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank(message = "Veuillez entrer un pseudo")
	@Size(min = 3, message = "Votre pseudo doit faire au moins 3 caractères")
	private String pseudo;
	@NotBlank(message = "Veuillez entrer un mot de passe")
	@Size(min = 3, message = "Votre mot de passe doit faire au moins 3 caractères")
	private String motDePasse;
	private Date dateInscription;
	private boolean estAdministrateur;
	@JsonIgnore
	@OneToMany(mappedBy = "joueur")
	private List<Avis> avis;
	
	public Joueur() {
		super();
	}
	public Joueur(String pseudo, String motDePasse, Date dateInscription, boolean estAdministrateur) {
		super();
		this.pseudo = pseudo;
		this.motDePasse = motDePasse;
		this.dateInscription = dateInscription;
		this.estAdministrateur = estAdministrateur;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}

	public Date getDateInscription() {
		return dateInscription;
	}

	public void setDateInscription(Date dateInscription) {
		this.dateInscription = dateInscription;
	}

	public boolean isEstAdministrateur() {
		return estAdministrateur;
	}

	public void setEstAdministrateur(boolean estAdministrateur) {
		this.estAdministrateur = estAdministrateur;
	}

	public List<Avis> getAvis() {
		return avis;
	}

	public void setAvis(List<Avis> avis) {
		this.avis = avis;
	}

	@Override
	public String toString() {
		return "Joueur [id=" + id + ", pseudo=" + pseudo + ", motDePasse=" + motDePasse + ", dateInscription="
				+ dateInscription + ", estAdministrateur=" + estAdministrateur + "]";
	}

}
