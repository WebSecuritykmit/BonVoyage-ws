

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String pass=request.getParameter("password");
		
		
	try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/bonvoyage?autoReconnect=true&amp;allowMultiQueries=false";
			String username="root";
			

			String password="mannu";
			Connection con=(Connection)DriverManager.getConnection(url,username,password);
			Statement stmt = con.createStatement();
			String sql = "insert into login(username,password) values('"+name+"','"+pass+"')";
			int insert = stmt.executeUpdate(sql);
			if(insert==1)
			{
				System.out.println("got it");
			}	
			else{
				System.out.println(" did not get it");
			}
		
			System.out.println("connected successfully");
			request.getRequestDispatcher("user_home1.jsp").forward(request, response);

			
		}
		
		
		catch(Exception ae){
			ae.printStackTrace();
			System.out.println("connection not found");
		}
		
		doGet(request, response);
	}

}
