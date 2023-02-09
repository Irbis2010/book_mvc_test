package com.yuritelkov.spring.book.book_mvc_test.service;


import com.yuritelkov.spring.book.book_mvc_test.dao.BookDao;
import com.yuritelkov.spring.book.book_mvc_test.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;

    @Override
    @Transactional
    public List<Book> getAllBooks() {

        return bookDao.getOllBook();
    }

    @Override
    @Transactional
    public void saveBook(Book book) {
        bookDao.saveBook(book);
    }

    @Override
    @Transactional
    public Book getBook(int id) {
        return bookDao.getBook(id);
    }

    @Override
    @Transactional
    public void deleteBook(int id) {
      bookDao.deleteBook(id);
    }
}
