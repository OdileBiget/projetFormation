package servlets;

import java.io.IOException;
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

import beans.FruitEtLegume;
import services.methodesJardin;

/**
 * Servlet implementation class FruitsEtLegumes
 */
public class FruitsEtLegumes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FruitsEtLegumes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		FruitEtLegume fraise = new FruitEtLegume("Fraise", "mars", "novembre");
		FruitEtLegume myrtille = new FruitEtLegume("Myrtille", "juin", "septembre");
		FruitEtLegume melon = new FruitEtLegume("Melon", "janvier", "decembre");
		FruitEtLegume carambole = new FruitEtLegume("Carambole", "janvier", "decembre");
		FruitEtLegume coco = new FruitEtLegume("Noix de Coco", "janvier", "decembre");
		FruitEtLegume ppois = new FruitEtLegume("Petit pois", "avril", "juillet");
		FruitEtLegume carotte = new FruitEtLegume("Carotte", "aout", "mars");
		FruitEtLegume mangoustan = new FruitEtLegume("Mangoustan", "janvier", "decembre");
		FruitEtLegume rhubarbe = new FruitEtLegume("Rhubarbe", "avril", "septembre");
		FruitEtLegume betterave = new FruitEtLegume("Betterave", "janvier", "decembre");

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		// Ouverture session
		Session session = sessionFactory.openSession();
	
		session.beginTransaction();
		Query query = (Query) session.createSQLQuery("TRUNCATE TABLE fruitslegumes");
		query.executeUpdate();
		session.getTransaction().commit();
		session.close();
		
		methodesJardin.addFruit(fraise);
		methodesJardin.addFruit(myrtille);
		methodesJardin.addFruit(melon);
		methodesJardin.addFruit(carambole);
		methodesJardin.addFruit(coco);
		methodesJardin.addFruit(ppois);
		methodesJardin.addFruit(carotte);
		methodesJardin.addFruit(mangoustan);
		methodesJardin.addFruit(rhubarbe);
		methodesJardin.addFruit(betterave);
		
		List<FruitEtLegume> listeFL = methodesJardin.getFruitSaison();
		
		try {
			String jsonFL = new Gson().toJson(listeFL);
			request.setAttribute("jsonFL", jsonFL);
		} catch(NullPointerException e) {}
	
		request.getServletContext().getRequestDispatcher("/fetLsaison.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
