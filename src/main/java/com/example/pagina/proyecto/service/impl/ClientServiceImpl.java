package com.example.pagina.proyecto.service.impl;

import com.example.pagina.proyecto.model.Client;
import com.example.pagina.proyecto.model.User;
import com.example.pagina.proyecto.service.ClientService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class ClientServiceImpl implements ClientService {
    private ArrayList<Client> usersList = new ArrayList<Client>();
    private Map<String, String> mistakeList = new HashMap<String, String>();

    public Map<String, String> getMistakeList() {
        return mistakeList;
    }

    public ArrayList<Client> getUsersList() {
        return usersList;
    }
    public boolean validate(String username, String password){
        for (Client user : usersList){
            if (user.getUsername().equals(username) && user.getPassword().equals(password)){
                return true;
            }
        }
        return false;
    }

    public void createClient(String name, String lastName, String username, String password, String phone, String address) {
        usersList.add(new Client(name, lastName, phone, address, username, password));
    }

    public void validateInputs(String name, String lastName, String username, String password, String phone, String address){
        mistakeList.clear();
        if(name == null || name.isBlank()){
            mistakeList.put("name", "Nombre valido requerido");
        }
        if (password == null || password.isBlank()){
            mistakeList.put("password", "Contraseña requerida");
        }
        if (lastName == null || lastName.isBlank()){
            mistakeList.put("lastName", "Apellido valido requerido");
        }
        if (phone == null || phone.isBlank()){
            mistakeList.put("phone", "Teléfono valido requerido");
        }
        if (address == null || address.isBlank()){
            mistakeList.put("address", "Direction valida requerida");
        }
        if (username == null || username.isBlank()){
            mistakeList.put("userName", "Usuario valido requerido");
        }
        if (mistakeList.size() == 0){
            createClient(name, lastName, phone, address, username, password);
        }
    }


}
