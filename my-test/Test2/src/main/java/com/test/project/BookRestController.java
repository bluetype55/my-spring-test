package com.test.project;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.test.project.dto.BookDTO;
import com.test.project.service.BookService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/books")
public class BookRestController {
	
	@Autowired
    private BookService bookService;

    @GetMapping
    public String getAllBooks() throws JsonProcessingException {
    	
    	List<BookDTO> booklist = bookService.selectAllBooks();
    	ObjectMapper objectMapper = new ObjectMapper();
    	String json = objectMapper.writeValueAsString(booklist);
    	System.out.println(json);
        return json;
    }

    @GetMapping("/{id}")
    public BookDTO getBookById(@PathVariable int id) {
        return bookService.selectBookById(id);
    }

    @PostMapping
    public void addBook(@RequestBody BookDTO bookDTO) {
        bookService.insertBook(bookDTO);
    }

    @PutMapping("/{id}")
    public void updateBook(@PathVariable int id, @RequestBody BookDTO bookDTO) {
        bookDTO.setId(id);
        bookService.updateBook(bookDTO);
    }

    @DeleteMapping("/{id}")
    public void deleteBook(@PathVariable int id) {
        bookService.deleteBook(id);
    }
}

