package Action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.opensymphony.xwork2.Action;

import Model.Author;
import Model.Book;
import Service.BookService;

public class UpdateBook implements Action {
	
	private Book book = new Book();
	private String title;
	private List<Book> bookDetails;
	private List<Author> authorDetails;
	

	@Override
	public String execute() throws Exception {
		BookService bs = new BookService();
		setBookDetails(bs.updateBook(book));
		setAuthorDetails(bs.getAuthorDetails(title));
		return SUCCESS;
	}



	public Book getBook() {
		return book;
	}



	public void setBook(Book book) {
		this.book = book;
	}



	public List<Book> getBookDetails() {
		return bookDetails;
	}



	public void setBookDetails(List<Book> bookDetails) {
		this.bookDetails = bookDetails;
	}


	public List<Author> getAuthorDetails() {
		return authorDetails;
	}



	public void setAuthorDetails(List<Author> authorDetails) {
		this.authorDetails = authorDetails;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	/*public void setTitle(String title) throws UnsupportedEncodingException {
		byte b[] =title.getBytes("ISO-8859-1");
		this.title = new String(b, "UTF-8");
	}*/

}
