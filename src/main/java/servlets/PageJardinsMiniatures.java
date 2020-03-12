package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import beans.JardinProfil;
import beans.Profil;
import services.ProfilImpl;
import services.methodesJardin;

/**
 * Servlet implementation class PageJardinsMiniatures
 */
public class PageJardinsMiniatures extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageJardinsMiniatures() {
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

		session.setAttribute("presenceJardin", true);

		Profil profil = (Profil) session.getAttribute("user");
		
		System.out.println();

		List<JardinProfil> listejardin = profil.getJardin();
		
		for(JardinProfil j : listejardin) {
			System.out.println(j.getId() + j.getAdresse());
		}

		// Création d'un fichier JSON

		try {

			String jsonPara = new Gson().toJson(listejardin);

			request.setAttribute("jsonJardins", jsonPara);

		} catch (NullPointerException e) {
		}

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
