package com.ecommerce.market.service;

import com.ecommerce.market.entity.User;
import com.ecommerce.market.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Login
    public User login(String username, String password) {
        try {
            return userRepository.findByUsernameAndPassword(username, password);
        } catch (Exception e) {
            return null; // Invalid login
        }
    }

    // Registration
    public String register(User user) {
        if (userRepository.existsByUsername(user.getUsername())) {
            return "Username already exists";
        }
        userRepository.save(user);
        return "Success";
    }
}
