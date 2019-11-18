package com.RaiderTrade.api.Controller;

import com.RaiderTrade.api.Entity.Book;
import java.util.List;
import com.RaiderTrade.api.Entity.User;
import com.RaiderTrade.api.Repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.RaiderTrade.api.Service.UserService;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private BookRepository bookRepository;
    
    // Index page with sign up form
    @GetMapping({"/", "/index"})
    public String index(Model userModel) {
        User user = new User();
        userModel.addAttribute("user", user);
        return "index";
    }
    
    // Create a new user
    @PostMapping({"/", "/index"})
    public ModelAndView createUser(@ModelAttribute("user") User user,
                                    Model userModel) {
        try {
            User newUser = userService.createUser(user);
            userModel.addAttribute("firstName", newUser.getFirstName());
            userModel.addAttribute("registerSuccessMsg", "Registration Succeed!");
            return new ModelAndView("signin", "model", userModel);            
            
        } catch(NullPointerException ex) {
            return new ModelAndView("index", "error",
                                    "<div class=\"row justify-content-center bg-light mt-3\">\n" +
"                                       <strong class=\"text-center text-danger\">Either the user name exists or password doesn't match</strong>\n" +
"                                   </div>");            
        }
    }
    
    // Log in page
    @GetMapping("/signin") // localhost:8080/signin
    public String login(Model model) {
        return "signin";  // signin.jsp
    }
    
    // Authenticate user
    @PostMapping("/signin")
    public ModelAndView verifyUser(@RequestParam String userName,
                                   @RequestParam String password,
                                    Model model) {
        try {
            User user = userService.authenticateUser(userName, password);
            List<Book> bookList = bookRepository.findAll();
            model.addAttribute("bookList", bookList);        
            model.addAttribute("firstName", user.getFirstName());
            model.addAttribute("book", new Book());
        
            return new ModelAndView("signedin", "model", model);            
            
        } catch(NullPointerException ex) {
            return new ModelAndView("signin", "error",
                                    "<div class=\"row justify-content-center bg-light mt-3\">\n" +
"                                       <strong class=\"text-center text-danger\">The user name or password doesn't match</strong>\n" +
"                                   </div>");
        }
    }

    // Signed in view
    @GetMapping("/signedin")
    public String signedInView() {
        return "signedin";
    }
    
    // Add book from signed in view
    @PostMapping("/signedin")
    public ModelAndView addBook(@ModelAttribute("book") Book book) {
        bookRepository.save(book);
        List<Book> bookList = bookRepository.findAll();
        return new ModelAndView("signedin", "bookList", bookList);
    }
 
}
