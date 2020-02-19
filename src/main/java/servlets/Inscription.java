package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Profil;

/**
 * Servlet implementation class inscription
 */
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Inscription() {
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

		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String mdp = request.getParameter("mdp");
		boolean ajouterOk = true;

		Profil newUser = new Profil(nom,prenom, tel, email, mdp);

		//DAOProjet.initialisation();
		if (DAOProjet.checkEmail(email) != null) {
			request.setAttribute("message", "Cette adresse mail n'est pas disponible.");
			ajouterOk = false;
		}
//		if (DAOProjet.checkUser(user) != null) {
//			request.setAttribute("message", "Ce nom d'utilisateur n'est pas disponible.");
//			ajouterOk = false;
//		}

		if (ajouterOk) {
			DAOProjet.addUser(newUser);
			//DAOProjet.cloture();
			request.setAttribute("email", email);
			request.setAttribute("mdp", mdp);
			this.getServletContext().getRequestDispatcher("/Connexion").forward(request, response);
			return;

		} else {
			//DAOProjet.cloture();
			this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request, response);
			return;
		}

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
