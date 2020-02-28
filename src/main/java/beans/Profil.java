package beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "PROFIL")

public class Profil {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;
	@Column(name = "nom")
	private String nom;
	@Column(name = "prenom")
	private String prenom;
	@Column(name = "telephone")
	private String numeroTel;
	@Column(name = "mail")
	private String mail;
	@Column(name = "password")
	private String password;
//	
//	private int id_jardin;
//	public int getId_jardin() {
//		return id_jardin;
//	}
//	public void setId_jardin(int id_jardin) {
//		this.id_jardin = id_jardin;
//	}

//	@ManyToMany(cascade = {CascadeType.ALL})
//	@JoinTable(
//			name = "Jardin_Utilisateurs",
//			joinColumns = {@JoinColumn(name="user_id")},
//			inverseJoinColumns = {@JoinColumn(name="jardin_id")}
//			)
//	private List<JardinProfil> listeJardinsPersos = new ArrayList<JardinProfil>();
//	@OneToOne(cascade = {CascadeType.ALL})
//	@JoinColumn(name = "id_jardin")
//	private JardinProfil jardin;

	@OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL}, orphanRemoval = true)
	private List<JardinProfil> jardin = new ArrayList<JardinProfil>();

	// Constructeurs
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

	// constructeur sans password pour quand déjà identifié
	public Profil(String nom, String prenom, String numeroTel, String mail) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.numeroTel = numeroTel;
		this.mail = mail;
	}

	public Profil(int id, String nom, String prenom, String numeroTel, String mail, String password,
			List<JardinProfil> jardin) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.numeroTel = numeroTel;
		this.mail = mail;
		this.password = password;
		this.jardin = jardin;
	}

	// Getters et setters
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

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNumeroTel() {
		return numeroTel;
	}

	public void setNumeroTel(String numeroTel) {
		this.numeroTel = numeroTel;
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

	public List<JardinProfil> getJardin() {
		return jardin;
	}

	public void setJardin(List<JardinProfil> jardin) {
		this.jardin = jardin;
	}

	// public JardinProfil getJardin() {
//		return jardin;
//	}
//	public void setJardin(JardinProfil jardin) {
//		this.jardin = jardin;
//	}
//	public List<JardinProfil> getListeJardinsPersos() {
//	return listeJardinsPersos;
//	}
//	
//	public void setListeJardinsPersos(List<JardinProfil> listeJardinsPersos) {
//		this.listeJardinsPersos = listeJardinsPersos;
//	}
	// Methodes
	// ToString
	@Override
	public String toString() {
		return "Profil [nom=" + nom + ", prenom=" + prenom + ", mail=" + mail + ", password=" + password + "]";
	}

//	public void addJardin(JardinProfil j) {
//		this.jardin = j;
//	}

}
