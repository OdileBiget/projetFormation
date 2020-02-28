package services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.JardinProfil;
import beans.Profil;

public class ProfilJardinImpl implements ProfilJardinDAO<Profil, JardinProfil>{

	@Override
	public boolean create(Profil o, JardinProfil m) {

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		// TODO Auto-generated method stub
		
		session.save(o);

		session.getTransaction().commit();

		session.close();

		return true;
	}

	@Override
	public boolean update(Profil o, JardinProfil m) {
		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		// TODO Auto-generated method stub
		session.update(o);

		session.getTransaction().commit();

		session.close();

		return true;
	}

	@Override
	public boolean delete(Profil o, JardinProfil m) {
		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		// TODO Auto-generated method stub
		session.delete(o);

		session.getTransaction().commit();

		session.close();

		return true;
	}

	@Override
	public JardinProfil findById(int idP, int idJ) {
		
		JardinProfil jP = null;

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		
		jP = (JardinProfil) session.get(JardinProfil.class, idJ);

		session.getTransaction().commit();

		session.close();

		return jP;
	}

	@Override
	public List<JardinProfil> findAll(Profil o) {

		List<JardinProfil> listePhoto = new ArrayList<JardinProfil>();

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		// TODO Auto-generated method stub
		listePhoto = session.createQuery("FROM JardinProfil").list();

		session.getTransaction().commit();

		session.close();

		return listePhoto;
	}
	

}
