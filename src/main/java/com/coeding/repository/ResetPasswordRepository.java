package com.coeding.repository;

import com.coeding.entity.ResetPassword;
import com.coeding.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
/**
 * author Nhanle
 * */
@Repository
public interface ResetPasswordRepository extends JpaRepository<ResetPassword,Long>  {
    ResetPassword findByUser(User user);
    ResetPassword findByResetToken(String resetToken);
}
