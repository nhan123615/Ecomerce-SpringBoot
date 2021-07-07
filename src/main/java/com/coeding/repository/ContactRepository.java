package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.coeding.entity.Contact;

import antlr.collections.List;

/**
 * @author TranDung
 *
 */
@Repository
public interface ContactRepository extends JpaRepository<Contact,Integer> {
	 List findByNameContaining(String a);
}
