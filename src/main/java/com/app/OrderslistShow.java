package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class OrderslistShow
 */
@WebServlet("/OrderslistShow")
public class OrderslistShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderslistShow() {
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
              PreparedStatement ps = con.prepareStatement("SELECT * FROM Tableorder"); 
              ResultSet rs = ps.executeQuery(); 
   

            
           

            // Generate HTML table
            out.println("<html><head><title>Table Orders</title></head><body>");
            out.println("<h2>Table Orders</h2>");
            out.println("<table border='1'>");
            out.println("<tr><th>User's name</th><th>User's email</th><th>Arrival date </th><th>Number of people </th><<th>special request </th></tr>");

            
            
            
            while (rs.next()) {
            	String table_name = rs.getString("table_name");
                String table_email = rs.getString("table_email");
                String table_date1 = rs.getString("table_date");
            	String table_select = rs.getString("table_select");
            	String table_message = rs.getString("table_message");
            	
                
                out.println("<tr>");
                out.println("<td>" + table_name + "</td>");
                out.println("<td>" + table_email + "</td>");
                out.println("<td>" + table_date1 + "</td>");
                out.println("<td>" + table_select + "</td>");
                out.println("<td>" + table_message + "</td>");
          
                
                out.println("</tr>");
            }

            out.println("</table>");
            out.println("<center><div class=\"user\" style=\"text-align: center;  border: 1px solid #ccc; border-radius: 10px; padding: 10px; width:20%\">");
            out.println("<center><img src=\"images/plus.png\" style=\"max-width: 100px;\"></center>");
            out.println("<h2>More</h2>");
            out.println("<p>New User</p>");
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
