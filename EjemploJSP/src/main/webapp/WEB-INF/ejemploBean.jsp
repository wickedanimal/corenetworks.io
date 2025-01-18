<%-- 
    Document   : ejemploBean
    Created on : Nov 7, 2024, 1:49:34 PM
    Author     : Zeta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="user" scope="page" class="com.caz.model.User">
            <jsp:setProperty name="user" property="name" value="Juan" />
            <jsp:setProperty name="user" property="DNI" value="5145514F" />
            <jsp:setProperty name="user" property="phone" value="+34-61116541" />
        </jsp:useBean>
        <h2>> ${user.DNI}</h2>
        <h2>> ${user.name}</h2>
        <h2>> ${user.phone}</h2>
    </body>
</html>
