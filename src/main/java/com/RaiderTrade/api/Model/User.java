package com.RaiderTrade.api.Model;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;

@Entity
@Table(name = "\"user\"")
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "user_id", updatable = false, nullable = false)
    private int userId; // Primary Key

    @Column(name = "first_name", length = 50, nullable = false)
    @NotBlank(message = "Please enter your first name")
    private String firstName;

    @Column(name = "last_name", length = 50, nullable = false)
    @NotBlank(message = "Please enter your last name")
    private String lastName;

    @NotBlank(message = "Please select either Student or Faculty")
    @Column(name = "user_type", length = 50)
    private String userType;

    @Column(name = "user_name", length = 50, unique = true, nullable = false)
    @NotBlank(message = "Please enter user name")
    private String userName;

    @Column(name = "phone_num")
    private String phoneNum;

    @Column(length = 100, nullable = false)
    @NotBlank(message = "Please enter your password")
    private String password;

    @Transient
    @Column(length = 100)
    @NotBlank(message = "Please enter your password")
    private String confirmPassword;
    
//    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
//    private List<Book> books = new ArrayList<Book>();
    
    // Default Constructor
    public User() {
    }
    
    // Overloaded Constructor
    public User(String firstName, String lastName,
                String userType, String userName, String phoneNum,
                String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.userType = userType;
        this.userName = userName;
        this.phoneNum = phoneNum;
        this.password = password;
    }
    
    // Setters and getters
    public int getUserId() {
        return userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

//    public List<Book> getBooks() {
//        return books;
//    }
//
//    public void setBooks(List<Book> books) {
//        this.books = books;
//    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", firstName=" + firstName +
               ", lastName=" + lastName + ", userType=" + userType +
               ", userName=" + userName + ", phoneNum=" + phoneNum +
               ", password=" + password +
               ", confirmPassword=" + confirmPassword + '}';
    }

}
