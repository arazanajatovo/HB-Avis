package fr.humanbooster.ar.avis.business;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Editeur {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nom;
	@JsonIgnore
	@OneToMany(mappedBy = "editeur"/*, fetch=FetchType.EAGER*/)
	// Le fetch EAGER permet dès que l'on récupere un editeur, Hibernate récupere immédiatement tous ses jeux
	private List<Jeu> jeux;
	
	public Editeur() {
		super();
	}
	
	public Editeur(String nom) {
		this();
		this.nom = nom;
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

	public List<Jeu> getJeux() {
		return jeux;
	}

	public void setJeux(List<Jeu> jeux) {
		this.jeux = jeux;
	}

	@Override
	public String toString() {
		return "Editeur [id=" + id + ", nom=" + nom + "]";
	}
	
}
