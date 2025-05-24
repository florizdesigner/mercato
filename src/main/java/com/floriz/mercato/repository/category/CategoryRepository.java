package com.floriz.mercato.repository.category;

import com.floriz.mercato.model.category.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {}
