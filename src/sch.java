

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
@WebServlet("/sch")
public class sch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sch() {
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
		String Destination=request.getParameter("name");
		String Day=request.getParameter("day");
		String Start_Time=request.getParameter("time");
		int st=Integer.parseInt(Start_Time);
		String userid=request.getParameter("userid");
		/*int rating=Integer.parseInt(ratings);*/
		int uid=Integer.parseInt(userid);
		
			
		
	try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/bonvoyage";
			String username="root";
			String password="root";
			Connection con=(Connection)DriverManager.getConnection(url,username,password);
			System.out.println("connected successfully in sch ");
			try {
				System.out.println("connected successfully in sch2 ");

	//if (con != null && !con.isClosed()) {
					ResultSet rs = null;
					String sql = "insert into schedule(uid,day,destination,time) values(?,?,?,?) ";
					String sql1="update review set rated_status=?  where uid=?";
					PreparedStatement pstmt = con.prepareStatement(sql);
					pstmt.setInt(1,uid);
					pstmt.setString(2,Day);
					pstmt.setString(3,Destination);
					pstmt.setString(4,Start_Time);
			       PreparedStatement pstmt1 = con.prepareStatement(sql1);
                   pstmt1.setString(1,"yes");
                   pstmt1.setString(2,userid);
					//Statement pstmt3 = con.createStatement();
					
					int k= pstmt.executeUpdate(sql);
					int p=pstmt1.executeUpdate(sql1);

					if (k != 0 ) {
						request.getRequestDispatcher("schedule.jsp").forward(request, response);
							
						}
						
						

					//}
				
			} catch (SQLException e) {
				// log(e.getMessage(), e);
				e.printStackTrace();
			}
			
			
			
			

		
		doGet(request, response);
	}catch(Exception e){
		e.printStackTrace();}
	}



	

}
