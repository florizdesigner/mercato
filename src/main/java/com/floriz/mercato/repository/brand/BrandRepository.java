package com.floriz.mercato.repository.brand;

import com.floriz.mercato.model.brand.Brand;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BrandRepository extends JpaRepository<Brand, Long> {
    Brand getById(Long id);
}
