package fr.eni.chifoumi;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Chifoumi
 */
@WebServlet("/Chifoumi")
public class Chifoumi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String reponse;
	private String[] choices = {"Chi", "Fou", "Mi"};
	private String reponseDuPc;
	private boolean resultat;//gagné = true
    /**
     * Default constructor. 
     */
    public Chifoumi() {
        // TODO Auto-generated constructor stub
    }
   
    /**
     * @return random chi or fou or mi
     */
    private String reponseDuPc()
    {
         Random random = new Random();
         int idx = new Random().nextInt(choices.length);
         String randomResponse = (choices[idx]);
         return randomResponse;
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String choix = request.getParameter("choix");
		
		
		String resultat = "Chi";
		
		request.setAttribute("resultat", resultat);
		request.setAttribute("choix", choix);
		System.out.println(choix);
		RequestDispatcher rd = this.getServletContext().getNamedDispatcher("Chifoumi");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
