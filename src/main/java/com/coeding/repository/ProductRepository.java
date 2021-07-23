package com.coeding.repository;

import com.coeding.entity.Brand;
import com.coeding.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
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
            value = "SELECT ca.product_id FROM payments p INNER JOIN customer_order_cart_items c ON  c.customer_order_id = p.customer_order_id INNER JOIN cart_item ca ON c.cart_items_id = ca.id WHERE p.status =true AND MONTH(p.payment_date)=?1 AND YEAR(p.payment_date)=?2 GROUP BY ca.product_id ORDER BY sum(ca.selling_quantity) DESC LIMIT 5",
            nativeQuery = true)
    List<Long> findTop5(int month, int year);

    @Query(value="select * from products p left join brands b on p.brand_id = b.id left join categories c on p.category_id = c.id left join types t on c.id = t.category_id where  p.product_name LIKE %:keyword%  or b.name LIKE %:keyword% or c.name LIKE %:keyword% or t.name LIKE %:keyword% group by p.id having p.enabled =true",
            nativeQuery = true)
    List<Product> findProductContains(@Param("keyword") String keyword);

    @Query(value="select  * from products p left join brands b on p.brand_id = b.id  left join types t on p.type_id = t.id where p.product_name LIKE %:keyword% or b.name LIKE %:keyword%  or t.name LIKE %:keyword% group by p.id having p.category_id = :id and  p.enabled = true",
            nativeQuery=true)
    List<Product> findProductContainsByCategory(@Param("keyword") String keyword,@Param("id") Long categoryId);

//
}
//commit
