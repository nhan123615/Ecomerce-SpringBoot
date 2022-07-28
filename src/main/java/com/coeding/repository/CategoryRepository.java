package com.coeding.repository;

import com.coeding.entity.Category;
import com.coeding.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface CategoryRepository extends JpaRepository<Category,Long>  {
}
//commit
