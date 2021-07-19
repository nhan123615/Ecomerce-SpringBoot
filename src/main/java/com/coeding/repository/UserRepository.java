package com.coeding.repository;

import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
/**
 * author Nhanle
 * */
@Repository
public interface UserRepository extends JpaRepository<User,Long>  {
    User  findByUsername(String username);
    int countByUsername(String username);
    int countByEmail(String email);
    User findByUsernameAndEmail (String username,String email);
    User findByEmail(String email);

}
