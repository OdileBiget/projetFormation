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
	private List<String>culturesPresentes;
	@Column(name = "typeSol")
	private String typeSol;
	@Column(name = "typeProduction")
	private String typeProduction;
	@Column(name = "cheminImages")
	private List<String>cheminImages;
	
	//Constructeurs
	public JardinProfil() {
		super();
	}

	public JardinProfil(String adresse, String villeNom, String codePostal, String coordonneesGPS, String typeJardin,
			int superficie, String typeCulture, List<String> culturesPresentes, String typeSol, String typeProduction,
			List<String> cheminImages) {
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
		this.cheminImages = cheminImages;
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

	public List<String> getCulturesPresentes() {
		return culturesPresentes;
	}

	public void setCulturesPresentes(List<String> culturesPresentes) {
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

	public List<String> getCheminImages() {
		return cheminImages;
	}

	public void setCheminImages(List<String> cheminImages) {
		this.cheminImages = cheminImages;
	}
	//Methodes
	//toString

	@Override
	public String toString() {
		return "JardinProfil [adresse=" + adresse + ", villeNom=" + villeNom + ", codePostal=" + codePostal
				+ ", coordonneesGPS=" + coordonneesGPS + ", typeJardin=" + typeJardin + ", superficie=" + superficie
				+ ", typeCulture=" + typeCulture + ", culturesPresentes=" + culturesPresentes + ", typeSol=" + typeSol
				+ ", typeProduction=" + typeProduction + ", cheminImages=" + cheminImages + "]";
	}
	
	
	
	

}
