package com.coeding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coeding.entity.Contact;
import com.coeding.repository.ContactRepository;
import com.coeding.repository.DAO;


/**
 * @author TranDung
 *
 */
@Service
@Transactional
public class ContactService implements DAO<Contact>{

	private ContactRepository repo;
    @Autowired
    public ContactService(ContactRepository repo) {
    	this.repo = repo;
    }
    @Override
    public void save(Contact vo) {
        repo.save(vo);
    }
	@Override
	public List<Contact> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}
	@Override
	public Contact findById(Long id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}
	@Override
	public void delete(Long id) {
		repo.deleteById(id);
		
	}
}