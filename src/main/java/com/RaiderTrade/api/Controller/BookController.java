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
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/books")
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
   @GetMapping({"", "/page/{pageNo}"})
   public String getAllBooks(Model bookModel, @PathVariable(required = false) Integer pageNo) {
      pageNo = pageNo == null ? 0 : pageNo - 1;
      Page<Book> bookList = bookRepository.findAll(PageRequest.of(pageNo, 5));

      bookModel.addAttribute("bookList", bookList);
      return "books/index";
   }

   // Display searched books
   @PostMapping({"", "/page/{pageNo}"})
   public String searchBooks(Model bookModel, @RequestParam(name = "bookName") String bookName) {

      Page<Book> bookList;
      if(bookName == "") // Display all books when searched value is empty
         bookList = bookRepository.findAll(PageRequest.of(0, 5));
      else
         bookList = bookRepository.findByNameContaining(bookName, PageRequest.of(0, 5));

      bookModel.addAttribute("bookList", bookList);
      return "/books/index";
   }

   // Book registration
   @GetMapping("/new")
   public String newBook(Model bookModel) {

      bookModel.addAttribute("bookForm", new Book());

      return "books/new";
   }

   // Add new book
   @PostMapping("/new")
   public String newBook(@ModelAttribute("bookForm") Book book) {
      String loggedInUsername = securityService.findLoggedInUsername();
      User user = userService.findByUsername(loggedInUsername);
      book.setUser(user);
      bookRepository.save(book);

      return "redirect:/books";
   }

   // Display book
   @GetMapping("/{id}")
   public String showBook(Model bookModel, @PathVariable int id) {
      Book book = bookRepository.findById(id);
      bookModel.addAttribute("book", book);

      return "books/show";
   }

   // Edit book
   @GetMapping("/{id}/edit")
   public String editbook(Model bookModel, @PathVariable int id) {
      Book book = bookRepository.findById(id);
      bookModel.addAttribute("book", book);

      return "books/edit";
   }

   // Update book
   @PostMapping("/{id}")
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
   @GetMapping("/{id}/delete")
   public String deleteUser(@PathVariable int id) {
      Book book = bookRepository.findById(id);
      bookRepository.delete(book);

      return "redirect:/books";
   }

}
