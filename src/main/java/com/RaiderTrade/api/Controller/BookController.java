package com.RaiderTrade.api.Controller;

import com.RaiderTrade.api.Model.Book;
import com.RaiderTrade.api.Repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BookController {
    
    @Autowired
    private BookRepository bookRepository;
    
    // Display all books
    @GetMapping("/displayBooks")
    public ModelAndView getAllBooks(Model bookModel) {
        List<Book> bookList = bookRepository.findAll();
        bookModel.addAttribute("bookList", bookList);
        return new ModelAndView("displayBooks", "bookList", bookList);
    }

    // Book registration
    @GetMapping("/addBook")
    public String addBook(Model bookModel) {
        bookModel.addAttribute("bookForm", new Book());
        return "addBook";
    }

    // Add book
    @PostMapping("/addBook")
    public ModelAndView addBook(@ModelAttribute("bookForm") Book book) {
        bookRepository.save(book);
        return new ModelAndView("signedin");
    }
    
}
