//package services;
//
//import java.io.InputStream;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;
//
//public class FileUploadDAO {
//	
//	public void uploadFile(String name, InputStream file) {
//		
//		SessionFactory factory = new Configuration().configure().buildSessionFactory();
//
//		Session session = factory.openSession();
//
//		session.beginTransaction();
//		// TODO Auto-generated method stub
//		
//		session.save(o);
//
//		session.getTransaction().commit();
//
//		session.close();
//	}
//
//}
