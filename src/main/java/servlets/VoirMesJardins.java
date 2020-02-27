package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.methodesJardin;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		String id = (String) request.getParameter("idJardin");
		//System.out.println(id);
		
		List<String> liste = methodesJardin.infoJardin(id);
		
		request.setAttribute("addresse", liste.get(0));
		request.setAttribute("villeNom", liste.get(1));
		request.setAttribute("codePostal", liste.get(2));
		request.setAttribute("typeJardin", liste.get(3));
		request.setAttribute("typeCulture", liste.get(4));
		request.setAttribute("typeSol", liste.get(5));
		request.setAttribute("typeProduction", liste.get(6));
		request.setAttribute("superficie", liste.get(7));
	
		this.getServletContext().getRequestDispatcher("/afficherUnJardin.jsp").forward(request, response);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
