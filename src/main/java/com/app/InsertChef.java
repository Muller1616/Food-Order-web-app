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

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class InsertChef
 */
@WebServlet("/InsertChef")
public class InsertChef extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertChef() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String chief_name = request.getParameter("chief_name");
        String chief_position = request.getParameter("chief_position");
        String chief_password = request.getParameter("chief_password");
      
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Resturant2", "root", "muller16");
            Statement st = con.createStatement();

           
            
           

            String insertQuery = "INSERT INTO Chief (chief_name,chief_position,  chief_password) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(insertQuery);

            preparedStatement.setString(1, chief_name);
            preparedStatement.setString(2, chief_position);
            preparedStatement.setString(3, chief_password);
            
            
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                request.setAttribute("successMessage", "Registration successful!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("ChefInsertSucess.jsp");
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
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
