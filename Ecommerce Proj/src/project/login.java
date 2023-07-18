package project;
import java.sql.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email=request.getParameter("email");
		String password=request.getParameter("password");


		if(email.equals("admin@mohamed.net") && password.equals("mohamed"))
		{
		session.setAttribute("email", email);
		response.sendRedirect("admin/adminHome.jsp");
		}
		else
		{
		int z=0;
		try{
			ConnectionProvider conProvider = new ConnectionProvider();
			Connection con=conProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
			while(rs.next())
			{
				z=1;
				session.setAttribute("email", email);
				response.sendRedirect("home.jsp");
			}
			if(z==0)
				response.sendRedirect("login.jsp?msg=notexist");
			
		}catch(Exception e)
		{
			System.out.println(e);
			response.sendRedirect("login.jsp?msg=invalid");
			}



		}
	}

}
