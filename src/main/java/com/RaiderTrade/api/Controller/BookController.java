package com.RaiderTrade.api.Controller;

import com.RaiderTrade.api.Model.Book;
import com.RaiderTrade.api.Model.User;
import com.RaiderTrade.api.Repository.BookRepository;
import com.RaiderTrade.api.Repository.UserRepository;
import com.RaiderTrade.api.Service.SecurityService;
import com.RaiderTrade.api.Service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    private static final Logger logger = LoggerFactory.getLogger(BookController.class);

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
    public String addBook(@ModelAttribute("bookForm") Book book) {
        String loggedInUsername = securityService.findLoggedInUsername();
        User user = userService.findByUsername(loggedInUsername);
        book.setUserId(user);
        bookRepository.save(book);
        return "index";
    }
    
}
