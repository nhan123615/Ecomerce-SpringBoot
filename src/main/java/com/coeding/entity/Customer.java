package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
/**
 * author TranDung
 * */
@Entity
@Table(name = "customers")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private String name;
    private String phone;
    private String email;
    private String birthday;
    private String gender;
    @OneToOne(targetEntity = User.class)
    private User user_id;

    public Customer(String name, String phone, String email, String birthday, String gender, User user_id) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.birthday = birthday;
        this.gender = gender;
        this.user_id = user_id;
    }
}
