package services;

import beans.JardinProfil;
import beans.Profil;
import beans.FruitEtLegume;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.graalvm.compiler.nodes.java.ArrayLengthNode;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class methodesJardin {
	
	//Travaille de JE qui l'a aidé dans sa construction de JSP mais aujourd'hui n'a plus d'utilité
	// Attention :  ne pas supprimer souvenirs
	
	
//	
//	public static void addJardin(HttpServletRequest request, JardinProfil garden) {
//		
//		HttpSession sessionUser = request.getSession();
//		
//		String nom = (String) sessionUser.getAttribute("nom");
//		String prenom = (String) sessionUser.getAttribute("prenom");
//		String numeroTel = (String) sessionUser.getAttribute("numeroTel");
//		String mail = (String) sessionUser.getAttribute("mail");
//		String mdp = (String) sessionUser.getAttribute("password");
//		
//		Profil user = new Profil(nom, prenom, numeroTel, mail, mdp);
//		
//	//	List<JardinProfil> listeJ = new ArrayList<JardinProfil>();
//	//	listeJ.add(garden);
//		
////		user.addJardin(garden);
//		
//		user.getJardin().add(garden);
//		
////		user.getListeJardinsPersos().add(garden);
////		user.getListeJardinsPersos().add(garden);
//		
////		update(mail);
//		
//		SessionFactory factory = new Configuration().configure().buildSessionFactory();
//		Session session = factory.openSession();
//			
//		//AJOUT DU JARDIN A LA BDD DU USER
////		session.beginTransaction();	
////		String queryString = "DELETE FROM Profil P WHERE P.mail='"+mail+"'";
////		Query query = session.createQuery(queryString);
////		query.executeUpdate();
////		session.getTransaction().commit();
//			
//		session.beginTransaction();	
//		session.save(user);
//		session.getTransaction().commit();
//		
//		session.close();		
//	}
//	
////	public static List<Integer> getJardinsUser(String mail){
////		List<Integer> listeIdJardins = new ArrayList<Integer>();
////		listeIdJardins.add(0); //le 1er chiffre nous dit s'il y a un jardin(1) ou non (0)
////		boolean presence = false;
////		//En partant du principe que l'adresse email soit unique sur le site
////		// Preparation de la construction de sessions
////		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
////		// Ouverture session
////		Session session = sessionFactory.openSession();
////		// Début de la transaction
////		session.beginTransaction();
////		
//////		List<Profil> result = session.createQuery("Select prenom FROM Profil P WHERE P.mail= '"+mail+"'").list();
//////		Query query = (Query) session.createQuery("Select prenom FROM Profil P WHERE P.mail=:mail");
//////		query.setParameter("mail", mail);
//////		List<Profil> list = query.list();
//////		for (Profil p : (List<Profil>) list) {
//////			System.out.println(p.toString());
//////		}
////		@SuppressWarnings("unchecked")
////		List<Profil> liste = session.createQuery("FROM Profil P WHERE P.mail='"+mail+"'").list();
////		for(Profil p : liste) {
////			try {
////				
////				@SuppressWarnings("deprecation")
////				Integer value = new Integer(p.getJardin().getId());
////				if(value != null) {
////					listeIdJardins.add(p.getJardin().getId());
////					presence = true;
////				}
////			}catch(NullPointerException e) {}
////			
////		}
////		
////		if(presence == true) listeIdJardins.set(0, 1);
////
////		session.getTransaction().commit();
////		session.close();
////		
////		return listeIdJardins;
////		
////	}
//	
//	public static List<String[]> getGardenData(List<Integer> liste) {
//		//liste = liste des id de jardin appartenant à l'utilisateur
//		//commencant par 0 s'il n'en a pas
//		//et 1 s'il a au moins un jardin
//		
//		List<String[]> listeParametres = new ArrayList<String[]>();
//		String requete = "";
//		
//		if(liste.get(0)==1) {
//			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
//			// Ouverture session
//			Session session = sessionFactory.openSession();
//			// Début de la transaction
//			session.beginTransaction();
//			
//			for(int i = 1; i<liste.size(); i++) {
//				int id = liste.get(i);
//				requete = "FROM JardinProfil JP WHERE JP.id = "+id;
//				List<JardinProfil> listeJP = session.createQuery(requete).list();
//				for(JardinProfil JP : listeJP) {
//					String data[] = new String[6];
//					data[0] = JP.getVilleNom();
//					data[1] = JP.getTypeJardin();
//					data[2] = JP.getTypeSol();
//					data[3] = Integer.toString(JP.getSuperficie());
//					data[4] = JP.getTypeCulture();
//					data[5] = Integer.toString(id);
//					listeParametres.add(data);
//				}
//				
//			}
//			session.getTransaction().commit();
//			session.close();
//		}
//		
//		else listeParametres = null;
//		
//		return listeParametres;
//	}
//	
//	public static List<String> infoJardin(String idJ){
//		
//		List<String> infoJardin = new ArrayList<String>();
//		int id = Integer.parseInt(idJ);
//		
//		String requete = "FROM JardinProfil JP WHERE JP.id ="+id;
//		
//		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
//		Session session = sessionFactory.openSession();
//		session.beginTransaction();
//		
//		List<JardinProfil> liste = session.createQuery(requete).list();	
//		for(JardinProfil j : liste) {
//			infoJardin.add(j.getAdresse());
//			infoJardin.add(j.getVilleNom());
//			infoJardin.add(j.getCodePostal());
//			infoJardin.add(j.getTypeJardin());
//			infoJardin.add(j.getTypeCulture());
//			infoJardin.add(j.getTypeSol());
//			infoJardin.add(j.getTypeProduction());
//			infoJardin.add(Integer.toString(j.getSuperficie()));
//		}
//		
//		return infoJardin;
//	}
//	
//	public static void update(String mail) {
//		SessionFactory factory = new Configuration().configure().buildSessionFactory();
//		
//		Session session = factory.openSession();
//		
//		//SUPPRESSION DE L'ANCIENNE ENTREE
//		session.beginTransaction();
//		String queryString = "DELETE FROM Profil P WHERE P.mail='"+mail+"'";
//		Query query = session.createQuery(queryString);
//		query.executeUpdate();
//		session.getTransaction().commit();
//		session.close();
//	}
//	
//	public static void afficheTest(List<String[]> liste) {
//		for(String[] i : liste) System.out.println(i[0]);
//	}
	public static void addFruit(FruitEtLegume fl) {
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		// Ouverture session
		Session session = sessionFactory.openSession();
	
//		session.beginTransaction();
//		Query query = (Query) session.createSQLQuery("TRUNCATE TABLE fruitslegumes");
//		query.executeUpdate();
//		session.getTransaction().commit();
		
		
		session.beginTransaction();
		session.save(fl);
		session.getTransaction().commit();

		// Fermeture session
		session.close();
	}
	
	public static List<FruitEtLegume> getFruitSaison() {
		List<FruitEtLegume> liste = new ArrayList<FruitEtLegume>();
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
			
		session.beginTransaction();
		
		Query query = (Query) session.createQuery("FROM FruitEtLegume");
		liste = query.getResultList();
		
		session.getTransaction().commit();

		// Fermeture session
		session.close();
		
		return liste;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}