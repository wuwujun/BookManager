package Action;

import com.opensymphony.xwork2.Action;

import Service.BookService;

public class DeleteBook implements Action {
	private String isbn;
	
	

	@Override
	public String execute() throws Exception {
		BookService bs = new BookService();
		bs.deleteBook(isbn);
		return SUCCESS;
	}



	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

}
