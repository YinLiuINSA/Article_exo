package exo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ArrayList<Article> listArticle;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
		listArticle = new ArrayList<Article>();
		Article a1 = new Article("a1",1,"C1", "Yin");
		Article a2 = new Article("a2",2,"C2", "Liu");
		listArticle.add(a1);
		listArticle.add(a2);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Map parameters = request.getParameterMap();
	    // 
	    if (parameters.containsKey("create")){
	        RequestDispatcher view = request.getRequestDispatcher("/New.jsp");
	        view.forward(request, response);
	    }else if(parameters.containsKey("vsiew")){
	    	RequestDispatcher view = request.getRequestDispatcher("/View.jsp");
	        view.forward(request, response);
	    }else{
	    	RequestDispatcher view = request.getRequestDispatcher("/Main.jsp");
	    	request.setAttribute("listArticle", listArticle);  
	        view.forward(request, response);
	    }
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Map parameters = request.getParameterMap();
		if (parameters.containsKey("save")){
			String titre = (String) request.getParameter("titre");
			String auteur = (String) request.getParameter("auteur");
			String contenu = (String) request.getParameter("contenu");
			Article a1 = new Article(titre, listArticle.size()+1, contenu, auteur);
			listArticle.add(a1);
	    }else if(parameters.containsKey("delete")){
	    	//System.out.print(request.getParameter("id"));
	    	int ID = Integer.decode(request.getParameter("id") );
	    	for (int i = 0;i<listArticle.size();i++){
	    		if (listArticle.get(i).getID()==ID){
	    			listArticle.remove(i);
	    		}
	    	}
	    }else if(parameters.containsKey("edit")){
	    	//System.out.print(request.getParameter("id"));
	    	String titre = (String) request.getParameter("titre");
			String auteur = (String) request.getParameter("auteur");
			String contenu = (String) request.getParameter("contenu");
	    	int ID = Integer.decode(request.getParameter("id") );
	    	for (int i = 0;i<listArticle.size();i++){
	    		if (listArticle.get(i).getID()==ID){
	    			listArticle.get(i).setAuteur(auteur);
	    			listArticle.get(i).setTitre(titre);
	    			listArticle.get(i).setContenu(contenu);
	    		}
	    	}
	    }
		RequestDispatcher view = request.getRequestDispatcher("/Main.jsp");
    	request.setAttribute("listArticle", listArticle);  
        view.forward(request, response);

	}
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doDelete(req, resp);
	}

}
