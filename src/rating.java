

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class rating
 */
@WebServlet("/rating")
public class rating extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rating() {
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
		String ratings=request.getParameter("rating");
		int rating=Integer.parseInt(ratings);
		String uid=request.getParameter("uid");
			
		
	try{
		System.out.println("connected successfully here ");
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/bonvoyage";
			String username="root";
			String password="root";
			Connection con=(Connection)DriverManager.getConnection(url,username,password);
			System.out.println("connected successfully here ");
			try {
				if (con != null && !con.isClosed()) {
					ResultSet rs = null;
					String sql = "update review set rating='"+rating+"' where uid='"+uid+"' ";
					String sql1="update review set rated_status='"+"yes"+"'  where uid='"+uid+"'";
					//Statement pstmt = con.prepareStatement(sql);
			        Statement pstmt1 = con.prepareStatement(sql1);

					Statement pstmt = con.createStatement();
					
					int k= pstmt.executeUpdate(sql);
					int p=pstmt1.executeUpdate(sql1);

					if (k != 0 ) {
						request.getRequestDispatcher("reviewratings.jsp").forward(request, response);
							
						}
						
						

					}
				
			} catch (SQLException e) {
				// log(e.getMessage(), e);
				e.printStackTrace();
			}
			
			
			
			

		
		doGet(request, response);
	}catch(Exception e){
		e.printStackTrace();}
	}



	

}
