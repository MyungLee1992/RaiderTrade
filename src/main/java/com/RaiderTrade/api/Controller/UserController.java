package com.RaiderTrade.api.Controller;

import com.RaiderTrade.api.Model.User;
import com.RaiderTrade.api.Service.UserService;
import com.RaiderTrade.api.Validator.UserValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.validation.Valid;

@Controller
public class UserController implements WebMvcConfigurer {

    @Autowired
    private UserService userService;

    @Autowired
    private UserValidator userValidator;

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

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
    public String createUser(@Valid @ModelAttribute("userForm") User userForm, BindingResult result) {
        userValidator.validate(userForm, result);

        if(result.hasErrors())
            return "signup";

        userService.save(userForm);

        return "redirect:/signin";

    }

    // Sign in page
    @GetMapping("/signin")
    public String signIn(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "signin";
    }
    
    // Authenticate user
    @PostMapping("/signin")
    public String verifyUser(@RequestParam(name = "username") String username,
                             @RequestParam(name = "password") String password) {

        User existingUser = userService.authenticateUser(username, password);
        if(existingUser == null) {
            return "signin";
        }

        return "index";
    }

}
