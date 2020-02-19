package services;

import beans.Profil;
import java.util.*;
import org.hibernate.*;
import org.hibernate.cfg.*;

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
		
		for(Profil p:(List<Profil>) result) {
			
			profilA = new Profil(p.getNom(), p.getPrenom(), p.getNumeroTel(), p.getMail(), p.getPassword());
			
		}

		session.getTransaction().commit();
		
		session.close();

		return profilA;
	}

}
