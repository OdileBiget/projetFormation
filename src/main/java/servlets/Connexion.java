package servlets;

import org.hibernate.*;
import org.hibernate.cfg.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Profil;
import services.methodesLogin;

/**
 * Servlet implementation class Connexion
 */
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Connexion() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/* Création ou récupération de la session */
		
		HttpSession session = request.getSession();

		String mailRenseigne = request.getParameter("mailRenseigne");
		System.out.println("mail "+mailRenseigne);

		String passwordRenseigne = request.getParameter("passwordRenseigne");

		System.out.println("pw "+passwordRenseigne);
//		Profil profilA = new Profil("NOMA", "prenomA", "0254785200", "mailA@gmial.com", "passwordA");
//		Profil profilB = new Profil("NOMB", "prenomB", "0254785200", "mailB@gmial.com", "passwordB");
//
//		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
//		
//		Session sessionH = sessionFactory.openSession();
//		
//		sessionH.beginTransaction();
//		
//		sessionH.save(profilA);
//		sessionH.save(profilB);
//		
//		sessionH.getTransaction().commit();
//		
//		sessionH.close();

		Profil profilValide = methodesLogin.connexionProfil(mailRenseigne, passwordRenseigne );

		System.out.println(profilValide.getNom());

		if (profilValide.getNom() != null) {


//			request.setAttribute("nom", profilValide.getNom());
//			request.setAttribute("prenom", profilValide.getPrenom());
//			request.setAttribute("mail", profilValide.getMail());
//			request.setAttribute("numeroTel", profilValide.getNumeroTel());
//			request.setAttribute("password", profilValide.getPassword());

			request.setAttribute("connexion", "reussi");
			
			System.out.println("réussie"+profilValide.getNom());
			session.setAttribute("connexion", true);
			session.setAttribute("nom", profilValide.getNom());
			session.setAttribute("prenom", profilValide.getPrenom());
			session.setAttribute("mail", profilValide.getMail());
			session.setAttribute("numeroTel", profilValide.getNumeroTel());
			session.setAttribute("password", profilValide.getPassword());
			
			Profil utilisateurActuel = new Profil(profilValide.getNom(), profilValide.getPrenom(), profilValide.getNumeroTel(), profilValide.getMail(), profilValide.getPassword());
			session.setAttribute("userActuel", utilisateurActuel);
			
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

		}else {
			request.setAttribute("connexion", "error");
			System.out.println("error"+profilValide.getNom());
			this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);
		}

		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

//
	
		//this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);
		//this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
