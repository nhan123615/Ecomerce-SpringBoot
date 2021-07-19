package com.coeding.repository;

import com.coeding.entity.Brand;
import com.coeding.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * author Nhanle
 * */
@Repository
public interface ProductRepository extends JpaRepository<Product,Long>  {
    List<Product> findByCategoryId(Long categoryId);
    List<Product> findByBrandId(Long brandId);
    List<Product> findByTypeName(String typeName);
    List<Product> findByCategoryIdAndBrandId(Long categoryId,Long brandId);
    List<Product> findByCategoryIdAndTypeId(Long categoryId,Long typeId);
    List<Product> findByPriceBetween(Double min,Double max);
    List<Product> findByProductNameContains(String productName);
    List<Product> findByProductNameContainsAndAndCategoryId(String productName,Long categoryId);

    @Query(
            value = "SELECT ca.product_id FROM payments p INNER JOIN customer_order_cart_items c ON  c.customer_order_id = p.customer_order_id INNER JOIN cart_item ca ON c.cart_items_id = ca.id where p.status =true GROUP BY ca.product_id ORDER BY sum(ca.selling_quantity) DESC LIMIT 5",
            nativeQuery = true)
    List<Long> findTop5();

}
//commit
