package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		/* Création ou récupération de la session */
		HttpSession session = request.getSession();

		/* Récupération de l'objet depuis la session */
		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		
		//DAOProjet.initialisation();
		boolean mdpok = DAOProjet.checkMDPValide(email, mdp);
		String nom = DAOProjet.userNom(email);
		String prenom = DAOProjet.userPrenom(email);
		int tel = DAOProjet.userTelephone(email);
		//DAOProjet.cloture();

		if (mdpok == true) {
			//session.setAttribute("user", user);
			session.setAttribute("mdp", mdp);
			session.setAttribute("nom", nom);
			session.setAttribute("prenom", prenom);
			session.setAttribute("email", email);
			session.setAttribute("log", true);
			request.setAttribute("message", "Vous êtes connecté");
			getServletContext().getNamedDispatcher( "AfficherProfil" ).forward( request, response );
			return;
		} else {
			request.setAttribute("message", "Mot de passe ou identifiant incorrect");

		}

		this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
