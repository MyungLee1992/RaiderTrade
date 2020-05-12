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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
   @GetMapping("/books")
   public String getAllBooks(Model bookModel) {
      List<Book> bookList = bookRepository.findAll();
      bookModel.addAttribute("bookList", bookList);

      return "books/index";
   }

   // Book registration
   @GetMapping("/books/new")
   public String newBook(Model bookModel) {
      bookModel.addAttribute("bookForm", new Book());

      return "books/new";
   }

   // Add new book
   @PostMapping("/books/new")
   public String newBook(@ModelAttribute("bookForm") Book book) {
      String loggedInUsername = securityService.findLoggedInUsername();
      User user = userService.findByUsername(loggedInUsername);
      book.setUserId(user);
      bookRepository.save(book);

      return "redirect:/books";
   }

   // Display book
   @GetMapping("/books/{id}")
   public String showBook(Model bookModel, @PathVariable int id) {
      Book book = bookRepository.findById(id);
      bookModel.addAttribute("book", book);

      return "books/show";
   }

   // Edit book
   @GetMapping("/books/{id}/edit")
   public String editbook(Model bookModel, @PathVariable int id) {
      Book book = bookRepository.findById(id);
      bookModel.addAttribute("book", book);

      return "books/edit";
   }

   // Update book
   @PostMapping("/books/{id}")
   public String updateUser(Model bookModel, @PathVariable int id,
                            @ModelAttribute Book updatedBook) {
      Book book = bookRepository.findById(id);
      book.setCourseAbb(updatedBook.getCourseAbb());
      book.setAuthorName(updatedBook.getAuthorName());
      book.setBookName(updatedBook.getBookName());
      book.setIbnNum(updatedBook.getIbnNum());
      book.setCond(updatedBook.getCond());
      book.setPrice(updatedBook.getPrice());
      book.setDetail(updatedBook.getDetail());

      bookRepository.save(book);

      return "redirect:/books/{id}";
   }

   // Delete book
   @GetMapping("/books/{id}/delete")
   public String deleteUser(@PathVariable int id) {
      Book book = bookRepository.findById(id);
      bookRepository.delete(book);

      return "redirect:/books";
   }

}
