<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenido</title>
</head>
<body>
    <h1>Lista de Alumnos Registrados</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>DNI</th>
                <th>Fecha de Nacimiento</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="alumno" items="${sessionScope.alumnos}">
                <tr>
                    <td>${alumno.nombre}</td>
                    <td>${alumno.apellidos}</td>
                    <td>${alumno.dni}</td>
                    <td>${alumno.nace}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br/>
    <a href="menu.jsp">Terminar</a>
</body>
</html>