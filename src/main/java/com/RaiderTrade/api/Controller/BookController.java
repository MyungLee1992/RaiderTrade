package com.RaiderTrade.api.Controller;

import com.RaiderTrade.api.Entity.Book;
import com.RaiderTrade.api.Repository.BookRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
    
    @Autowired
    private BookRepository bookRepository;
    
    // Display all books
    @GetMapping("/searched")
    public ModelAndView getAllBooks(Model model) {
        List<Book> bookList = bookRepository.findAll();
        model.addAttribute("bookList", bookList);
        return new ModelAndView("searched", "bookList", bookList);
    }
    
}
