package services;

import beans.JardinProfil;
import beans.Profil;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class methodesJardin {
	
	public static void addJardin(HttpServletRequest request, JardinProfil garden) {
		
		HttpSession sessionUser = request.getSession();
		
		String nom = (String) sessionUser.getAttribute("nom");
		String prenom = (String) sessionUser.getAttribute("prenom");
		String numeroTel = (String) sessionUser.getAttribute("numeroTel");
		String mail = (String) sessionUser.getAttribute("mail");
		String mdp = (String) sessionUser.getAttribute("password");
		
		Profil user = new Profil(nom, prenom, numeroTel, mail, mdp);
		
	//	List<JardinProfil> listeJ = new ArrayList<JardinProfil>();
	//	listeJ.add(garden);
		
		user.addJardin(garden);
		
//		user.getListeJardinsPersos().add(garden);
//		user.getListeJardinsPersos().add(garden);
		
//		update(mail);
		
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
			
		//AJOUT DU JARDIN A LA BDD DU USER
//		session.beginTransaction();	
//		String queryString = "DELETE FROM Profil P WHERE P.mail='"+mail+"'";
//		Query query = session.createQuery(queryString);
//		query.executeUpdate();
//		session.getTransaction().commit();
			
		session.beginTransaction();	
		session.save(user);
		session.getTransaction().commit();
		
		session.close();		
	}
	
	public static List<Integer> getJardinUser(String mail){
		List<Integer> listeIdJardins = new ArrayList<Integer>();
		listeIdJardins.add(0); //le 1er chiffre nous dit s'il y a un jardin(1) ou non (0)
		boolean presence = false;
		//En partant du principe que l'adresse email soit unique sur le site
		// Preparation de la construction de sessions
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		// Ouverture session
		Session session = sessionFactory.openSession();
		// Début de la transaction
		session.beginTransaction();
		
//		List<Profil> result = session.createQuery("Select prenom FROM Profil P WHERE P.mail= '"+mail+"'").list();
//		Query query = (Query) session.createQuery("Select prenom FROM Profil P WHERE P.mail=:mail");
//		query.setParameter("mail", mail);
//		List<Profil> list = query.list();
//		for (Profil p : (List<Profil>) list) {
//			System.out.println(p.toString());
//		}
		@SuppressWarnings("unchecked")
		List<Profil> liste = session.createQuery("FROM Profil P WHERE P.mail='"+mail+"'").list();
		for(Profil p : liste) {
			try {
				
				@SuppressWarnings("deprecation")
				Integer value = new Integer(p.getJardin().getId());
				if(value != null) {
					listeIdJardins.add(p.getJardin().getId());
					presence = true;
				}
			}catch(NullPointerException e) {}
			
		}
		
		if(presence == true) listeIdJardins.set(0, 1);

		session.getTransaction().commit();
		session.close();
		
		return listeIdJardins;
		
	}
	
//	public static List<String> getGardenData(List<Integer> liste) {
//		
//		if(liste.get(0)==1) {
//			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
//			// Ouverture session
//			Session session = sessionFactory.openSession();
//			// Début de la transaction
//			session.beginTransaction();
//			
//			for(int i = 1; i<liste.size(); i++) {
//				
//			}
//		}
//	}
	
	public static void update(String mail) {
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		
		Session session = factory.openSession();
		
		//SUPPRESSION DE L'ANCIENNE ENTREE
		session.beginTransaction();
		String queryString = "DELETE FROM Profil P WHERE P.mail='"+mail+"'";
		Query query = session.createQuery(queryString);
		query.executeUpdate();
		session.getTransaction().commit();
		session.close();
	}
	
	public static String afficheTest() {
		String test = "Olala, je teste";
		return test;
	}
	
	
	
	
	
}