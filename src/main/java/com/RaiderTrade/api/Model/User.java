package com.RaiderTrade.api.Model;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "user")
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id", updatable = false, nullable = false)
    private int userId; // Primary Key

    @NotBlank(message = "Please enter your first name")
    @Column(name = "first_name", length = 50, nullable = false)
    private String firstName;

    @NotBlank(message = "Please enter your last name")
    @Column(name = "last_name", length = 50, nullable = false)
    private String lastName;

    @Column(name = "user_name", length = 50, unique = true, nullable = false)
    private String username;

    @NotBlank(message = "Please select either Student or Faculty")
    @Column(name = "user_type", length = 50)
    private String userType;

    @Column(name = "phone_num")
    private String phoneNum;

    @Column(length = 100, nullable = false)
    private String password;

    @Transient
    @Column(length = 100)
    private String confirmPassword;

    @ManyToMany
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Set<Book> books = new HashSet<>();

    // Default Constructor
    public User() {
    }

    // Setters and getters
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
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

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Book book) {
        this.books.add(book);
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", firstName=" + firstName +
               ", lastName=" + lastName + ", userType=" + userType +
               ", username=" + username + ", phoneNum=" + phoneNum +
               ", password=" + password +
               ", confirmPassword=" + confirmPassword + '}';
    }

}
