package com.codingdojo.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.repositories.BookRepository;

@Service
public class BookService {
	//Adding the book repository as a dependency
	private final BookRepository bookRepo;
	
	public BookService(BookRepository bookRepo) {
		this.bookRepo = bookRepo;
	}
	
	//returns all the books
	public List<Book> allBooks(){
		return bookRepo.findAll();
	}
	
	//Creates a book
	public Book createBook(Book b) {
		return bookRepo.save(b);
	}
	
	//retrieves a book
	public Book findBook(Long id) {
		Optional<Book> optionalBook =bookRepo.findById(id);
		if(optionalBook.isPresent()) {
			return optionalBook.get();
		}else {
			return null;
		}
	}
	
	public Book updateBook(Long id,String title,String desc, String language, Integer pages) {
		Optional<Book> optionalBook =bookRepo.findById(id);
		if(optionalBook.isPresent()) {
			Book book = optionalBook.get();
			book.setId(id);
			book.setTitle(title);
			book.setDescription(desc);
			book.setLanguage(language);
			book.setNumberOfPages(pages);
			return bookRepo.save(book);
		}else {
			return null;
		}
	}
//	public Book updateBook(Long id, Book book) {
//		Optional<Book> optionalBook =bookRepo.findById(id);
//		if(optionalBook.isPresent()) {
//			bookRepo.setId(id);
//		}
//		return bookRepo.save(book);
//	}
	
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
}
