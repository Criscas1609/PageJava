package com.example.pagina.proyecto.service;

import com.example.pagina.proyecto.model.Client;

import java.util.ArrayList;
import java.util.Map;

public interface ClientService {
    boolean validate(String username, String password);

    void createClient(String name, String lastName, String username, String password, String phone, String address);
    void validateInputs(String name, String lastName, String username, String password, String phone, String address);
    ArrayList<Client> getUsersList();
    Map<String, String> getMistakeList();
}
