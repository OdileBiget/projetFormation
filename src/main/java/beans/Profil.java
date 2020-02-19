package beans;

import javax.persistence.*;

@Entity
@Table(name = "PROFIL")

public class Profil {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;
	@Column(name = "nom")
	private String nom;
	@Column(name = "prenom")
	private String prenom;
	@Column(name="telephone")
	private String numeroTel;
	@Column(name = "mail")
	private String mail;
	@Column (name = "password")
	private String password;
	
	//Constructeurs
	public Profil() {
		super();
	}
	public Profil(String nom, String prenom, String numeroTel, String mail, String password) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.numeroTel = numeroTel;
		this.mail = mail;
		this.password = password;
	}
	//Getters et setters
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
	public String getPrenom() {
		return prenom;
	}
	public String getNumeroTel() {
		return numeroTel;
	}
	public void setNumeroTel(String numeroTel) {
		this.numeroTel = numeroTel;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//Methodes
	//ToString
	@Override
	public String toString() {
		return "Profil [nom=" + nom + ", prenom=" + prenom + ", mail=" + mail + ", password=" + password + "]";
	}
	

}
