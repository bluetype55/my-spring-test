package com.test.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.project.dao.BookDAO;
import com.test.project.dto.BookDTO;

@Service
public class BookService {
	
	@Autowired
    private BookDAO bookDAO;

    public List<BookDTO> selectAllBooks() {
        return bookDAO.selectAllBooks();
    }

    public BookDTO selectBookById(int id) {
        return bookDAO.selectBookById(id);
    }

    public void insertBook(BookDTO bookDTO) {
        bookDAO.insertBook(bookDTO);
    }

    public void updateBook(BookDTO bookDTO) {
        bookDAO.updateBook(bookDTO);
    }

    public void deleteBook(int id) {
        bookDAO.deleteBook(id);
    }
}

