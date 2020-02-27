package services;

import java.util.ArrayList;
import java.util.List;
import beans.photoJardin;
import services.IDAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ImageImpl implements IDAO<photoJardin> {

	@Override
	public boolean create(photoJardin o) {

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
	public boolean update(photoJardin o) {

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
	public boolean delete(photoJardin o) {

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
	public photoJardin findById(int id) {
		
		photoJardin pJ = null;

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		// TODO Auto-generated method stub
		pJ = (photoJardin) session.get(photoJardin.class, id);

		session.getTransaction().commit();

		session.close();

		return pJ;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<photoJardin> findAll() {
		
		List<photoJardin> listePhoto = new ArrayList<photoJardin>();

		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session session = factory.openSession();

		session.beginTransaction();
		// TODO Auto-generated method stub
		listePhoto = session.createQuery("FROM photoJardin").list();

		session.getTransaction().commit();

		session.close();

		return listePhoto;
	}

}
