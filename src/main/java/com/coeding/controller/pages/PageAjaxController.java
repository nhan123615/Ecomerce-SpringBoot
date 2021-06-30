package com.coeding.controller.pages;

import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * author Nhanle
 */
@RestController
@RequestMapping(path = "/rest", produces = "application/json")
@CrossOrigin(origins = "*")
public class PageAjaxController {

    @Autowired
    private UserRepository repo;

    @GetMapping
    public List<User> userHomePage(@RequestParam(name = "username", required = false) String username) {
        System.err.println(username);
        List<User> u = new ArrayList<>();
        if (username != null) {
            u.add(repo.findByUsername(username));
            return u;
        }
        return repo.findAll();
    }


    @GetMapping("/checkbox")
    public List<User> userCheckboxHomePage(@RequestParam(name = "username", required = false) List<String> listUsername) {
        System.err.println(listUsername);
        List<User> u = new ArrayList<>();

        if (listUsername != null) {
            listUsername.forEach(listUser -> u.add(repo.findByUsername(listUser)));
            return u;
        }
        return repo.findAll();
    }

}
