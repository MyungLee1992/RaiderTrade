package com.RaiderTrade.api.Service;

import com.RaiderTrade.api.Model.User;
import com.RaiderTrade.api.Repository.RoleRepository;
import com.RaiderTrade.api.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    private final BCryptPasswordEncoder encrypt = new BCryptPasswordEncoder(8);
    
    public User authenticateUser(String username, String password) {
        if (findByUsername(username) == null || !encrypt.matches(password, findByUsername(username).getPassword())) {
            return (User) null;
        }

        User existingUser = userRepository.findByUsername(username);
        return existingUser;

    }

    @Override
    public void save(User user) {
        user.setPassword(encrypt.encode(user.getPassword()));
        user.setRoles(new HashSet<>(roleRepository.findAll()));
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
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
