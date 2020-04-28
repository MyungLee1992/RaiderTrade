package com.RaiderTrade.api.Service;

import com.RaiderTrade.api.Model.User;

import java.util.List;

public interface UserService {
    
    User createUser(User user);
   
    List<User> lookup();
    
    User updateByUserId(User user, int userId);
    
    void deleteByUserId(int userId);
    
    long total();

    User authenticateUser(String userName, String password);
   
}
