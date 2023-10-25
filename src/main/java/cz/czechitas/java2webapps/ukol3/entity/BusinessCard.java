package cz.czechitas.java2webapps.ukol3.entity;

import jakarta.validation.constraints.NotEmpty;

public record BusinessCard(@NotEmpty String name, @NotEmpty String company, @NotEmpty String street, @NotEmpty String townAndZipCode, String email, String cellPhone, String web) {

    public String getCompleteAddress() {
        return street + ", " + townAndZipCode;
    }
}