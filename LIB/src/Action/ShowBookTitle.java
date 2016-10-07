package Action;

import java.util.List;

import com.opensymphony.xwork2.Action;
import java.io.UnsupportedEncodingException;

//import Model.Author;
import Model.Book;
import Service.BookService;

public class ShowBookTitle implements Action {
	private List<Book> bookTitle;
	private String name;
	

	@Override
	public String execute() throws Exception {
		BookService bs = new BookService();
		
		if (!bs.getBookTitle(name).isEmpty() && bs.getBookTitle(name) != null) {
			setBookTitle(bs.getBookTitle(name));
			return SUCCESS;
		}
		return ERROR;         
		
	}

	public List<Book> getBookTitle() {
		return bookTitle;
	}


	public void setBookTitle(List<Book> bookTitle) {
		this.bookTitle = bookTitle;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	/*public void setName(String name) throws UnsupportedEncodingException {
		this.name = new String(name.getBytes("ISO-8859-1"),"UTF-8");
	}*/

}
