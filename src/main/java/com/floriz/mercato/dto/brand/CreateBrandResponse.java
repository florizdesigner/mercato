package com.floriz.mercato.dto.brand;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CreateBrandResponse {

    @NotBlank
    private Long id;

    @NotBlank
    private String name;

    private String description;

    private String url;

}
