package servlets;

import services.*;
import beans.*;
import java.io.IOException;
import java.io.Serializable;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.Profil;

/**
 * Servlet implementation class deleteFile
 */
public class deleteFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
				
		int IDDelete = Integer.parseInt(request.getParameter("ID"));
		
		System.out.println(IDDelete);
		
		Profil profil = (Profil) session.getAttribute("user");
		
		ProfilImpl utilProfil = new ProfilImpl();
		
		ImageImpl utilImage = new ImageImpl();
		
		photoJardin pJ = utilImage.findById(IDDelete);
				
//		Serializable id = new Long(IDDelete);
		
		SessionFactory factory = new Configuration().configure().buildSessionFactory();

		Session sessionS = factory.openSession();

		sessionS.beginTransaction();
		
		Object persistentInstance = sessionS.load(photoJardin.class, IDDelete);
		
		if (persistentInstance != null) {
			
		    sessionS.delete(persistentInstance);
		}
		
		sessionS.getTransaction().commit();

		sessionS.close();
		
		utilProfil.update(profil);
		
		session.setAttribute("user", profil);		
		
		request.getRequestDispatcher("/JspUploadImage.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
