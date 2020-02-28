package services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.JardinProfil;
import beans.Profil;

public class ProfilImpl implements IDAO<Profil> {

	@Override
	public boolean create(Profil o) {

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
	public boolean update(Profil o) {

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
	public boolean delete(Profil o) {

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
	public Profil findById(int id) {

		Profil profil = null;

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		
		profil = (Profil) session.get(Profil.class, id);

		session.getTransaction().commit();

		session.close();

		return profil;
	}

	@Override
	public List<Profil> findAll() {

		List<Profil> listeProfil = new ArrayList<Profil>();

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		// TODO Auto-generated method stub
		listeProfil = session.createQuery("FROM Profil").list();

		session.getTransaction().commit();

		session.close();

		return listeProfil;
	}

}
