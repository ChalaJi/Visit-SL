package tourGuide;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("name");
		String pwd = request.getParameter("pw");
	
		try {
			
			boolean b1 = tourDButil.Validate(username, pwd);
			if(b1 == true) {
				List<Package> packdetails = tourDButil.GetPackages();
				request.setAttribute("PD", packdetails);
				RequestDispatcher dis = request.getRequestDispatcher("CurrentPackages.jsp");
				dis.forward(request, response);

			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your Username or Password is incorrect');");
				out.println("location='AdminLogin.jsp'");
				out.println("</script>");
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
