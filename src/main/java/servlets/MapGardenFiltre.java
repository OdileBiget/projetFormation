package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.google.gson.Gson;

import beans.JardinProfil;

/**
 * Servlet implementation class MapGardenFiltre
 */
public class MapGardenFiltre extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MapGardenFiltre() {
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
		// Initiliation de a session hibernate ?
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();

		String adresse = request.getParameter("adresse");
		String codePostal = request.getParameter("CP");
		String nomVille = request.getParameter("nomVille");
		String typeJardin = request.getParameter("typeJardin");
		String typeSol = request.getParameter("typeSol");
		String typeCulture = request.getParameter("typeCulture");
		String typeProd = request.getParameter("typeProd");
		String superficie = request.getParameter("superficie");
		String cultures = request.getParameter("cultures");

		System.out.println(typeCulture + typeJardin + typeProd + typeSol);
		String reqIni = "";

		if (adresse != null && !adresse.isEmpty()) {
			reqIni += "J.adresse='" + adresse + "' AND ";
		}
		if (codePostal != null && !codePostal.isEmpty()) {
			reqIni += "J.codePostal='" + codePostal + "' AND ";
		}
		if (nomVille != null && !nomVille.isEmpty()) {
			reqIni += "J.villeNom='" + nomVille + "' AND ";
		}
		if (typeJardin != null && !typeJardin.isEmpty() && !typeJardin.equals("Choisissez une option")) {
			reqIni += "J.typeJardin='" + typeJardin + "' AND ";
		}
		if (typeSol != null && !typeSol.isEmpty() && !typeSol.equals("Choisissez une option")) {
			reqIni += "J.typeSol='" + typeSol + "' AND ";
		}
		if (typeCulture != null && !typeCulture.isEmpty() && !typeCulture.equals("Choisissez une option")) {
			reqIni += "J.typeCulture='" + typeCulture + "' AND ";
		}
		if (typeProd != null && !typeProd.isEmpty() && !typeProd.equals("Choisissez une option")) {
			reqIni += "J.typeProduction='" + typeProd + "' AND ";
		}
		if (superficie != null && !superficie.isEmpty()) {
			reqIni += "J.superficie='" + superficie + "' AND ";
		}
		if (cultures != null && !cultures.isEmpty()) {
			reqIni += "J.cultures='" + cultures + "' AND ";
		}

		String req ="";
		if (reqIni.length() > 4) {
			reqIni = " J WHERE " + reqIni;
			req = reqIni.substring(0, reqIni.length() - 4);
		}
		System.out.println("requete :");
		System.out.println(req);
		Query query = session.createQuery("FROM JardinProfil" + req);
		System.out.println(query);
		List<JardinProfil> result = query.list();

		String json = new Gson().toJson(result);

		System.out.println(json);
		request.setAttribute("json", json);
		session.getTransaction().commit();

		session.close();
		this.getServletContext().getRequestDispatcher("/mapGardens.jsp").forward(request, response);

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
