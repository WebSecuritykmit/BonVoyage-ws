

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
					ResultSet rs = null;
					String sql = "select * from users where username= ? and password= ?";
					PreparedStatement pstmt = con.prepareStatement(sql);
					pstmt.setString(1, name);
					pstmt.setString(2, pass);
					System.out.println(pstmt);
					rs = pstmt.executeQuery();
					if (rs != null && rs.next()) {
						System.out.println(rs);
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
