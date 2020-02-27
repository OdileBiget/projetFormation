package beans;

import javax.persistence.*;


import java.io.Serializable;


@Entity
@Table(name = "photoJardin")

public class photoJardin implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private int id;

	@Column(name = "nom", unique = true, nullable = false)
	private String nom;

	@Column(name = "DATA", unique = false, nullable = false)
	private String image;

	public photoJardin() {
		super();
	}

	public photoJardin(int id, String nom, String image) {
		super();
		this.id = id;
		this.nom = nom;
		this.image = image;
	}

	public photoJardin(String nom, String image) {
		super();
		this.nom = nom;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

	

}
