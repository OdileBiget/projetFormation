package beans;

import javax.persistence.*;

import java.sql.Blob;
import java.util.*;

@Entity
@Table(name = "photoJardin")

public class photoJardin {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;
	@Column(name="nom")
	private String nom;
	@Column(name="taille")
	private int taille;
	@Column(name="img")
	private Blob img;
	
	

}
