package com.coeding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coeding.entity.Rating;
import com.coeding.repository.DAO;
import com.coeding.repository.RatingRepository;
/**
 * 
 * @author Lam Cong Hau
 *
 */
@Service
@Transactional
public class RatingService implements DAO<Rating> {
	@Autowired
	private RatingRepository repo;
	@Override
	public List<Rating> findAll() {
		return repo.findAll();
	}

	@Override
	public Rating findById(Long id) {
		return repo.getOne(id);
	}

	@Override
	public void save(Rating vo) {
		repo.save(vo);
	}

	@Override
	public void delete(Long id) {
		repo.deleteById(id);
	}

	public Rating findByCustomerIdAndProductId(Long customerId, Long productId) {
		return repo.findByCustomerIdAndProductId(customerId, productId);
	}
	public Double avgStarByProductId(Long productId) {
		return repo.avgStarByProductId(productId);
	}
	public Integer countReviewByProductId(Long productId) {
		return repo.countReviewByProductId(productId);
	}
	public Long percentOfStar(Long productId, Integer starNumber) {
		Double numberReview = (double)repo.countReviewByProductIdAndStarNumber(productId, starNumber);
		System.out.println("numberReview "+numberReview);
		Double totalReview = (double)repo.countReviewByProductId(productId);
		Double result = (numberReview / totalReview) * 100;
		return Math.round(result);
	}
}
