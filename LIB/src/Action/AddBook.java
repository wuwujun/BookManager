package Action;

import com.opensymphony.xwork2.Action;

import Model.Author;
import Model.Book;
import Service.BookService;

public class AddBook implements Action {
	
	private Book book;
	private Author author;
	
	@Override
	public String execute() throws Exception {
		BookService bk= new BookService();
		if (bk.addBook(book, author))
			return SUCCESS;
		else 
			return ERROR;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}
	
}
