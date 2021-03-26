package fr.humanbooster.ar.avis.business;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Fichier {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nom;
    private String uriDL;
    private String uriImg;
    private String type;
    private long size;
    
	public Fichier() {
		super();
	}

	public Fichier(String nom, String uriDL, String uriImg, String type, long size) {
		super();
		this.nom = nom;
		this.uriDL = uriDL;
		this.uriImg = uriImg;
		this.type = type;
		this.size = size;
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

	public String getUriDL() {
		return uriDL;
	}

	public void setUriDL(String uriDL) {
		this.uriDL = uriDL;
	}

	public String getUriImg() {
		return uriImg;
	}

	public void setUriImg(String uriImg) {
		this.uriImg = uriImg;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return "Fichier [id=" + id + ", nom=" + nom + ", uriDL=" + uriDL + ", uriImg=" + uriImg + ", type=" + type
				+ ", size=" + size + "]";
	}

	
	
}
