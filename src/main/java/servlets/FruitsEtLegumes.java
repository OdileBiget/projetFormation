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
		
		FruitEtLegume fraise = new FruitEtLegume("Fraises", "mars", "novembre");
		FruitEtLegume myrtille = new FruitEtLegume("Myrtilles", "juin", "septembre");
		FruitEtLegume melon = new FruitEtLegume("Melons", "janvier", "decembre");
		FruitEtLegume carambole = new FruitEtLegume("Caramboles", "janvier", "decembre");
		FruitEtLegume coco = new FruitEtLegume("Noix de Coco", "janvier", "decembre");
		FruitEtLegume ppois = new FruitEtLegume("Petits pois", "avril", "juillet");
		FruitEtLegume carotte = new FruitEtLegume("Carottes", "aout", "mars");
		FruitEtLegume mangoustan = new FruitEtLegume("Mangoustans", "janvier", "decembre");
		FruitEtLegume rhubarbe = new FruitEtLegume("Rhubarbe", "avril", "septembre");
		FruitEtLegume betterave = new FruitEtLegume("Betteraves", "janvier", "decembre");
		FruitEtLegume radis = new FruitEtLegume("Radis", "mars", "juin");
		FruitEtLegume echalote = new FruitEtLegume("Echalotes", "janvier", "decembre");
		FruitEtLegume tomate = new FruitEtLegume("Tomates", "janvier", "decembre");
		FruitEtLegume cresson = new FruitEtLegume("Cresson", "janvier", "decembre");
		FruitEtLegume chataigne = new FruitEtLegume("Chataignes", "septembre", "decembre");
		FruitEtLegume celeri = new FruitEtLegume("Celeri", "janvier", "decembre");
		FruitEtLegume avocat = new FruitEtLegume("Avocats", "janvier", "decembre");
		FruitEtLegume fenouil = new FruitEtLegume("Fenouil", "janvier", "decembre");
		FruitEtLegume ananas = new FruitEtLegume("Ananas", "janvier", "decembre");
		FruitEtLegume cassis = new FruitEtLegume("Cassis", "aout", "septembre");
		FruitEtLegume poire = new FruitEtLegume("Poires", "janvier", "decembre");
		FruitEtLegume orange = new FruitEtLegume("Oranges", "janvier", "decembre");
		FruitEtLegume cepe = new FruitEtLegume("Cepes", "mai", "novembre");
		FruitEtLegume morille = new FruitEtLegume("Morilles", "mars", "juin");
		FruitEtLegume clementine = new FruitEtLegume("Clémentines", "octobre", "avril");
		FruitEtLegume persil = new FruitEtLegume("Persil", "janvier", "decembre");
		FruitEtLegume poivron = new FruitEtLegume("Poivrons", "janvier", "decembre");
		FruitEtLegume aubergine = new FruitEtLegume("Aubergines", "janvier", "decembre");
		FruitEtLegume raisin = new FruitEtLegume("Raisins", "janvier", "decembre");
		FruitEtLegume groseille = new FruitEtLegume("Groseilles", "juin", "septembre");
		FruitEtLegume grenade = new FruitEtLegume("Grenades", "octobre", "mars");
		FruitEtLegume banane = new FruitEtLegume("Bananes", "janvier", "decembre");
		FruitEtLegume pasteque = new FruitEtLegume("Pasteque", "mai", "septembre");
		FruitEtLegume laitue = new FruitEtLegume("Laitue", "janvier", "decembre");
		FruitEtLegume cerise = new FruitEtLegume("Cerises", "mai", "juillet");
		FruitEtLegume courgette = new FruitEtLegume("Courgettes", "janvier", "decembre");
		FruitEtLegume concombre = new FruitEtLegume("Concombres", "janvier", "decembre");
		
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
		methodesJardin.addFruit(radis);
		methodesJardin.addFruit(echalote);
		methodesJardin.addFruit(tomate);
		methodesJardin.addFruit(cresson);
		methodesJardin.addFruit(chataigne);
		methodesJardin.addFruit(celeri);
		methodesJardin.addFruit(avocat);
		methodesJardin.addFruit(fenouil);
		methodesJardin.addFruit(ananas);
		methodesJardin.addFruit(cassis);
		methodesJardin.addFruit(poire);
		methodesJardin.addFruit(orange);
		methodesJardin.addFruit(cepe);
		methodesJardin.addFruit(morille);
		methodesJardin.addFruit(clementine);
		methodesJardin.addFruit(persil);
		methodesJardin.addFruit(poivron);
		methodesJardin.addFruit(aubergine);
		methodesJardin.addFruit(raisin);
		methodesJardin.addFruit(groseille);
		methodesJardin.addFruit(grenade);
		methodesJardin.addFruit(banane);
		methodesJardin.addFruit(pasteque);
		methodesJardin.addFruit(laitue);
		methodesJardin.addFruit(cerise);
		methodesJardin.addFruit(courgette);
		methodesJardin.addFruit(concombre);

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
