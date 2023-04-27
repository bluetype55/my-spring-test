package com.test.project.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.test.project.dto.BookDTO;

@Mapper
public interface BookDAO {
	List<BookDTO> selectAllBooks();
    BookDTO selectBookById(int id);
    void insertBook(BookDTO book);
    void updateBook(BookDTO book);
    void deleteBook(int id);
    
}