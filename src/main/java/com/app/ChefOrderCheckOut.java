package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChefOrderCheckOut
 */
@WebServlet("/ChefOrderCheckOut")
public class ChefOrderCheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChefOrderCheckOut() {
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
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        String FoodId = request.getParameter("FoodId");

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Resturant2", "root",
	                    "muller16");
	            Statement st = con.createStatement();

	            String deleteQuery = "DELETE FROM Fooddrinkorder WHERE ID = ?";
	            PreparedStatement preparedStatement = con.prepareStatement(deleteQuery);

	            preparedStatement.setString(1, FoodId);

	            int rowsAffected = preparedStatement.executeUpdate();

	            if (rowsAffected > 0) {
	                request.setAttribute("successMessage", "Registration successful!");
	                RequestDispatcher dispatcher = request.getRequestDispatcher("ChefCheckOutSucess.jsp");
	                dispatcher.forward(request, response);
	                return;
	               
	            } else {
	                request.setAttribute("errorMessage1", "Registration failed. Please try again.");
	            }
	            st.close();
	            con.close();

	        } catch (ClassNotFoundException e) {
	            out.print("<h1>Registration failed due to server exception</h1><br>");
	            e.printStackTrace();
	        } catch (SQLException e) {
	            out.print("<h1>Registration failed due to SQL exception</h1><br>");
	            e.printStackTrace();
	        }

	        RequestDispatcher dispatcher = request.getRequestDispatcher("DeleteChefResult.jsp");
	        dispatcher.forward(request, response);
	    }

}
