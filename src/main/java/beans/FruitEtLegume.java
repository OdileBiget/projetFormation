package beans;

import javax.persistence.*;

@Entity
@Table(name = "fruitslegumes")
public class FruitEtLegume {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;
	
	@Column(name = "nom")
	private String nom;
	
	@Column(name = "mois1")
	private String moisDebutConso;
	
	@Column(name = "mois2")
	private String moisFinConso;

	public FruitEtLegume() {
		super();
	}

	public FruitEtLegume(String nom, String moisDebutConso, String moisFinConso) {
		super();
		this.id = id;
		this.nom = nom;
		this.moisDebutConso = moisDebutConso;
		this.moisFinConso = moisFinConso;
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

	public String getMoisDebutConso() {
		return moisDebutConso;
	}

	public void setMoisDebutConso(String moisDebutConso) {
		this.moisDebutConso = moisDebutConso;
	}

	public String getMoisFinConso() {
		return moisFinConso;
	}

	public void setMoisFinConso(String moisFinConso) {
		this.moisFinConso = moisFinConso;
	}
	
	
	

}
