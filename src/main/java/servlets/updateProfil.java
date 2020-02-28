package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Profil;
import services.methodesLogin;
import services.*;

/**
 * Servlet implementation class updateProfil
 */
public class updateProfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updateProfil() {
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

		HttpSession session = request.getSession();

		String nomModif = request.getParameter("nom");

		String prenomModif = request.getParameter("prenom");

		String mailModif = request.getParameter("mail");

		String telModif = request.getParameter("numeroTel");

		String mdpModif = request.getParameter("password");

		ProfilImpl profilImpl = new ProfilImpl();

		Profil profil = (Profil) session.getAttribute("user");

		if (nomModif != null) {
			profil.setNom(nomModif);
			profilImpl.update(profil);
			session.setAttribute("user", profil);
		}

		if (prenomModif != null) {
			profil.setPrenom(prenomModif);
			profilImpl.update(profil);
			session.setAttribute("user", profil);
		}

		if (mailModif != null) {
			if (methodesLogin.checkEmail(mailModif) == 0) {
				profil.setMail(mailModif);
				profilImpl.update(profil);
				session.setAttribute("user", profil);
				request.setAttribute("mailExistant", false);
			} else {
				request.setAttribute("mailExistant", true);
			}

		}

		if (telModif != null) {
			profil.setNumeroTel(telModif);
			profilImpl.update(profil);
			session.setAttribute("user", profil);
		}

		if (mdpModif != null) {
			profil.setPassword(mdpModif);
			profilImpl.update(profil);
			session.setAttribute("user", profil);
		}

		response.getWriter().append("Served at: ").append(request.getContextPath());

		this.getServletContext().getRequestDispatcher("/profil.jsp").forward(request, response);
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
