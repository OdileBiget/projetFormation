package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Profil;
import services.methodesLogin;

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

		Profil profilUpdate = new Profil();

		String nomOld = (String)session.getAttribute("nom");
		String prenomOld = (String)session.getAttribute("prenom");
		String mailOld = (String)session.getAttribute("mail");
		String numeroTelOld = (String)session.getAttribute("numeroTel");
		String passwordOld = (String)session.getAttribute("password");	
		
		//Profil old = services.methodesLogin.connexionProfil(mailOld, passwordOld);
		
		if(nomModif != null){
			profilUpdate.setNom(nomModif);
			services.updateProfil.updateNom(nomModif, mailOld, passwordOld);
			session.setAttribute("nom", nomModif);
		}else {
			profilUpdate.setNom(nomOld);
		}
		
		if(prenomModif!= null){
			profilUpdate.setPrenom(prenomModif);
			services.updateProfil.updatePrenom(prenomModif, mailOld, passwordOld);
			session.setAttribute("prenom", prenomModif);
		}else {
			profilUpdate.setPrenom(prenomOld);
		}
		
		if(mailModif!= null){
			if(methodesLogin.checkEmail(mailModif)==0) {
				profilUpdate.setMail(mailModif);
				services.updateProfil.updateMail(mailModif, mailOld, passwordOld);
				session.setAttribute("mail", mailModif);
				request.setAttribute("mailExistant", false);
			}else {
				request.setAttribute("mailExistant", true);
			}
			
		}else {
			profilUpdate.setMail(mailOld);
		}
		
		if(telModif!= null){
			profilUpdate.setNumeroTel(telModif);
			services.updateProfil.updateTel(telModif, mailOld, passwordOld);
			session.setAttribute("numeroTel", telModif);
		}else {
			profilUpdate.setNumeroTel(numeroTelOld);
		}
		
		if(mdpModif!= null){
			profilUpdate.setPassword(mdpModif);
			services.updateProfil.updatePassword(mdpModif, mailOld, passwordOld);
			session.setAttribute("password", mdpModif);
		}else {
			profilUpdate.setPassword(passwordOld);
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
