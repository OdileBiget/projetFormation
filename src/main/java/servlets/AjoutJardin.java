package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.JardinProfil;
import services.methodesJardin;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		List<String> listeC = new ArrayList<String>();
		listeC.add("tomate");
		listeC.add("carotte");
		listeC.add(cultures);
		
		JardinProfil garden = new JardinProfil(adresse, nomVille, codePostal, GPS, typeJardin, superficie, typeCulture, listeC, typeSol, typeProd);
		
		methodesJardin.addJardin(request, garden);
		methodesJardin.getJardinUser((String)session.getAttribute("mail"));
		
		session.setAttribute("presenceJardin", true);
		
//		List<Integer> list = methodesJardin.getJardinUser((String) session.getAttribute("mail"));
		
//		request.setAttribute("presence", list.get(0));
		
		this.getServletContext().getRequestDispatcher("/profil.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
