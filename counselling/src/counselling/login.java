package counselling;



import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(urlPatterns="")
public class login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.getRequestDispatcher("/log.jsp").forward(request, response);
		
		
	}
	private authenticate au = new authenticate();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		
		boolean isVal = false;
		try {
			
			isVal = au.isValid(name, pass);
			
		} catch (SQLException e) {e.printStackTrace();}
		
		
		
		request.setAttribute("name", name);
		//to print name of user on his personal page, here name parameter contains name
		
		if(isVal) {
			
			request.getRequestDispatcher("/student.jsp").forward(request, response);
		//forward to student's personal page 
		}else {
			request.setAttribute("error", "Invalid Username or Password");
			request.getRequestDispatcher("/log.jsp").forward(request, response);
		}
	}

}
