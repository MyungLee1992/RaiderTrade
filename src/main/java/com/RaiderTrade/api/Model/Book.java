package com.RaiderTrade.api.Model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;


@Entity
@Table(name = "Book")
public class Book implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "item_id")
    private int itemId;
    
//    @Column(name = "user_id", insertable=false, updatable=false)
//    private int userId;

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
    private Date postDate = new Date();
//    private SimpleDateFormat postDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ssZ a");

    @Column(name = "price")
    private float price;
    
    @Column(name = "detail")
    private String detail;
    
//    @ManyToOne(cascade = CascadeType.ALL)
//    @JoinColumn(name="user_id", nullable=false)
//    protected User user;

    public Book() {
    
    }

    public Book(String courseAbb, String authorName, String bookName,
                Long ibnNum, String cond, float price, String detail) {
        this.courseAbb = courseAbb;
        this.authorName = authorName;
        this.bookName = bookName;
        this.ibnNum = ibnNum;
        this.cond = cond;
        this.price = price;
        this.detail = detail;
    }

//    public Book(String courseAbb, String authorName, String bookName,
//                Long ibnNum, String cond, float price, User user) {
//        this.courseAbb = courseAbb;
//        this.authorName = authorName;
//        this.bookName = bookName;
//        this.ibnNum = ibnNum;
//        this.cond = cond;
//        this.price = price;
//        this.user = user;
//    }

    public int getItemId() {
        return itemId;
    }
//
//    public int getUserId() {
//        return userId;
//    }
//
//    public void setUserId(int userId) {
//        this.userId = userId;
//    }

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

    public String getbookName() {
        return bookName;
    }

    public void setbookName(String bookName) {
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

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
    
    
//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
    
}
