package com.example.pagina.proyecto.service.impl;

import com.example.pagina.proyecto.service.ClientService;
import com.example.pagina.proyecto.service.ProductService;

public class StoreServiceImpl {

    private final ClientService clientService;
    private final ProductService productService;


    public StoreServiceImpl() {
        this.clientService = (ClientService) new ClientServiceImpl();
        this.productService = (ProductService) new ProductServiceImpl();
    }

    public ClientService getClientService() {
        return clientService;
    }

    public ProductService getProductService() {
        return productService;
    }
}
