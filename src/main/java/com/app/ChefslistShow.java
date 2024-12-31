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
 * Servlet implementation class ChefslistShow
 */
@WebServlet("/ChefslistShow")
public class ChefslistShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChefslistShow() {
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
              PreparedStatement ps = con.prepareStatement("SELECT * FROM Chief"); 
              ResultSet rs = ps.executeQuery(); 
   

            
           

            // Generate HTML table
            out.println("<html><head><title>Recent Orders</title></head><body>");
            out.println("<h2>Recent Orders</h2>");
            out.println("<table border='1'>");
            out.println("<tr><th>chief name</th><th>chief position</th><th>chief password</th></tr>");

            
            
            
            while (rs.next()) {
            	String chief_name = rs.getString("chief_name");
                String chief_position = rs.getString("chief_position");
            	String chief_password = rs.getString("chief_password");
                
                
                out.println("<tr>");
                out.println("<td>" + chief_name + "</td>");
                out.println("<td>" + chief_position + "</td>");
                out.println("<td>" + chief_password + "</td>");
                
                out.println("</tr>");
            }

            out.println("</table></br></br>");
          
            out.println("<center><div class=\"user\" style=\"text-align: center;  border: 1px solid #ccc; border-radius: 10px; padding: 10px; width:20%\">");

          
            out.println("<h2>More</h2>");
            out.println("<p>New Chef</p>");
            out.println("</div></center>");
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
