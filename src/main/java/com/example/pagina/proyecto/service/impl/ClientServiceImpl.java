package com.example.pagina.proyecto.service.impl;

import com.example.pagina.proyecto.model.Client;
import com.example.pagina.proyecto.model.User;
import com.example.pagina.proyecto.service.ClientService;

import java.util.ArrayList;


public class ClientServiceImpl implements ClientService {
    public ArrayList<Client> usersList = new ArrayList<Client>();
    public Client client;
    public boolean validate(String username, String password){
        for (Client user : usersList){
            if (user.getUsername().equals(username) && user.getPassword().equals(password)){
                return true;
            }
        }
        return false;
    }

    public void createClient(String name, String lastName, String username, String password, String phone, String address) {
        client = new Client(name, lastName, phone, address, username, password);
        usersList.add(client);
    }
}
