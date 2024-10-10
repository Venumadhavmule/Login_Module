

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.invoke.StringConcatFactory;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone =request.getParameter("phn");
		String email =request.getParameter("email");
		String uname = request.getParameter("uname");
		String password = request.getParameter("pswd");
		
		Member member=new Member(fname,lname,phone,email,uname,password);
   		RegistDao rDao = new RegistDao();
   		rDao.addReg(member);
//   		response.getWriter().print(result);
   		response.sendRedirect("login.jsp");
   		
	}

}
