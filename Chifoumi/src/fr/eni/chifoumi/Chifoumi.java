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
	private String victoireUtilisateur = "false";
    /**
     * Default constructor. 
     */
    public Chifoumi() {
        this.reponseDuPc = reponseDuPc();
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
		
		// Instancie cette classe
		Chifoumi chifoumi = new Chifoumi();
		
		// Récupère le choix de l'utilisateur renseigné dans le formulaire de la jsp Chifoumi.jsp
		String choix = request.getParameter("choix");
		
		// cherche la réponse aléatoire du pc
		String resultat = chifoumi.reponseDuPc;
		
		// Compare la réponse de l'utilisateur avec celle du pc
		if(choix != null)
		{
			if(resultat.contentEquals(choix))
			{
				this.victoireUtilisateur = "true";
			}
			else
			{
				this.victoireUtilisateur = "false";
				
			}
		}
		
		request.setAttribute("resultat", resultat);
		request.setAttribute("choix", choix);
		request.setAttribute("date", "17/07/2019");
		Object victoireUtilisateur;
		request.setAttribute("victoireUtilisateur", this.victoireUtilisateur);
		System.out.println(choix);
		
		
		// Cherche et affiche la jsp
		RequestDispatcher rd = this.getServletContext().getNamedDispatcher("Chifoumi");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		doGet(request, response);
	}

}
