package com.RaiderTrade.api.Controller;

import com.RaiderTrade.api.Model.User;
import com.RaiderTrade.api.Repository.BookRepository;
import com.RaiderTrade.api.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.validation.Valid;

@Controller
public class UserController implements WebMvcConfigurer {

    @Autowired
    private UserService userService;
    
    @Autowired
    private BookRepository bookRepository;

    // Index page
    @GetMapping("/")
    public String index() {
        return "index";
    }

    // Sign up page
    @GetMapping("/signup")
    public String signUp(Model userModel) {
        userModel.addAttribute("userForm", new User());
        return "signup";
    }
    // Create a new user
    @PostMapping("/signup")
    public ModelAndView createUser(@Valid @ModelAttribute("userForm") User userForm,
                             BindingResult result,
                             Model userModel) {

        if(result.hasErrors())
            return new ModelAndView("signup");

        User newUser = userService.createUser(userForm);
        if(newUser == null) {
            userModel.addAttribute("error", "The user name or password doesn't match");
            return new ModelAndView("signup", "model", userModel);
        }

        userModel.addAttribute("registerSuccessMsg", "Registration Succeed!");
        return new ModelAndView("signin", "model", userModel);
    }

    // Log in page
    @GetMapping("/signin")
    public String signIn() {
        return "signin";
    }
    
    // Authenticate user
    @PostMapping("/signin")
    public ModelAndView verifyUser(@RequestParam String userName,
                                   @RequestParam String password,
                                   Model userModel) {

        User existingUser = userService.authenticateUser(userName, password);

        if(existingUser == null) {
            userModel.addAttribute("error", "The user name or password doesn't match");
            return new ModelAndView("signin", "model", userModel);
        } else {
            return new ModelAndView("signedin");
        }
    }

    // Signed in view
    @GetMapping("/signedin")
    public String signedInView() {
        return "signedin";
    }

 
}
