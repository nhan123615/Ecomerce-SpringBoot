package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;
/**
 * author Nhanle
 * */
@Entity
@Table(name = "products")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;


    private String productName;
    private String productColor;
    private String description;
    private int stockQuantity;

    @OneToMany(targetEntity = ImageGallery.class)
    private List<ImageGallery> images;



    private double price;
    private Date updated;

    @ManyToOne(targetEntity = Category.class)
    private Category category;

    @ManyToOne(targetEntity = Brand.class)
    private Brand brand;

    private boolean enabled;

    @PrePersist
    void updated() {
        this.updated = new Date();
    }

}
