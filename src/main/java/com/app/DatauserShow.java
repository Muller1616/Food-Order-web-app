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
 * Servlet implementation class DatauserShow
 */
@WebServlet("/DatauserShow")
public class DatauserShow extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        try {
	        	Class.forName("com.mysql.jdbc.Driver"); 
	              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Resturant2", "root", "muller16"); 

	              // Execute SQL query 
	              PreparedStatement ps = con.prepareStatement("SELECT * FROM Fooddrinkorder"); 
	              ResultSet rs = ps.executeQuery(); 
	   

	            
	           

	            // Generate HTML table
	            out.println("<html><head><title>Recent Orders</title></head><body>");
	            out.println("<h2>Recent Orders</h2>");
	            out.println("<table border='1'>");
	            out.println("<tr><th>ID</th><th>Food Actual Name</th><th>Price</th><th>Receiver's Name</th><th>Receiver's Email</th><th>Receiver's Destination</th><th>Food Delivery Date</th><th>Amount</th><th>Special request</th><th>Receiver's Phone</th></tr>");

	            
	            
	            
	            while (rs.next()) {
	            	String FoodActual_Name = rs.getString("FoodActual_Name");
	                String priceActual_Name = rs.getString("priceActual_Name");
	            	String foodName = rs.getString("food_name");
	                String email = rs.getString("food_email");
	                String destination = rs.getString("food_destination");
	                String date = rs.getString("food_date");
	                String select = rs.getString("food_select");
	                String message = rs.getString("food_message");
	                String phone = rs.getString("food_phone");
	               
	                
	                out.println("<tr>");
	                out.println("<td>" + FoodActual_Name + "</td>");
	                out.println("<td>" + priceActual_Name + "</td>");
	                out.println("<td>" + foodName + "</td>");
	                out.println("<td>" + email + "</td>");
	                out.println("<td>" + destination + "</td>");
	                out.println("<td>" + date + "</td>");
	                out.println("<td>" + select + "</td>");
	                out.println("<td>" + message + "</td>");
	                out.println("<td>" + phone + "</td>");
	                out.println("</tr>");
	            }

	            out.println("</table>");
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
	}