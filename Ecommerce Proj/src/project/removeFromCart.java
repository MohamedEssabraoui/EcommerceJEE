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
 * Servlet implementation class removeFromCart
 */
@WebServlet("/removeFromCart")
public class removeFromCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public removeFromCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email=session.getAttribute("email").toString();
		String product_id=request.getParameter("id");
		try{
			ConnectionProvider conProvider =new ConnectionProvider();
			Connection con=conProvider.getCon();
			Statement st=con.createStatement();
			st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and address is NULL");
			response.sendRedirect("myCart.jsp?msg=removed");
		}catch(Exception e){
			System.out.println(e);
		}
	}


}
