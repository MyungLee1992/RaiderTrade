package com.RaiderTrade.api.Service;

import com.RaiderTrade.api.Model.User;
import java.util.List;

public interface UserService {
    
    List<User> findAll();
    
    User updateByUserId(User user, int userId);

    long total();

    User authenticateUser(String username, String password);

    User findByUsername(String username);

    void save(User user);

    void update(User oldUser, User newUser);

}
