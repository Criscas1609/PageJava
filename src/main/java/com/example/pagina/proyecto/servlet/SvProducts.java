package com.example.pagina.proyecto.servlet;

import com.example.pagina.proyecto.controller.ModelFactoryController;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SvProducts", value = "/SvProducts")
public class SvProducts extends HttpServlet {

    ModelFactoryController mfc= ModelFactoryController.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        HttpSession session2= request.getSession();
        session.setAttribute("productsList",mfc.getStore().getProductService().getProductsList());
        session2.setAttribute("userList",mfc.getStore().getClientService().getUsersList());
        response.sendRedirect("/cart.jsp");


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameFood = request.getParameter("nameFood");
        Double priceFood = Double.valueOf(request.getParameter("priceFood"));
        mfc.getStore().getProductService().createFood(nameFood, priceFood);
        response.sendRedirect("/products.jsp");
    }
}
