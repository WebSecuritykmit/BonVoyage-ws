

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
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class submitreview
 */
@WebServlet("/submitreview.do")
public class submitreview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public submitreview() {
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
		doGet(request, response);
		HttpSession session=null;
		int tripid=Integer.parseInt(request.getParameter("tripid"));
		int uid=Integer.parseInt(request.getParameter("userid"));
		String str=request.getParameter("review");
		try{
			System.out.println("connected successfully here ");
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/bonvoyage";
			String username="root";
			String password="mannu";
			ResultSet rs=null;
			int k=0;
			String no="no";
			Connection con=(Connection)DriverManager.getConnection(url,username,password);
			System.out.println("connected successfully here ");
			
		String sql = "insert into review(uid,tripid,rating,ratingstatus,review) values('"+uid+"','"+tripid+"','"+k+"','"+no+"','"+str+"');";
		Statement pstmt = con.createStatement();
		int l = pstmt.executeUpdate(sql);
		
		if(l!=0){
			String infoMessage="Thanks for using our app and completing the trip";
			String titleBar="Thanks";
	        JOptionPane.showMessageDialog(null, infoMessage, "InfoBox: " + titleBar, JOptionPane.INFORMATION_MESSAGE);

		}
		}
		catch(Exception ae){
			System.out.println(ae);
			
		}
	}

}
