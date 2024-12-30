package com.app;

import java.io.*;
import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//create table users( userId varchar(20),password varchar(20));
//insert into users( userId ,password) values ('user','12345');





/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String userId = request.getParameter("UserId");
        String password = request.getParameter("Password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Resturant2", "root", "muller16");
            Statement st = conn.createStatement();

            String query1 = "SELECT * FROM Chief";
            ResultSet rs1 = st.executeQuery(query1);

            boolean isChief = false;
            while (rs1.next()) {
                String chief_name = rs1.getString("chief_name");
                String chief_password = rs1.getString("chief_password");
                if (userId.equals(chief_name) && password.equals(chief_password)) {
                    isChief = true;
                    break;
                }
            }

            if (isChief) {
                response.sendRedirect(request.getContextPath() + "/bootstrap-restaurant-template/Chief-Dashboard-1/index.jsp");
            } else {
                String query = "SELECT * FROM users WHERE userId='" + userId + "' AND password='" + password + "'";
                ResultSet rs = st.executeQuery(query);

                if (rs.next()) {
                    // Check if the userId and password match the additional entries
                    if ((userId.equals("RMG/253/1") && password.equals("password123")) ||
                            (userId.equals("RMG/251/1") && password.equals("pass456"))) {
                        response.sendRedirect(request.getContextPath() + "/bootstrap-restaurant-template/Admin-Dashboard-01/index.jsp");
                    } else {
                        response.sendRedirect(request.getContextPath() + "/bootstrap-restaurant-template/index.jsp");
                    }
                } else {
                    request.setAttribute("errorMessage1", "Use appropriate username or password.");
                    // Forward to Login.jsp to display the error message
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
                    dispatcher.forward(request, response);
                }

                rs.close();
            }

            rs1.close();
            st.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            out.print("<h1> Login failed by server exception </h1><br>");
            e.printStackTrace();
        } catch (SQLException e) {
            out.print("<h1> Login failed by SQL exception </h1><br>");
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
