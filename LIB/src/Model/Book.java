package Model;

public class Book {
	private String author_id;
	private String isbn;
	private String title;
	private String publisher;
	private String publish_date;
	private Float price;
	
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPublish_date() {
		return publish_date;
	}
	public void setPublish_date(String publish_date) {
		this.publish_date = publish_date;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	
	public Book() {
		
	}
	public Book(String author_id, String isbn, String title, String publisher, String publish_date, Float price) {
		super();
		this.author_id = author_id;
		this.isbn = isbn;
		this.title = title;
		this.publisher = publisher;
		this.publish_date = publish_date;
		this.price = price;
	}
	

}
