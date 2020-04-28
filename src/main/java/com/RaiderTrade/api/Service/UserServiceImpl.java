package com.RaiderTrade.api.Service;

import com.RaiderTrade.api.Model.User;
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
    public User createUser(User newUser) {
        // If newUser doesn't exist and both passwords are same,
        // Save newUser data to MySQL
        if(!userRepository.existsByUserName(newUser.getUserName()) &&
            newUser.getPassword().equals(newUser.getConfirmPassword()))
        {
            // Encrypt password
            String encryptedPassword = Encrypt.encode(newUser.getPassword());
            newUser.setPassword(encryptedPassword);
            userRepository.save(newUser);
            return newUser;
        } else {
            return (User)null;
        }
    }
    
    @Override
    public User authenticateUser(String userName, String password) {
        try {
            User existingUser = userRepository.findByUserName(userName); 
            if (Encrypt.matches(password, existingUser.getPassword())) {
                return existingUser;
            } else {
                return (User)null;
            }
             
        } catch (NullPointerException ex) {
            return (User)null;
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
