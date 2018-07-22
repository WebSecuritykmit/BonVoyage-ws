

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class user_home1
 */
@WebServlet("/account_update")
public class account_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public account_update() {
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
		String passwords=request.getParameter("password");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String oldpassword=request.getParameter("oldpassword");
		String token=request.getParameter("token");
		String storedtoken=(String)request.getSession().getAttribute("csrfToken");
		if(storedtoken.equals(token)){

			try{
				
					Class.forName("com.mysql.jdbc.Driver");
					ResultSet rs=null;
					String url="jdbc:mysql://localhost/bonvoyage";
					String username="root";
					String password="mannu";
					Connection con=(Connection)DriverManager.getConnection(url,username,password);
					String sql = "select uid from users where password='"+oldpassword+"'";
					Statement pstmt = con.createStatement();	
					rs=pstmt.executeQuery(sql);
					System.out.println("connected successfully in update ");
					System.out.println(rs);
					if (rs != null && rs.next()) {				
					int l1=rs.getInt(1);
					request.setAttribute("userid", l1);
					String sql1="update users set username='"+name+"',password='"+passwords+"',email='"+email+"',phone_no='"+phone+"' where uid='"+l1+"'";
					Statement pstmt1 = con.createStatement();	

					int l=pstmt1.executeUpdate(sql1);
					
						request.getRequestDispatcher("user_home1.jsp").forward(request, response);		
						
					
					}}
					
					
					
		
			catch(Exception ae){
				ae.printStackTrace();
			}
			




		
		
		doGet(request, response);
	}

	}}
