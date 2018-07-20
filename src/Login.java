

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 12L;
       
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
		System.out.println("connected successfully here ");
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/bonvoyage";
			String username="root";
			String password="root";
			Connection con=(Connection)DriverManager.getConnection(url,username,password);
			System.out.println("connected successfully here ");
			try {
				if (con != null && !con.isClosed()) {
					ResultSet rs = null,rs1=null;
					String sql = "select * from users where username= '"+name+"' and password= '"+pass+"'";
					Statement pstmt = con.createStatement();
					
					rs = pstmt.executeQuery(sql);
					 String sql1 = "select uid from users where username='"+name+"' ";
					 Statement ps=con.createStatement();
					 rs1=ps.executeQuery(sql1);
					 
					
					if (rs1 != null && rs1.next()) {					

						int userid=Integer.parseInt(rs1.getString(1));
						request.setAttribute("userid", userid);
						System.out.println(rs1.getString(1));
						
						request.getRequestDispatcher("user_home1.jsp").forward(request, response);
							
						}else {
							request.getRequestDispatcher("login.jsp").forward(request, response);
						}
						
						

					}
				

				

			} catch (SQLException e) {
				// log(e.getMessage(), e);
				e.printStackTrace();
			}
			
			
			
			

		
		doGet(request, response);
	}catch (SQLException e) {
		// log(e.getMessage(), e);
		e.printStackTrace();
	} catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}}

}
