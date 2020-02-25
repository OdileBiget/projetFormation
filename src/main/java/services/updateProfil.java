package services;

import beans.Profil;
import java.util.*;
import org.hibernate.*;
import org.hibernate.cfg.*;

import java.util.Iterator;
import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class updateProfil {

	public static void updateNom(String newNom, String oldMail, String oldPassword) {

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();

		Query query = session.createQuery("UPDATE Profil P SET P.nom=:nnom WHERE P.mail=:mail AND P.password=:pw");

		query.setParameter("nnom", newNom).setParameter("mail", oldMail).setParameter("pw", oldPassword);

		int result = query.executeUpdate();
		System.out.println(result);

		session.getTransaction().commit();

		session.close();

	}

	public static void updatePrenom(String newPrenom, String oldMail, String oldPassword) {

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();

		Query query = session
				.createQuery("UPDATE Profil P SET P.prenom=:pprenom WHERE P.mail=:mail AND P.password=:pw");

		query.setParameter("pprenom", newPrenom).setParameter("mail", oldMail).setParameter("pw", oldPassword);

		int result = query.executeUpdate();
		System.out.println(result);

		session.getTransaction().commit();

		session.close();

	}

	public static void updateMail(String newMail, String oldMail, String oldPassword) {

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();

		Query query = session.createQuery("UPDATE Profil P SET P.mail=:mmail WHERE P.mail=:mail AND P.password=:pw");

		query.setParameter("mmail", newMail).setParameter("mail", oldMail).setParameter("pw", oldPassword);

		int result = query.executeUpdate();
		System.out.println(result);

		session.getTransaction().commit();

		session.close();

	}

	public static void updateTel(String newTel, String oldMail, String oldPassword) {

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();

		Query query = session.createQuery("UPDATE Profil P SET P.telephone=:tel WHERE P.mail=:mail AND P.password=:pw");

		query.setParameter("tel", newTel).setParameter("mail", oldMail).setParameter("pw", oldPassword);

		int result = query.executeUpdate();
		System.out.println(result);

		session.getTransaction().commit();

		session.close();

	}

	public static void updatePassword(String newPassword, String oldMail, String oldPassword) {

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();

		Query query = session.createQuery("UPDATE Profil P SET P.password=:pwd WHERE P.mail=:mail AND P.password=:pw");

		query.setParameter("pwd", newPassword).setParameter("mail", oldMail).setParameter("pw", oldPassword);

		int result = query.executeUpdate();
		System.out.println(result);

		session.getTransaction().commit();

		session.close();

	}

}
