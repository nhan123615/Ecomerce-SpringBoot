package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
/**
 * author Nhanle
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

    private String firstName;
    private String lastName;
    private String phone;


    private String address;
    @OneToOne(targetEntity = User.class)
    private User user;

    public Customer(String firstName, String lastName, String phone, String address, User user) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.address = address;
        this.user = user;
    }
}
