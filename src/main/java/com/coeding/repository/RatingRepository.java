package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.coeding.entity.Rating;
/**
 * 
 * @author Lam Cong Hau
 *
 */
@Repository
public interface RatingRepository extends JpaRepository<Rating, Long> {
	Rating findByCustomerIdAndProductId(Long customerId, Long productId);
	@Query(value = "SELECT ROUND(AVG(rates.star_number),2) FROM  rates WHERE rates.product_id = ?1", nativeQuery = true)
	Double avgStarByProductId(Long productId);
	@Query(value = "SELECT COUNT(*) FROM rates WHERE rates.product_id = ?1", nativeQuery = true)
	Integer countReviewByProductId(Long productId);
}
