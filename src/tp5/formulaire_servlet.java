package tp5;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class formulaire_servlet
 */
@WebServlet("/formulaire_servlet")
public class formulaire_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public formulaire_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType ("text/html");
		PrintWriter out = response.getWriter();
		String o1 = request.getParameter("o1");
		String o2= request.getParameter("o2");
		String op= request.getParameter("k");
		if (o1.equals("")|| o2.equals("") || op.equals(null)||op.equals("")) {
			this.getServletContext().getRequestDispatcher("/erreur.jsp").forward(request, response);
			
		}else 
		{ this.getServletContext().getRequestDispatcher("/response.jsp").forward(request, response); }

		
	}

}
