package com.RaiderTrade.api.Controller;

import com.RaiderTrade.api.Model.User;
import com.RaiderTrade.api.Repository.UserRepository;
import com.RaiderTrade.api.Service.UserService;
import com.RaiderTrade.api.Validator.UserValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.validation.Valid;
import java.util.List;

@Controller
public class UserController implements WebMvcConfigurer {

    @Autowired
    private UserService userService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private UserRepository userRepository;

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    // Index page
    @GetMapping("/")
    public String index() {
        return "index";
    }

    // Sign up page
    @GetMapping("/users/new")
    public String signUp(Model userModel) {
        userModel.addAttribute("userForm", new User());
        return "users/new";
    }

    // Create a new user
    @PostMapping("/users/new")
    public String createUser(@Valid @ModelAttribute("userForm") User userForm, BindingResult result) {
        userValidator.validate(userForm, result);

        if(result.hasErrors())
            return "users/new";

        userService.save(userForm);

        return "redirect:login";
    }

    // Log in page
    @GetMapping("/users/login")
    public String signIn() {
        return "users/login";
    }
    
    // Authenticate user
    @PostMapping("/users/login")
    public String verifyUser(@RequestParam(name = "username") String username,
                             @RequestParam(name = "password") String password) {

        User user = userService.authenticateUser(username, password);
        if(user == null)
            return "users/login";

        return "index";
    }

    // Show all users
    @GetMapping("/users")
    public String showUsers(Model userModel) {
        List<User> userList = userService.findAll();
        userModel.addAttribute("userList", userList);
        return "users/index";
    }

    // Display user with username
    @GetMapping("/users/{username}")
    public String showUserByUsername(Model userModel, @PathVariable String username) {
        User userInfo = userRepository.findByUsername(username);
        userModel.addAttribute("userInfo", userInfo);
        return "users/show";
    }

    // Edit user
    @GetMapping("/users/{username}/edit")
    public String editUser(Model userModel, @PathVariable(name="username") String username) {
        User userInfo = userRepository.findByUsername(username);
        userModel.addAttribute("userInfo", userInfo);
        return "users/edit";
    }

    // Update user
    @PostMapping("/users/{username}")
    public String updateUser(@Valid @ModelAttribute("userForm") User userForm,
                             BindingResult result,
                             Model userModel) {

        if(result.hasErrors())
            return "users/edit";

        User user = userService.findByUsername(userForm.getUsername());
        userService.update(user, userForm);
        userModel.addAttribute("userInfo", user);

        return "users/show";
    }

    // Delete user
    @GetMapping("/users/{username}/delete")
    public String deleteUser(@PathVariable String username) {
        User user = userService.findByUsername(username);
        userRepository.delete(user);

        return "redirect:/users";
    }
}
