package cz.czechitas.java2webapps.ukol3.entity;

public record BusinessCard(String name, String company, String street, String townAndZipCode, String email, String cellPhone, String web) {

    public String getCompleteAddress() {
        return street + ", " + townAndZipCode;
    }
}
