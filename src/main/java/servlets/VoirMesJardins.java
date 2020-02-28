package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.JardinProfil;
import services.methodesJardin;
import beans.Profil;

/**
 * Servlet implementation class VoirMesJardins
 */
public class VoirMesJardins extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VoirMesJardins() {
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

		int id = Integer.parseInt((String) request.getParameter("idJardin"));
		
		Profil profil = (Profil) session.getAttribute("user");
		
		List<JardinProfil> listeJardins = profil.getJardin();

		JardinProfil jP = new JardinProfil();

		for(JardinProfil j : listeJardins) {
			
			if(j.getId()==id) {
				
				jP = j;
				
			}
		}

		request.setAttribute("addresse", jP.getAdresse());
		request.setAttribute("villeNom", jP.getVilleNom());
		request.setAttribute("codePostal", jP.getCodePostal());
		request.setAttribute("typeJardin", jP.getTypeJardin());
		request.setAttribute("typeCulture", jP.getTypeCulture());
		request.setAttribute("typeSol", jP.getTypeSol());
		request.setAttribute("typeProduction", jP.getTypeProduction());
		request.setAttribute("superficie", Integer.toString(jP.getSuperficie()));

		this.getServletContext().getRequestDispatcher("/afficherUnJardin.jsp").forward(request, response);

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
