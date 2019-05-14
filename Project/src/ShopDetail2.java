

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ShopDetail
 */
@WebServlet("/ShopDetail2")
public class ShopDetail2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopDetail2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String s1 = request.getParameter("id");
		try{
			Class.forName("com.mysql.jdbc.Driver");
		
		String url="jdbc:mysql://localhost:3306/neemrana";
		String user="root";
		String pass="";
		Connection con=DriverManager.getConnection(url,user,pass);
		PreparedStatement ps=con.prepareStatement("SELECT * \n" + 
				"FROM Shop_Details\n" + 
				"INNER JOIN Shop_Address ON Shop_Details.Shop_Number=Shop_Address.Shop_Number\n"+
				"INNER JOIN Shop_Images ON Shop_Details.Shop_Number=Shop_Images.Shop_Number\n" + 
				"WHERE Shop_Details.Shop_Number = ?; ");
		ps.setString(1,s1);
		ResultSet rs=ps.executeQuery();
		rs.next();
			
			request.setAttribute("Name",rs.getString(2));
			request.setAttribute("TraderNamePrefix",rs.getString(3));
			request.setAttribute("TraderNameFN",rs.getString(4));
			request.setAttribute("TraderNameLN",rs.getString(5));
			request.setAttribute("Contact",rs.getString(6));
			request.setAttribute("MOP",rs.getString(8));
			request.setAttribute("AddressLine",rs.getString(10));
			request.setAttribute("Locality",rs.getString(11));
			request.setAttribute("Landmark",rs.getString(12));
			request.setAttribute("City",rs.getString(13));
			request.setAttribute("District",rs.getString(14));
			request.setAttribute("State",rs.getString(15));
			request.setAttribute("Pincode",rs.getString(16));
	    	request.setAttribute("Image",rs.getString(18));
	    
	         
	  
		 }
		catch(Exception e){
			out.println(e);
			
		}
		System.out.println(s1);
		RequestDispatcher r= request.getRequestDispatcher("blank.jsp");
		r.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
