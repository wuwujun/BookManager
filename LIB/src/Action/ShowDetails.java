package Action;

import java.io.UnsupportedEncodingException;
import java.util.List;


import com.opensymphony.xwork2.Action;

import Model.Author;
import Model.Book;
import Service.BookService;

public class ShowDetails implements Action {
	private String search_bookname;
	private List<Author> authorDetails;
	private List<Book> bookDetails;

	public String ShowAllDetails() throws Exception {
		BookService bs = new BookService();
		setBookDetails(bs.getBookDetails(search_bookname));
		setAuthorDetails(bs.getAuthorDetails(search_bookname));
		return SUCCESS;
	}
	
	/*public String ShowBookDetails() throws Exception {
		BookService bs = new BookService();
		setBookDetails(bs.getBookDetails(search_bookname));
		return SUCCESS;
	}*/
	
	//@Override
	/*public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}*/
	
	public String getSearch_bookname() {
		return search_bookname;
	}

	public void setSearch_bookname(String search_bookname) throws UnsupportedEncodingException {
		this.search_bookname = new String(search_bookname.getBytes("ISO-8859-1"),"UTF-8");
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

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
