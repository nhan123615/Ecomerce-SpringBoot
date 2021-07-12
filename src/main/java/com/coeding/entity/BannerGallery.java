package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;

/**
 * author Nhanle
 * */
@Entity
@Table(name = "banner_gallery")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class BannerGallery {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;


    @Column(columnDefinition = "LONGBLOB")
    private byte[] image;
}
