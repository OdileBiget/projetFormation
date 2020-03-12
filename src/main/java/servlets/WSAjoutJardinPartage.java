package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.JardinProfil;
import beans.Profil;
import services.methodesLogin;

/**
 * Servlet implementation class WSAjoutJardinPartage
 */
public class WSAjoutJardinPartage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WSAjoutJardinPartage() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		// response.getWriter().append("Served at: ").append(request.getContextPath());
//
//		System.out.println("je suis dans le WS");
//		HttpSession session = request.getSession();
//		Profil profil = (Profil) session.getAttribute("user");
//		
//		profil = methodesLogin.getProfilFromID(profil.getId());
//		
//		int jardinId = Integer.parseInt(request.getParameter("jardinId"));
//		System.out.println(profil);
//		
//		SessionFactory factory = new Configuration().configure().buildSessionFactory();
//		Session sessionHib = factory.openSession();
//		sessionHib.beginTransaction();
//
//		Query query = sessionHib.createQuery("FROM JardinProfil WHERE id=" + jardinId);
//		List<JardinProfil> result = query.list();
//		System.out.println(result);
//		profil.getJardinPartage().add(result.get(0));
//		sessionHib.update(profil);
//		sessionHib.getTransaction().commit();
//		sessionHib.close();
//		session.setAttribute("user", profil);

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
