package com.RaiderTrade.api.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.RaiderTrade.api.Model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}