package servlets;

import org.hibernate.*;
import org.hibernate.cfg.*;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.JardinProfil;
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

		String passwordRenseigne = request.getParameter("passwordRenseigne");

		Profil profil = methodesLogin.connexionProfil(mailRenseigne, passwordRenseigne);

		if (profil.getNom() != null) {

//			request.setAttribute("connexion", "reussi");

			session.setAttribute("connexion", "reussi");

			session.setAttribute("jardins", profil.getJardin());

			session.setAttribute("user", profil);

			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

		} else {
			request.setAttribute("connexion", "error");

			this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);
		}
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
