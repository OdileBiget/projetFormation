package beans;

import javax.persistence.*;

import java.util.*;

@Entity
@Table(name = "JardinProfil")

public class JardinProfil {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;
	@Column(name = "adresse")
	private String adresse;
	@Column(name = "villeNom")
	private String villeNom;
	@Column(name = "codePostal")
	private String codePostal;
	@Column(name = "coordonneesGPS")
	private String coordonneesGPS;
	@Column(name = "typeJardin")
	private String typeJardin;
	@Column(name = "superficie")
	private int superficie;
	@Column (name = "typeCulture")
	private String typeCulture;
	@Column (name = "culturesPresentes")
	private String culturesPresentes;
	@Column(name = "typeSol")
	private String typeSol;
	@Column(name = "typeProduction")
	private String typeProduction;
//	@ElementCollection
	@OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL}, orphanRemoval = true)
	private List<photoJardin>image = new ArrayList<photoJardin>();
//	@ManyToMany(mappedBy = "listeJardinsPersos")
//	private List<Profil> listeProfil = new ArrayList<Profil>();
//	
	//Constructeurs
	public JardinProfil() {
		super();
	}
	public JardinProfil(String adresse, String villeNom, String codePostal, String coordonneesGPS, String typeJardin, int superficie, String typeCulture, String culturesPresentes, String typeSol, String typeProduction,
			List<photoJardin> image) {
		super();
		this.adresse = adresse;
		this.villeNom = villeNom;
		this.codePostal = codePostal;
		this.coordonneesGPS = coordonneesGPS;
		this.typeJardin = typeJardin;
		this.superficie = superficie;
		this.typeCulture = typeCulture;
		this.culturesPresentes = culturesPresentes;
		this.typeSol = typeSol;
		this.typeProduction = typeProduction;
		this.image = image;
	}
	//constructeur sans les images car l'utilisateur pourrait ne pas vouloir ajouter d'images de son jardin
	public JardinProfil(String adresse, String villeNom, String codePostal, String coordonneesGPS, String typeJardin,
			int superficie, String typeCulture, String culturesPresentes, String typeSol, String typeProduction) {
		super();
		this.adresse = adresse;
		this.villeNom = villeNom;
		this.codePostal = codePostal;
		this.coordonneesGPS = coordonneesGPS;
		this.typeJardin = typeJardin;
		this.superficie = superficie;
		this.typeCulture = typeCulture;
		this.culturesPresentes = culturesPresentes;
		this.typeSol = typeSol;
		this.typeProduction = typeProduction;
	}
	//Getters & setters

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getVilleNom() {
		return villeNom;
	}
	public void setVilleNom(String villeNom) {
		this.villeNom = villeNom;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getCoordonneesGPS() {
		return coordonneesGPS;
	}
	public void setCoordonneesGPS(String coordonneesGPS) {
		this.coordonneesGPS = coordonneesGPS;
	}
	public String getTypeJardin() {
		return typeJardin;
	}
	public void setTypeJardin(String typeJardin) {
		this.typeJardin = typeJardin;
	}
	public int getSuperficie() {
		return superficie;
	}
	public void setSuperficie(int superficie) {
		this.superficie = superficie;
	}
	public String getTypeCulture() {
		return typeCulture;
	}
	public void setTypeCulture(String typeCulture) {
		this.typeCulture = typeCulture;
	}

	public String getCulturesPresentes() {
		return culturesPresentes;
	}

	public void setCulturesPresentes(String culturesPresentes) {
		this.culturesPresentes = culturesPresentes;
	}
	public String getTypeSol() {
		return typeSol;
	}
	public void setTypeSol(String typeSol) {
		this.typeSol = typeSol;
	}
	public String getTypeProduction() {
		return typeProduction;
	}
	public void setTypeProduction(String typeProduction) {
		this.typeProduction = typeProduction;
	}
	public List<photoJardin> getImage() {
		return image;
	}
	public void setImage(List<photoJardin> image) {
		this.image = image;
	}

	public String affiche(String villeN, String typeJ, String typeS, String sup, String typeC) {
		return "Le jardin situé à "+villeN+" est de type "+typeJ+" avec un sol "+typeS+". D'une superficie de "+sup+" m², il propose des cultures "+typeC+"...";
	}
	@Override
	public String toString() {
		return "JardinProfil [id=" + id + ", adresse=" + adresse + ", villeNom=" + villeNom + ", codePostal="
				+ codePostal + ", coordonneesGPS=" + coordonneesGPS + ", typeJardin=" + typeJardin + ", superficie="
				+ superficie + ", typeCulture=" + typeCulture + ", typeSol=" + typeSol + ", typeProduction="
				+ typeProduction + "]";
	}

}
