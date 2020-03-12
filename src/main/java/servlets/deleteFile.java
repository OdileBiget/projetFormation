package servlets;

import services.*;
import beans.*;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession session = request.getSession();
		
//		Save Image dans le profil jardin

		int idJardin = (int) session.getAttribute("idJ");

		int idPhoto = Integer.parseInt(request.getParameter("ID"));

		Profil profil = (Profil) session.getAttribute("user");

		ProfilImpl utilProfil = new ProfilImpl();

		ImageImpl utilImage = new ImageImpl();

		utilImage.delete(idPhoto, idJardin);
		
//		MAJ profil : user

		Profil profilMAJ = (Profil) utilProfil.findById(profil.getId());

		List<JardinProfil> listeJardins = profilMAJ.getJardin();

		JardinProfil jP = new JardinProfil();

		for (JardinProfil j : listeJardins) {

			if (j.getId() == idJardin) {

				jP = j;

			}
		}
		
//		Envoie en session des MAJ pour écraser anciennes versions

		session.setAttribute("user", profilMAJ);

		session.setAttribute("monJardin", jP);

		request.getRequestDispatcher("/afficherUnJardin.jsp").forward(request, response);

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
