package com.example.pagina.proyecto.service;

public interface ClientService {
    boolean validate(String username, String password);

    void createClient(String name, String lastName, String username, String password, String phone, String address);
}
