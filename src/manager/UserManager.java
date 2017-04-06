package manager;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import data.SQLConnector;
import data.User;
import data.Data;

public class UserManager {

	private SQLConnector sqlConnector = new SQLConnector();
	
	public User getUserByEmail(String email)
	{
		ResultSet rs = null;
		rs = sqlConnector.getData("SELECT * FROM users WHERE email = '" + email + "'");
		

		User user = createUsersByResultSet(rs);
		return user;
	}
	
	public User createUsersByResultSet(ResultSet rs)
	{
		User user = null;
		try {	
			if( rs.next() )
			{
				user = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (SQLException e) {
			System.err.println("ERROR! createUsersByResultSet - " + e.getMessage());
		}
		
		return user;
	}
	
	public Boolean isUserLoggedIn(HttpServletRequest request)
	{
		Data data = Data.newInstance();
		if (data.getSessions().containsKey(getCookieValue("sessionID", request)))
		{
			return true;
		}
		
		return false;
	}
	
	public User getUserBySessionID(String sessionID) {
		Data data = Data.newInstance();
		String id = data.getIdBySessionID(sessionID);
		ResultSet rs = null;
		
		try {
			rs = sqlConnector.getData("SELECT * FROM users WHERE id = '" + id + "';");
			return createUsersByResultSet(rs);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return null;
	}
	
	public User getCurrentUser(HttpServletRequest request)
	{
		return getUserBySessionID(getCookieValue("sessionID", request));
	}
	
	public String getCookieValue(String cookieName, HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookie.getName().equals(cookieName)) {
					return cookie.getValue();
				}
			}
			return null;
		}
		return null;
	}
	

}
