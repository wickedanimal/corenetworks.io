package com.caz.beans;

import jakarta.annotation.ManagedBean;
import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;
import java.io.Serializable;
import java.util.Map;


//@ManagedBean(value="loginBean")
@Named("loginBean")
@SessionScoped
public class LoginBean implements Serializable {
    private String username, password, message;
    Map<String, String> users = Map.of("Pepe", "1234", "Juan", "2345", "Martin", "3456");

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
//    ToDo logica autenticacion
    public String login(){
        if (users.containsKey(this.username)){
            if(users.get(this.username).equals(this.password)){
                message = "Login exitoso";
                return "home";
            } else{
                message = "Contraseña incorrecta";
            }
        } else{
            message = "No existe un usuario con ese nombre";
            return "";
        }
        return "";
    }
    
}
