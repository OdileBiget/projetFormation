package services;

import beans.JardinProfil;

import java.util.*;

import org.hibernate.*;
import org.hibernate.cfg.*;

import org.hibernate.cfg.Configuration;

public class methodesJardin {
	
	public static void addJardin(JardinProfil garden) {
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		
		Session session = factory.openSession();
		session.beginTransaction();
		
		session.save(garden);
		
		session.getTransaction().commit();
		
		session.close();		
	}
	
	
	
	
	
}