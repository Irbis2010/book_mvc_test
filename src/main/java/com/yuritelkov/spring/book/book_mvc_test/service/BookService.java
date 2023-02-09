package com.yuritelkov.spring.book.book_mvc_test.service;



import com.yuritelkov.spring.book.book_mvc_test.entity.Book;

import java.util.List;

public interface BookService {
    public List<Book> getAllBooks();

    public void saveBook (Book employee);

    public Book getBook(int id);

    public void deleteBook(int id);
}
