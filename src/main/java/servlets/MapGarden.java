package servlets;

import java.io.IOException;
import java.util.List;

import javax.json.Json;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import beans.JardinProfil;
import beans.Profil;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		// Initiliation
				SessionFactory factory = new Configuration().configure().buildSessionFactory();
				Session session = factory.openSession();

				session.beginTransaction();
				Query query = session.createQuery("FROM JardinProfil");

				List<JardinProfil> result = query.list();
				for (JardinProfil p : (List<JardinProfil>) result) {

					String json = Json.createObjectBuilder()
				            .add("adresse", p.getAdresse())
				            .add("villeNom", p.getCodePostal())
				            .add("codePostal", p.getCodePostal())
				            .add("coordonneesGPS", p.getCoordonneesGPS())
				            .add("typeJardin", p.getTypeJardin())
				            .add("superficie", p.getSuperficie())
				            .add("typeCulture", p.getTypeCulture())
//				            .add("culturesPresentes", p.getCulturesPresentes())
				            .add("typeSol", p.getTypeSol())
				            .add("typeProduction", p.getTypeProduction())
				            //.add("cheminImages", p.getCheminImages())
				            .build()
				            .toString();
				}

				session.getTransaction().commit();

				session.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
