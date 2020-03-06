package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import beans.JardinProfil;
import beans.Profil;
import services.methodesJardin;
import services.JardinImpl;
import services.*;

import java.util.*;

/**
 * Servlet implementation class ajoutJardin
 */
public class AjoutJardin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AjoutJardin() {
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

		String adresse = request.getParameter("adresse");
		String codePostal = request.getParameter("CP");
		String nomVille = request.getParameter("nomVille");
		String GPS = request.getParameter("GPS3");
		String typeJardin = request.getParameter("typeJardin");
		String typeSol = request.getParameter("typeSol");
		String typeCulture = request.getParameter("typeCulture");
		String typeProd = request.getParameter("typeProd");
		int superficie = Integer.parseInt(request.getParameter("superficie"));
		String cultures = request.getParameter("cultures");

		ProfilImpl profilImpl = new ProfilImpl();

		JardinProfil garden = new JardinProfil(adresse, nomVille, codePostal, GPS, typeJardin, superficie, typeCulture, cultures, typeSol, typeProd);

		Profil profil = (Profil) session.getAttribute("user");

		profil.getJardin().add(garden);

		profilImpl.update(profil);

		List<JardinProfil> listejardin = profil.getJardin();

		session.setAttribute("presenceJardin", true);

		// Création d'un fichier JSON
		try {

			String jsonPara = new Gson().toJson(listejardin);

			request.setAttribute("jsonJardins", jsonPara);

		} catch (NullPointerException e) {}

		this.getServletContext().getRequestDispatcher("/afficherMesJardins.jsp").forward(request, response);

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
