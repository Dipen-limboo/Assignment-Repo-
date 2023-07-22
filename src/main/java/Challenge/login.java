package Challenge;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email = request.getParameter("Email");
		String psw = request.getParameter("psw");
		HttpSession session = request.getSession();
		RequestDispatcher dis = null;
		
		if(Email  == null || Email =="") {
			request.setAttribute("status", "invalidEmail");
			dis = request.getRequestDispatcher("portfolio.jsp");
			dis.forward(request, response);
		}
		if(psw  == null || psw =="") {
			request.setAttribute("status", "invalidpwd");
			dis = request.getRequestDispatcher("portfolio.jsp");
			dis.forward(request, response);
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users?useSSL=false", "root", "");
			PreparedStatement ps = conn.prepareStatement("select * from userinfo where Email = ? and psw = ?");
			ps.setString(1, Email);
			ps.setString(2, psw);
			
			ResultSet result = ps.executeQuery();
			if(result.next()) {
				session.setAttribute("Email", result.getString("Email"));
				dis = request.getRequestDispatcher("portfolio.jsp");
			} else {
				request.setAttribute("status", "failed");
				dis = request.getRequestDispatcher("Index.jsp");
			}
			dis.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

}
