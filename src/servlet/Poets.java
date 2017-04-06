package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.User;
import manager.UserManager;

public class Poets extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserManager um = new UserManager();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	if ( !um.isUserLoggedIn(request) )
    	{
    		response.sendRedirect("./login");
    		return;
    	}
    	
        User user = um.getCurrentUser(request);
        request.setAttribute("name", user.getName());
        
    	request.getRequestDispatcher("/poets.jsp").forward(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
