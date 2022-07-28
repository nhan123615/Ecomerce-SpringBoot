package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;

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
    private String shortDescription;

    @Column(columnDefinition = "LONGTEXT")
    private String description;
    private int stockQuantity;

    @OneToMany(targetEntity = ImageGallery.class, cascade = CascadeType.ALL)
    private List<ImageGallery> images;



    private double price;
    private Date updated;

    @ManyToOne(targetEntity = Category.class,fetch = FetchType.EAGER)
    private Category category;

    @ManyToOne(targetEntity = Brand.class,fetch = FetchType.EAGER)
    private Brand brand;

    @ManyToOne(targetEntity = Type.class,fetch = FetchType.EAGER)
    private Type type;
    private boolean enabled;

    @PrePersist
    void updated() {
        this.updated = new Date();
    }

}
