package com.example.pagina.proyecto.servlet;

import com.example.pagina.proyecto.controller.ModelFactoryController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "SvForm", value = "/SvForm")
public class SvForm extends HttpServlet {

    ModelFactoryController mfc= ModelFactoryController.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("userName");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        mfc.getStore().getClientService().validateInputs(name,lastName,username,password,phone,address);

        if(mfc.getStore().getClientService().getMistakeList().isEmpty()) {
            response.sendRedirect("/index.jsp");
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("mistakeList",mfc.getStore().getClientService().getMistakeList());
            getServletContext().getRequestDispatcher("/form.jsp").forward(request,response);

        }
    }
}
