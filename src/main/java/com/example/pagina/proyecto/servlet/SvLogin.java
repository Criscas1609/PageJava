package com.example.pagina.proyecto.servlet;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import com.example.pagina.proyecto.controller.ModelFactoryController;

import com.example.pagina.proyecto.model.Client;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "SvLogin", value = "/SvLogin")
public class SvLogin extends HttpServlet {

    ArrayList<Client> dataBaseClient = new ArrayList<Client>();

    ModelFactoryController mfc= ModelFactoryController.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Profe sé que no es lo más optimo, pero si no lo hacia de esta manera no me funcionaba
        //Pero con este método si me funciono perfectamente

        String host = "localhost";
        String port = "3306";
        String nameDB = "clientes-proyecto";
        String usuario = "root";
        String password = "";
        String driver = "com.mysql.cj.jdbc.Driver";
        String databaseUrl = "jdbc:mysql://"+host+":"+port+"/"+nameDB;
        HttpSession session = request.getSession();

        try {
            Class.forName(driver);
            Connection connection= DriverManager.getConnection(databaseUrl,usuario,password);
            connection.setAutoCommit(false);
            Statement statement=connection.createStatement();
            ResultSet rs=statement.executeQuery("SELECT * FROM cliente");
            while (rs.next()){
                System.out.println(rs.getString("nombre"));
                dataBaseClient.add(new Client(rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("telefono"),
                        rs.getString("direccion"),
                        rs.getString("usuario"),
                        "xx"));
            }
            connection.commit();
            statement.close();
            session.setAttribute("dataBaseClient",dataBaseClient);
            response.sendRedirect("/database.jsp");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("userName");
        String password = request.getParameter("password");
        boolean c = mfc.getStore().getClientService().validate(name, password);
        if (c){
            mfc.getStore().getProductService().deleteCart();
            response.sendRedirect("/products.jsp");
        }
    }
}
