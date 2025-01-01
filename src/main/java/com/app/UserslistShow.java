package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet; 

/**
 * Servlet implementation class UserslistShow
 */
@WebServlet("/UserslistShow")
public class UserslistShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserslistShow() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
        	Class.forName("com.mysql.jdbc.Driver"); 
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Resturant2", "root", "muller16"); 

              // Execute SQL query 
              PreparedStatement ps = con.prepareStatement("SELECT * FROM users"); 
              ResultSet rs = ps.executeQuery(); 
   

            
           

            // Generate HTML table
            out.println("<html><head><title>New Users</title></head><body>");
            
          
            

            
            
            
            while (rs.next()) {
            	String userId = rs.getString("userId");
                String password = rs.getString("password");
            	
                out.println(" <div class=\"user-list\" id=\"userContainer\">");
                out.println("<div class=\"user\">");
                out.println("<img src=\"images/profile-2.jpg\">");
                out.println(" <h2>"+userId+"</h2>");
                out.println(" <p>"+password+"</p>");
                out.println("</div>");
                out.println(" </div>");
                
                
            }

            out.println(" <div class=\"user\">");
            out.println("<img src=\"images/plus.png\">");
            out.println(" <h2>More</h2>");
            out.println(" <p>New User</p>");
            out.println("  </div>");
            out.println("</body></html>");

            // Close the result set
            rs.close();
         // Close connections
              ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
