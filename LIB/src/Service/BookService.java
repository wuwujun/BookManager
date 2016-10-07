package Service;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import Dao.DB;
import Model.Author;
import Model.Book;

public class BookService {

	public List<Book> getBookTitle(String name) {
		List<Book> bookTitle = new ArrayList<>();
		DB db = new DB();
		Connection conn = db.getConn();
		String sql = "SELECT `book`.* FROM `author` LEFT JOIN `book` ON `author`.`AuthorID` = `book`.`AuthorID` WHERE `author`.`Name` = '" + name + "'";
		PreparedStatement pstmt;
		//System.out.println("titlesql" + sql);
		
		try {
			bookTitle.clear();
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while (rs.next()) {
	        	bookTitle.add(new Book(rs.getString(3), rs.getString(1), rs.getString(2), rs.getString(4), rs.getString(5), rs.getFloat(6)));
	        }
	        pstmt.close();
	        conn.close();
	        return bookTitle;
		}catch (SQLException e) {
	        e.printStackTrace();
	    }
		return bookTitle;
	}
	
	
	public List<Book> getBookDetails(String search_bookname) {
		List<Book> bookDetails = new ArrayList<>();
		DB db = new DB();
		Connection conn = db.getConn();
		String sql = "SELECT * FROM `book` WHERE `book`.`Title` = '" + search_bookname + "'";
		PreparedStatement pstmt;
		System.out.println("here " + sql);
		
		try {
			bookDetails.clear();
			pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while (rs.next()) {
	        	bookDetails.add(new Book(rs.getString(3), rs.getString(1), rs.getString(2), rs.getString(4), rs.getString(5), rs.getFloat(6)));
	        }
	        pstmt.close();
	        conn.close();
	        return bookDetails;
		}catch (SQLException e) {
	        e.printStackTrace();
	    }
		return bookDetails;
	}
	
	public List<Author> getAuthorDetails(String search_bookname) {
		List<Author> authorDetails = new ArrayList<>();
		DB db = new DB();
		Connection conn = db.getConn();
		String sql = "SELECT `author`.* FROM `book` LEFT JOIN `author` ON `book`.`AuthorID` = `author`.`AuthorID` WHERE `book`.`Title` = '" + search_bookname + "'";
		PreparedStatement pstmt;
		System.out.println("here " + sql);
		
		try {
			authorDetails.clear();
			pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        while (rs.next()) {
	        	authorDetails.add(new Author(rs.getString(4), rs.getString(2), rs.getString(1), rs.getInt(3)));
	        }
	        pstmt.close();
	        conn.close();
	        return authorDetails;
		}catch (SQLException e) {
	        e.printStackTrace();
	    }
		return authorDetails;	
	}
	
	public void deleteBook(String isbn) {
		int i = 0;
		DB db = new DB();
		Connection conn = db.getConn();
		String sql = "DELETE FROM `book` WHERE `book`.`ISBN` = '" + isbn + "'";
		PreparedStatement pstmt;
		System.out.println("here " + sql);
		
		try {
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			i = pstmt.executeUpdate();
			System.out.println("resultbook: " + i);
			pstmt.close();
			conn.close();
		}catch  (SQLException e) {
	        e.printStackTrace();
		}
	}


