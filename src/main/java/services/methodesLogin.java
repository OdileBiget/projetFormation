package services;

import beans.Profil;
import java.util.*;
import org.hibernate.*;
import org.hibernate.cfg.*;

import java.util.Iterator;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import beans.Profil;

public class methodesLogin {

	public static Profil connexionProfil(String mail, String password) {

		Profil profilA = new Profil();

		// Initiliation
		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();

		Query query = session.createQuery("FROM Profil P WHERE P.mail=:mail AND P.password=:pw");

		query.setParameter("mail", mail).setParameter("pw", password);

		List<Profil> result = query.list();

		for (Profil p : (List<Profil>) result) {

			profilA = new Profil(p.getNom(), p.getPrenom(), p.getNumeroTel(), p.getMail(), p.getPassword());

		}

		session.getTransaction().commit();

		session.close();

		return profilA;
	}

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
		for (Profil p : (List<Profil>) list) {
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
