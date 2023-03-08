package com.example.pagina.proyecto.servlet;

import java.io.IOException;

import com.example.pagina.proyecto.controller.ModelFactoryController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "SvLogin", value = "/SvLogin")
public class SvLogin extends HttpServlet {

    ModelFactoryController mfc= ModelFactoryController.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("userName");
        String password = request.getParameter("password");
        boolean c = mfc.getStore().getClientService().validate(name, password);
        if (c) response.sendRedirect("/products.jsp");
    }
}
