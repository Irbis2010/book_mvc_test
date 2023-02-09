package com.yuritelkov.spring.book.book_mvc_test.dao;



import com.yuritelkov.spring.book.book_mvc_test.entity.Book;

import java.util.List;

public interface BookDao {
    public List<Book> getOllBook();

    public void saveBook(Book book);

    public Book getBook(int id);

    public void deleteBook(int id);
}
