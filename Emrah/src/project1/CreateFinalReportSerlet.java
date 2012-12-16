package project1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateFinalReportSerlet
 */
public class CreateFinalReportSerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String projectprocess = request.getParameter("projectprocess");
		String projectDisadvantages = request.getParameter("projectDisadvantages");
		String advantages = request.getParameter("advantages");
		String future = request.getParameter("future");
		String conclusion = request.getParameter("conclusion");
		
		
		
		MySQLcon db = new MySQLcon("jdbc:mysql://localhost:3306/projekt","root","vertrigo");
		 
		db.Upd("INSERT INTO final_reports SET project_progress='" + projectprocess + "', project_disadvantages='" + projectDisadvantages + "', project_advantages='" + advantages + "', future_project_improvement='" + future + "',conclusion='"+ conclusion +"';");
		
	
	}

}
