package com.coeding.repository;

import com.coeding.entity.Brand;
import com.coeding.entity.Type;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * author Nhanle
 * */
@Repository
public interface TypeRepository extends JpaRepository<Type,Long>  {
    List<Type> findByCategoryId(Long id);
}
//commit
