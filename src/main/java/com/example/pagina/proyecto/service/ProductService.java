package com.example.pagina.proyecto.service;

import com.example.pagina.proyecto.model.Product;

import java.util.ArrayList;

public interface ProductService {
    void createFood(String nameFood, Double priceFood);
    ArrayList<Product> getProductsList();

    void deleteCart();
}
