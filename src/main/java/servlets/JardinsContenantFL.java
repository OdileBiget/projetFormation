package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import com.google.gson.Gson;

import beans.JardinProfil;

/**
 * Servlet implementation class JardinsContenantFL
 */
public class JardinsContenantFL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JardinsContenantFL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String fruit = (String) request.getParameter("nomFL");
		request.setAttribute("nom", fruit);
		
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		
		Query query = session.createQuery("FROM JardinProfil");
		List<JardinProfil> liste = query.getResultList();
		
		session.getTransaction().commit();
		session.close();
		
		try {
			String json = new Gson().toJson(liste);
			request.setAttribute("json", json);
			
			
		}catch(NullPointerException e) {}
		
		this.getServletContext().getRequestDispatcher("/jardinsAvecFL.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
