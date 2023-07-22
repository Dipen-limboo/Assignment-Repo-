package Challenge;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String Email = request.getParameter("Email");
		String psw = request.getParameter("psw");
		String cpsw = request.getParameter("cpsw");
		RequestDispatcher rd = null;
		Connection conn = null;
		if(fname  == null || fname =="") {
			request.setAttribute("status", "invalidFname");
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		if(lname  == null || lname =="") {
			request.setAttribute("status", "invalidLname");
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		if(Email  == null || Email =="") {
			request.setAttribute("status", "invalidEmail");
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		if(psw  == null || psw =="") {
			request.setAttribute("status", "invalidpsw");
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		} else if (!psw.equals(cpsw)){
			request.setAttribute("status", "invalidpswConfig");
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false", "root", "");
			PreparedStatement ps = conn.prepareStatement("Insert into userinfo(fname, lname, Email, psw) values(?,?,?,?)");
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, Email);
			ps.setString(4, psw);
			
			int count = ps.executeUpdate();
			rd = request.getRequestDispatcher("./register.jsp");
			if(count > 0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "failed");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
