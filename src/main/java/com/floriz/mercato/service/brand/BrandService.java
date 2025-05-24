package com.floriz.mercato.service.brand;

import com.floriz.mercato.dto.brand.CreateBrandRequest;
import com.floriz.mercato.model.brand.Brand;
import com.floriz.mercato.repository.brand.BrandRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class BrandService {

    private final BrandRepository brandRepository;

    public Brand createBrand(CreateBrandRequest request) {
        Brand brand = Brand.builder()
                .withName(request.getName())
                .withDescription(request.getDescription())
                .withUrl(request.getUrl())
                .build();

        return brandRepository.save(brand);
    }

    public Optional<Brand> getBrandById(Long id) {
        Brand foundBrand = brandRepository.getById(id);
        if (foundBrand == null) {
            return Optional.empty();
        } else {
            return Optional.of(foundBrand);
        }
    }
}
