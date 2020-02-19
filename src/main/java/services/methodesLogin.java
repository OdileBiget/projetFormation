package services;

import java.util.Iterator;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import beans.Profil;

public class methodesLogin {

	public static void addProfil(Profil profil) {
		// Preparation de la construction de sessions
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		// Ouverture session
		Session session = sessionFactory.openSession();
		// Début de la transaction
		session.beginTransaction();

		// Sauvegarde de l'instance
		session.save(profil);

		// Commit de la transaction
		session.getTransaction().commit();

		// Fermeture session
		session.close();
	}

	public static int checkEmail(String email) {
		// Preparation de la construction de sessions
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		// Ouverture session
		Session session = sessionFactory.openSession();

		// Début de la transaction
		session.beginTransaction();

		Query query = (Query) session.createQuery("FROM Profil P WHERE P.mail=:mail");
		query.setParameter("mail", email);
		List<Profil> list = query.list();
		int result = list.size();

		// Commit de la transaction
		session.getTransaction().commit();

		// Fermeture session
		session.close();
		return result;
	}
	
	public static boolean checkMDPValide(String email, String mdp) {
		// Preparation de la construction de sessions
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		// Ouverture session
		Session session = sessionFactory.openSession();
		// Début de la transaction
		session.beginTransaction();

		boolean mdpValide = false;
		Query query = (Query) session.createQuery("Select password FROM Profil P WHERE P.mail=:mail");
		query.setParameter("mail", email);
		List<Profil> list = query.list();
		for(Profil p : (List<Profil>) list) {
			if (p.getPassword().equals(mdp)) {
				mdpValide = true;
			}	
		}
		
		// Commit de la transaction
		session.getTransaction().commit();

		// Fermeture session
		session.close();
		return mdpValide;

	}
}
