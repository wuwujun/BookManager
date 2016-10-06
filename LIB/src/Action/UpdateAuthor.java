package Action;

import java.io.UnsupportedEncodingException;
import java.util.List;


import com.opensymphony.xwork2.Action;

import Model.Author;
import Model.Book;
import Service.BookService;

public class UpdateAuthor implements Action {
	
	private Author author = new Author();
	private List<Author> authorDetails;
	private List<Book> bookDetails;
	private String title;

	@Override
	public String execute() throws Exception {
		BookService bs = new BookService();
		setAuthorDetails(bs.updateAuthor(author));
		setBookDetails(bs.getBookDetails(title));
		return SUCCESS;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public List<Author> getAuthorDetails() {
		return authorDetails;
	}

	public void setAuthorDetails(List<Author> authorDetails) {
		this.authorDetails = authorDetails;
	}

	public List<Book> getBookDetails() {
		return bookDetails;
	}

	public void setBookDetails(List<Book> bookDetails) {
		this.bookDetails = bookDetails;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) throws UnsupportedEncodingException {
		byte b[] =title.getBytes("ISO-8859-1");
		this.title = new String(b, "UTF-8");
	}


}
