package data;

public class Poem {

	private String id;
	private String title;
	private String author;
	private String content;
	private String publish;
	
	public Poem(String id, String title, String author, String content, String publish) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.content = content;
		this.publish = publish;
	}

	public String getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getAuthor() {
		return author;
	}
	
	public String getContentr() {
		return content;
	}

	public String getPublish() {
		return publish;
	}
	
	
}
