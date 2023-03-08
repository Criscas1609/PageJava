package com.example.pagina.proyecto.service.impl;

import com.example.pagina.proyecto.model.Product;
import com.example.pagina.proyecto.service.ProductService;

import java.util.ArrayList;

public class ProductServiceImpl implements ProductService {

    private final ArrayList<Product> productsList = new ArrayList<Product>();

    public ArrayList<Product> getProductsList() {
        return productsList;
    }

    public void deleteCart() {
        productsList.clear();
    }

    public void createFood(String nameFood, Double priceFood){
        productsList.add(new Product(nameFood, priceFood));
    }
}
