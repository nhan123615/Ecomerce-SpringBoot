package com.coeding.service;

import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.repository.UserRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService implements UserDetailsService {

    private final UserRepository userRepo;

    @Autowired
    public UserService(UserRepository userRepo) {
        this.userRepo = userRepo;
    }
    /**
     * 
     * @author Vy
     *
     */
    public List<User> findAll(){
    	return userRepo.findAll();
    }

    public User findById(Long id) {
        return userRepo.findById(id).get();
    }
    
    public void saveUser(User userD) {
    	System.out.println(userD);
    	userRepo.save(userD);
    }
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User "+username+" not found!");
        }
        return new UserDetail(user);
    }

    public User findByEmail(String email){
        return userRepo.findByEmail(email);
    }


    public void processUserOAuth(String email,String username) {
        int existUser = userRepo.countByEmail(email);
        if (existUser == 0) {
            User newUser = new User();
            newUser.setRole("ROLE_USER");
            newUser.setEmail(email);
            newUser.setUsername(username);
            newUser.setEnabled(true);
            userRepo.save(newUser);
        }
    }


}
