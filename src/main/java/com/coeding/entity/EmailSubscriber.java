package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.List;
/**
 * author Nhanle
 * */
@Entity
@Table(name = "email_subscriber")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class EmailSubscriber {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private String firstName;
    private String lastName;
    private String email;
}
