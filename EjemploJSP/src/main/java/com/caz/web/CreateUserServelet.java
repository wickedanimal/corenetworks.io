package com.caz.web;

import com.caz.model.User;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
//import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CreateUser", urlPatterns = {"/CreateUser"})
public class CreateUserServelet extends HttpServlet {

//    public List<String> users = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String DNI = req.getParameter("DNI");
        String phone = req.getParameter("phone");

        boolean isNull = (name == null || name.isBlank() || DNI == null || DNI.isBlank() || phone == null || phone.isBlank());
        req.setAttribute("isNull", isNull);
        
//        if(!isNull && name.equals("error")){
//            throw new MalformedURLException();
//        }
        
        User u1 = new User();
        u1.setName(name);
        u1.setDNI(DNI);
        u1.setPhone(phone);
        
        HttpSession session = req.getSession();
        List<User> users = (List<User>) session.getAttribute("users");
        
        if(users == null){
            users = new ArrayList<>();
            session.setAttribute("users", users);
        }
        if(!isNull){
            users.add(u1);
        }
        
//        users.add(name);
        //req.setAttribute("username", name.toUpperCase());

        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
        dispatcher.forward(req, res);

    }

    private void MalformedURLException() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
