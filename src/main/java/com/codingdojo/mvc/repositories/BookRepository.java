package com.codingdojo.mvc.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.mvc.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {
	//This method retrieves all the books from the database	
	List<Book> findAll();
	
	//This method finds books with descriptions containing the search string
	List<Book> findByDescriptionContaining(String search);
	
	//This method counts how many titles contain a certain string
	Long countByTitleContaining(String search);
	
	//This method deletes a book that starts with a specific title
	Long deleteByTitleStartingWith(String search);
	
//	void deleteById(Long id);
	
	Long setId(Long id);
	
	void setTitle(String title);
	
	void setDescription(String desc);
	
	void setLanguage(String language);
	
	void setNumberOfPages(Integer numberOfPages);
	
	
}