	public boolean addBook(Book book, Author author) throws UnsupportedEncodingException {
		int i = 0;
		
		//String title = new String(book.getTitle().getBytes("ISO-8859-1"), "UTF-8");
		//String publisher = new String(book.getPublisher().getBytes("ISO-8859-1"), "UTF-8");
		//String name = new String(author.getName().getBytes("ISO-8859-1"), "UTF-8");
		//String country = new String(author.getCountry().getBytes("ISO-8859-1"), "UTF-8");
		
		DB db = new DB();
		Connection conn = db.getConn();
		String sql1 = "SELECT * FROM `book`";
		String sql2 = "INSERT INTO `book` (`ISBN`, `Title`, `AuthorID`, `Publisher`, `PublishDate`, `Price`) VALUES('"+ book.getIsbn() +
				"', '"+ book.getTitle() + "', '" + book.getAuthor_id() + "', '" + book.getPublisher() + "', '" + book.getPublish_date() + "', '" + book.getPrice() + "')";
		String sql3 = "SELECT * FROM `author`";
		String sql4 = "INSERT INTO `author` (`AuthorID`, `Name`, `Age`, `Country`) VALUES('" + book.getAuthor_id() + "', '" + author.getName() + 
				"', '" + author.getAge() + "', '" + author.getCountry() +"')";
		
	
		PreparedStatement pstmt1;
		PreparedStatement pstmt2;
		PreparedStatement pstmt3;
		PreparedStatement pstmt4;
		
		boolean flag1 = true;
		boolean flag2 = true;
		
		try {
			pstmt3 = (PreparedStatement) conn.prepareStatement(sql3);
			ResultSet rs3 = pstmt3.executeQuery();
			while (rs3.next()) {
				if (rs3.getString("AuthorID").equals(book.getAuthor_id())) {
					flag1 = false;
					break;
				}
			}
			pstmt3.close();                 ///////
			
			if (flag1) {
				pstmt4 = (PreparedStatement) conn.prepareStatement(sql4);
				i = pstmt4.executeUpdate();
				System.out.println("resultauthor: " + i);
				//pstmt3.setString(1, book.getAuthor_id());
				//pstmt3.setString(2, name);
				//pstmt3.setInt(3, author.getAge());
				//pstmt3.setString(4, country);
				pstmt4.close();                           ///////
			}
			
			
			pstmt1 = (PreparedStatement) conn.prepareStatement(sql1);
			ResultSet rs1 = pstmt1.executeQuery();
			while (rs1.next()) {
				if (rs1.getString("ISBN").equals(book.getIsbn())) {
					flag2 = false;
					break;
				}
			}
			pstmt1.close();
			
			if (flag2) {
				pstmt2 = (PreparedStatement) conn.prepareStatement(sql2);
				i = pstmt2.executeUpdate();
				System.out.println("resultbook: " + i);
				//pstmt2.setString(1, book.getIsbn());
				//pstmt2.setString(2, title);
				//pstmt2.setString(3, book.getAuthor_id());
				//pstmt2.setString(4, publisher);
				//pstmt2.setString(5, book.getPublish_date());
				//pstmt2.setFloat(6, book.getPrice());
				pstmt2.close();
			}
			
			//System.out.println("×÷Õß " + String.valueOf(flag1));
			//System.out.println("Í¼Êé " + String.valueOf(flag2));
			
			conn.close();
		}catch  (SQLException e) {
	        e.printStackTrace();
		}
		return flag2;
	}


	
	
	public List<Book> updateBook(Book book) throws UnsupportedEncodingException {
		int i = 0;
		
		List<Book> books = new ArrayList<>();
		
		DB db = new DB();
		Connection conn = db.getConn();
		
		//String publisher = new String(book.getPublisher().getBytes("ISO-8859-1"), "UTF-8");
		
		String sql1 = "UPDATE `book` SET `PublishDate` = '" + book.getPublish_date() + "', `Price` = '" + book.getPrice()
			+ "', `Publisher` = '" + book.getPublisher() + "' WHERE `AuthorID` = '" + book.getAuthor_id() + "'";
		String sql2 = "SELECT * FROM `book` WHERE `AuthorID` = '" + book.getAuthor_id() + "'";
		
		PreparedStatement pstmt1, pstmt2;
		System.out.println("here " + sql1);
		
		try {
			pstmt1 = (PreparedStatement) conn.prepareStatement(sql1);
			i = pstmt1.executeUpdate();
			System.out.println("resultbook: " + i);
			pstmt1.close();
			
			pstmt2 = (PreparedStatement) conn.prepareStatement(sql2);
			ResultSet rs = pstmt2.executeQuery();
	        while (rs.next()) {
	        	books.add(new Book(rs.getString(3), rs.getString(1), rs.getString(2), rs.getString(4), rs.getString(5), rs.getFloat(6)));
	        }
			pstmt2.close();
			conn.close();
			return books;
			
		}catch  (SQLException e) {
	        e.printStackTrace();
		}
	
		return books;
		
	}


	public List<Author> updateAuthor(Author author) throws UnsupportedEncodingException {
		int i = 0;
		
		List<Author> authors = new ArrayList<>();
		
		DB db = new DB();
		Connection conn = db.getConn();
		
		//String name = new String(author.getName().getBytes("ISO-8859-1"), "UTF-8");
		//String country = new String(author.getCountry().getBytes("ISO-8859-1"), "UTF-8");
		
		String sql1 = "UPDATE `author` SET `Name` = '" + author.getName() + "', `Country` = '" + author.getCountry() + "', `Age` = '" + author.getAge() + "' WHERE `AuthorID` = '" + author.getAuthor_id() + "'";
		String sql2 = "SELECT * FROM `author` WHERE `AuthorID` = '" + author.getAuthor_id() + "'";
		
		PreparedStatement pstmt1, pstmt2;
		System.out.println("here " + sql1);
		
		try {
			pstmt1 = (PreparedStatement) conn.prepareStatement(sql1);
			i = pstmt1.executeUpdate();
			System.out.println("resultauthor: " + i);
			pstmt1.close();
			
			pstmt2 = (PreparedStatement) conn.prepareStatement(sql2);
			ResultSet rs = pstmt2.executeQuery();
		    while (rs.next()) {
		       authors.add(new Author(rs.getString(4), rs.getString(2), rs.getString(1), rs.getInt(3)));
		    }
			
		    pstmt2.close();
			conn.close();
			
			return authors;
		}catch  (SQLException e) {
	        e.printStackTrace();
		}
		return authors;
	}


	
	
	
	
	
	
	
	
	


	

	
	


}
