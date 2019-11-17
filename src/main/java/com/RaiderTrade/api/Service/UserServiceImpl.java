package com.RaiderTrade.api.Service;

import com.RaiderTrade.api.Entity.User;
import com.RaiderTrade.api.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserRepository userRepository;
    private final BCryptPasswordEncoder Encrypt = new BCryptPasswordEncoder(8);
    
    @Override
    public User createUser(User user) {
        // If user doesn't exist and both passwords are same,
        // Save user data to MySQL
        if(!userRepository.existsByUserName(user.getUserName()) &&
            user.getPassword().equals(user.getConfirmPassword()))
        {
            // Encrypt password
            String encryptedPassword = Encrypt.encode(user.getPassword());
            user.setPassword(encryptedPassword);
            userRepository.save(user);
            return user;
        } else {
            return null;
        }
    }
    
    @Override
    public User authenticateUser(String userName, String password) {
        try {
            User existingUser = userRepository.findByUserName(userName); 
            if (Encrypt.matches(password, existingUser.getPassword())) {
                return existingUser;
            } else {
                return null;
            }
             
        } catch (NullPointerException ex) {
            return null;
        }
    }

    @Override
    public List<User> lookup() {
        return (List<User>) userRepository.findAll();
    }
    
    @Override
    public User updateByUserId(User user, int userId) {
        return userRepository.save(user);
    }

    @Override
    public void deleteByUserId(int userId) {
        userRepository.deleteByUserId(userId);
    }
    
    @Override
    public long total() {
        return userRepository.count();
    }
    
}
