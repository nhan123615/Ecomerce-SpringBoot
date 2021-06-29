package com.coeding.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name = "sanpham")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String description;
	
	@OneToMany(targetEntity = ImageGallery.class)
	private List<ImageGallery> images;
	
	private Date updated;

	@PrePersist
	void updated() {
		this.updated = new Date();
	}
}
