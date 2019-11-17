package com.RaiderTrade.api.Service;

import java.util.List;
import com.RaiderTrade.api.Entity.User;

public interface UserService {
    
    User createUser(User user);
   
    List<User> lookup();
    
    User updateByUserId(User user, int userId);
    
    void deleteByUserId(int userId);
    
    long total();

    User authenticateUser(String userName, String password);
   
}
