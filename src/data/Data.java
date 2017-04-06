package data;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import manager.UserManager;

public class Data {

	
	private static Data singleton = new Data( );	
	private Data() {}
	private Map<String, String> sessions = new HashMap<>();
	
	
	public static Data newInstance( ) {
		return singleton;
	}
	
	public void addSession(String sessionID, String userID)
	{
		sessions.put(sessionID, userID);
	}
	
	public Map<String, String> getSessions()
	{
		return sessions;
	}
	
	public Boolean isUserLoggedIn(HttpServletRequest request)
	{
		UserManager um = new UserManager();
		if (sessions.containsKey(um.getCookieValue("sessionID", request)))
		{
			return true;
		}
		
		return false;
	}
	
	public String getIdBySessionID(String sessionID)
	{
		return sessions.get(sessionID);
	}
}
