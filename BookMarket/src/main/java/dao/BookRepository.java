package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = null;
	
	BookRepository(){
		Book b1 = new Book("B1234", "HTML5+CSS3", 15000);
		b1.setAuthor("박승현");
		b1.setDescription("워드나 PPT 문서를 만들 수 있나요?");
		b1.setPublisher("한빛미디어");
		b1.setCategory("Hello Coding");
		b1.setUnitsInStock(1000);
		b1.setTotalPages(200);
		b1.setRelaeaseDate("22년5월");
		b1.setCondition("new");
		
		listOfBooks.add(b1);
	}
	
	public static BookRepository getInstance() {
		if(instance == null) {
			instance = new BookRepository();
		}
		return instance;
	}
	
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	
}
