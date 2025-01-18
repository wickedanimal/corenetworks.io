<%-- 
    Document   : index
    Created on : 31 oct 2024, 10:22:38
    Author     : manana
--%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./styles/bootstrap.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="CreateUser" method="POST">
            <!--            <label for="name" class="col-form-label col-form-label-lg mt-4"> :</label><br>-->
            <input type="text" class="form-control form-control-lg" placeholder="Introduzca su nombre" name="name" value="" id="name"/>
            <input type="text" class="form-control form-control-lg" placeholder="Introduzca su DNI" name="DNI" value="" id="DNI"/>
            <input type="text" class="form-control form-control-lg" placeholder="Introduzca su telefono" name="phone" value="" id="phone"/>
            <button class="btn btn-primary" type="submit"  value="Enviar" style="margin-top: 15px;">
                Submit
            </button>
        </form>
        <c:choose>
            <c:when test="${requestScope.isNull}">
                <span class="badge bg-danger" style="margin-top: 10px;">Debes introduccir un nombre!</span>
            </c:when>
            <c:otherwise>
                <span class="badge bg-success" style="margin-top: 10px;">Noice!</span>
            </c:otherwise>
        </c:choose>
        <%--<c:if test="${requestScope.isNull}">--%>
        <!--<span class="badge bg-danger" style="margin-top: 10px;">Debes introduccir un nombre!</span>-->
        <!--<h3 class="text-danger"></h3>-->
        <%--</c:if>--%>
        <br><br>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">DNI</th>
                    <th scope="col">Telefono</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${sessionScope.users}">
                    <tr class="table-light">
                        <th scope="row">${user.name}</th>
                        <td scope="row">${user.DNI}</td>
                        <td scope="row">${user.phone}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="aBean.jsp"> Ejemplo Bean </a>
    </body>
</html>

