package com.yuritelkov.spring.book.book_mvc_test.controller;


import com.yuritelkov.spring.book.book_mvc_test.entity.Book;
import com.yuritelkov.spring.book.book_mvc_test.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {

        List<Book> allBooks = bookService.getAllBooks();
        model.addAttribute("allBook", allBooks);

        return "all-books";
    }

    @RequestMapping("/addNewBook")
    public String addNewBook(Model model) {

        Book book = new Book();
        model.addAttribute("book", book);

        return "book-info";
    }

    @RequestMapping("/saveBook")
    public String saveBook(@ModelAttribute("book") Book book) {

        bookService.saveBook(book);


        return "redirect:/";
    }

    @RequestMapping("/updateInfo")
    public String updateEmployee(@RequestParam("bookId") int id, Model model) {

        Book book = bookService.getBook(id);
        model.addAttribute("book", book);
        return "book-info";
    }

    @RequestMapping("/deleteBook")
    public String deleteBook(@RequestParam("bookId") int id) {
        bookService.deleteBook(id);

        return "redirect:/";
    }

}
