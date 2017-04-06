package manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import data.Poem;
import data.SQLConnector;

public class PoemManager {

	SQLConnector sqlConnector = new SQLConnector();
	
	public Poem createPoemByResultSet(ResultSet rs)
	{
		Poem poem = null;
		try {
				poem = new Poem(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
		} catch (SQLException e) {
			System.err.println("ERROR! createPoemByResultSet - " + e.getMessage());
		}
	
		return poem;
	}
	
	public List<Poem> getPoemsByPoet(String authorId)
	{
		ResultSet rs = null;
		rs = sqlConnector.getData("SELECT * FROM poems WHERE author = '" + authorId + "'");
		
		List<Poem> poems = new ArrayList<>();
		try {
			while( rs.next() )
			{
				poems.add(createPoemByResultSet(rs));
			}
		} catch (SQLException e) {
			System.err.println("ERROR! getPoemsByPoet - "  + e.getMessage());
		}
		
		return poems;
	}
}
