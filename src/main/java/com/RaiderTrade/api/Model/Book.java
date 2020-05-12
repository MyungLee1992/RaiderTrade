package com.RaiderTrade.api.Model;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;


@Entity
@Table(name = "Book")
public class Book implements Serializable {

   private static final long serialVersionUID = 1L;
   @Id
   @GeneratedValue(strategy = GenerationType.SEQUENCE)
   @Column(name = "book_id")
   private int bookId;

   @Column(name = "course_abb")
   private String courseAbb;

   @Column(name = "author_name")
   private String authorName;

   @Column(name = "book_name")
   private String bookName;

   @Column(name = "ibn_num")
   private Long ibnNum;

   @Column(name = "cond")
   private String cond;

   @Column(name = "post_date")
   private LocalDate postDate;

   @Column(name = "price")
   private float price;

   @Column(name = "detail")
   private String detail;

   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name="user_id", nullable = false)
   @OnDelete(action = OnDeleteAction.CASCADE)
   private User userId;

   public Book() {
      postDate = LocalDate.now();
   }

   public int getBookId() {
      return bookId;
   }

   public void setBookId(int bookId) {
      this.bookId = bookId;
   }

   public String getCourseAbb() {
      return courseAbb;
   }

   public void setCourseAbb(String courseAbb) {
      this.courseAbb = courseAbb;
   }

   public String getAuthorName() {
      return authorName;
   }

   public void setAuthorName(String authorName) {
      this.authorName = authorName;
   }

   public String getBookName() {
      return bookName;
   }

   public void setBookName(String bookName) {
      this.bookName = bookName;
   }

   public Long getIbnNum() {
      return ibnNum;
   }

   public void setIbnNum(Long ibnNum) {
      this.ibnNum = ibnNum;
   }

   public String getCond() {
      return cond;
   }

   public void setCond(String cond) {
      this.cond = cond;
   }

   public LocalDate getPostDate() {
      return postDate;
   }

   public void setPostDate(LocalDate postDate) {
      this.postDate = postDate;
   }

   public float getPrice() {
      return price;
   }

   public void setPrice(float price) {
      this.price = price;
   }

   public String getDetail() {
      return detail;
   }

   public void setDetail(String detail) {
      this.detail = detail;
   }

   public User getUserId() {
      return userId;
   }

   public void setUserId(User userId) {
      this.userId = userId;
   }
}
