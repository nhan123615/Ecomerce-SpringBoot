package com.coeding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coeding.entity.Contact;
import com.coeding.repository.ContactRepository;


/**
 * @author TranDung
 *
 */
@Service
@Transactional
public class ContactService {

	private final ContactRepository repo;
    @Autowired
    public ContactService(ContactRepository repo) {
    	this.repo = repo;
    }
    public void save(Contact vo) {
        repo.save(vo);
    }
}