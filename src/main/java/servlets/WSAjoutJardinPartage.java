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
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		Profil profil = (Profil) session.getAttribute("id");
		int idJardin = Integer.parseInt(request.getParameter("idJardin"));

		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session sessionHib = factory.openSession();
		sessionHib.beginTransaction();

		Query query = sessionHib.createQuery("FROM JardinProfil WHERE id=" + idJardin);
		List<JardinProfil> result = query.list();
		profil.setJardinPartage(result);
		sessionHib.save(profil);
		sessionHib.getTransaction().commit();
		sessionHib.close();

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
