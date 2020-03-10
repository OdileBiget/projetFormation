package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.google.gson.Gson;

import beans.JardinProfil;

/**
 * Servlet implementation class MapGarden
 */
public class MapGarden extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MapGarden() {
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

		// Initiliation
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
		List<String> culturesTab = new ArrayList<String>();
		try {
			culturesTab = Arrays.asList(cultures.split("[^a-zA-Z]"));
		} catch (Exception e) {
		}
		String reqIni = "";
		String req = "";


		if (adresse != null && !adresse.isEmpty()) {
			reqIni += "J.adresse='" + adresse + "' AND ";
		}
		if (codePostal != null && !codePostal.isEmpty()) {
			reqIni += "J.codePostal='" + codePostal + "' AND ";
		}
		if (nomVille != null && !nomVille.isEmpty()) {
			reqIni += "J.villeNom='" + nomVille + "' AND ";
		}
		if (typeJardin != null && !typeJardin.isEmpty() && !typeJardin.equals("Choisir")) {
			reqIni += "J.typeJardin='" + typeJardin + "' AND ";
		}
		if (typeSol != null && !typeSol.isEmpty() && !typeSol.equals("Choisir")) {
			reqIni += "J.typeSol='" + typeSol + "' AND ";
		}
		if (typeCulture != null && !typeCulture.isEmpty() && !typeCulture.equals("Choisir")) {
			reqIni += "J.typeCulture='" + typeCulture + "' AND ";
		}
		if (typeProd != null && !typeProd.isEmpty() && !typeProd.equals("Choisir")) {
			reqIni += "J.typeProduction='" + typeProd + "' AND ";
		}
		if (superficie != null && !superficie.isEmpty()) {
			reqIni += "J.superficie >=" + superficie + " AND ";
		}
		for (String i : culturesTab) {
			if (i != null && !i.isEmpty()) {
				if (i.endsWith("s")) {
					i = i.substring(0, i.length() - 1);
				}
				reqIni += "J.culturesPresentes LIKE '%" + i + "%' AND ";
			}
		}

		if (reqIni.length() > 4) {
			reqIni = " J WHERE " + reqIni;
			req = reqIni.substring(0, reqIni.length() - 4);
		}
		System.out.println("requete :");
		System.out.println(req);
		Query query = session.createQuery("FROM JardinProfil" + req);

		List<JardinProfil> result = query.list();

		String json = new Gson().toJson(result);
		System.out.println("jsonFiltre = \n" + json);
		if (json.equals("[]"))
			request.setAttribute("jsonVide", "Aucun élément ne correspond à votre recherche");

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
