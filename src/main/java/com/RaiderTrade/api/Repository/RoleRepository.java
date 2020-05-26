package com.RaiderTrade.api.Repository;

import com.RaiderTrade.api.Model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Integer>{
   Role findById(int id);
}