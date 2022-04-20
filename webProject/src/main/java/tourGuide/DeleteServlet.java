package tourGuide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("pnumber");
		try {
		boolean b1 = tourDButil.DeletePackage(num);
		if(b1 == true) {
			List<Package> packdetails = tourDButil.GetPackages();
			request.setAttribute("PD", packdetails);
			RequestDispatcher dis = request.getRequestDispatcher("CurrentPackages.jsp");
			dis.forward(request, response);
		}else {
			List<Package> packdetails = tourDButil.GetPackages();
			request.setAttribute("PD", packdetails);
			RequestDispatcher dis = request.getRequestDispatcher("CurrentPackages.jsp");
			dis.forward(request, response);
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
