package servlet;

import java.io.IOException;
import java.security.SecureRandom;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.PasswordEncoder;
import data.User;
import manager.UserManager;
import data.Data;

public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	UserManager um = new UserManager();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (um.isUserLoggedIn(request))
		{
			response.sendRedirect("./poets");
			return;
		}
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = "";
		String password = "";
		
		email = request.getParameter("email");
		password = request.getParameter("pass");
		
		User user = um.getUserByEmail(email);
		if (user == null)
		{
			request.setAttribute("message", "Incorrect login credentials.");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			return;
		}
		
		if (user.getPassword().equals(PasswordEncoder.getMD5(password)))
		{
			generateSessionCookie(response, user.getId());
			response.sendRedirect("./poets");
			return;
		}else{
			request.setAttribute("message", "Incorrect login credentials.");
		}
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	public void generateSessionCookie(HttpServletResponse response, String userID) {
		final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz?-()=/%!+'x#><{@}";
		SecureRandom rnd = new SecureRandom();

		StringBuilder sb = new StringBuilder(16);
		for (int i = 0; i < 16; i++) {
			sb.append(AB.charAt(rnd.nextInt(AB.length())));
		}

		Cookie cookie = new Cookie("sessionID", sb.toString());
		response.addCookie(cookie);

		Data d = Data.newInstance();
		d.addSession(sb.toString(), userID);
	}

}
