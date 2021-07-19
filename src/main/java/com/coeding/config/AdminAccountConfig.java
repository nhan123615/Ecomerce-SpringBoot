package com.coeding.config;

import com.coeding.entity.User;
import com.coeding.repository.UserRepository;
import io.micrometer.core.instrument.util.JsonUtils;
import lombok.Data;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.UUID;


/**
 * author Nhanle
 * */
@Profile("addAdminAccount")
@ConfigurationProperties(prefix = "user.admin")
@Configuration
@Data
public class AdminAccountConfig {
    private String username;
    private String password;
    private String email;

    private String usernameTrainee;
    private String passwordTrainee;
    private String emailTrainee;

    @Bean
    public CommandLineRunner loadData(UserRepository userRepo, PasswordEncoder passwordEncoder, AdminAccountConfig admin) {
        return new CommandLineRunner() {
            @Override
            public void run(String... args) {
                int user = userRepo.countByUsername(admin.getUsername());
                int userEmail = userRepo.countByEmail(admin.getEmail());

                int userTrainee = userRepo.countByUsername(admin.getUsernameTrainee());
                int userEmailTrainee = userRepo.countByEmail(admin.getEmailTrainee());


                if (userTrainee == 0 ) {
                    if (userEmailTrainee ==0){
                        userRepo.save(new User(
                                admin.getUsernameTrainee().trim(),
                                passwordEncoder.encode(admin.getPasswordTrainee().trim()),
                                admin.getEmailTrainee(),
                                "ROLE_ADMIN_TRAINEE",
                                true));

                    }else {
                        System.err.println("Duplicate with admin trainee email: " + admin.getEmailTrainee() + " please select the different one");
                    }
                } else {
                    System.err.println("Duplicate with admin trainee username: " + admin.getUsernameTrainee() + " please select the different one");
                }



                if (user == 0 ) {
                    if (userEmail ==0){
                        userRepo.save(new User(
                                admin.getUsername().trim(),
                                passwordEncoder.encode(admin.getPassword().trim()),
                                admin.getEmail(),
                                "ROLE_ADMIN",
                                true));

                    }else {
                        System.err.println("Duplicate with admin email: " + admin.getEmail() + " please select the different one");
                    }
                } else {
                    System.err.println("Duplicate with admin username: " + admin.getUsername() + " please select the different one");
                }
            }
        };
    }
}
