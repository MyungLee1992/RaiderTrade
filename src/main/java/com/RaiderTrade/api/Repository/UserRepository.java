package com.RaiderTrade.api.Repository;

import com.RaiderTrade.api.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    User findByUserId(int userId);
    
    User findByUserName(String userName);
    
    boolean existsByUserName(String userName);

    void deleteByUserId(int userId);
    
}
