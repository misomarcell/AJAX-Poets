package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import data.Poem;
import manager.PoemManager;
import manager.UserManager;

public class GetPoets extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserManager um = new UserManager();
		PoemManager pm = new PoemManager();
		
		List<Poem> poems = pm.getPoemsByPoet(um.getCurrentUser(request).getId());
        String poemsJSON = new Gson().toJson(poems);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(poemsJSON);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST");
		request.getRequestDispatcher("./poets.jsp").forward(request, response);
	}

}
