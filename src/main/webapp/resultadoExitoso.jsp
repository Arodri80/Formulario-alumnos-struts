
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Alumno encontrado: </title>
</head>
<body>
    <h1>Datos del Estudiante con DNI: <s:property value="#session.alumnoEncontrado.dni" /></h1>
    <p>Nombre: <s:property value="#session.alumnoEncontrado.nombre" /></p>
    <p>Apellidos: <s:property value="#session.alumnoEncontrado.apellidos" /></p>
    <p>Fecha de Nacimiento: <s:property value="#session.alumnoEncontrado.nace" /></p>
    <!-- Aquí puedes mostrar otros datos del estudiante si es necesario -->
    <p><a href="menu.jsp">Volver al Menú Principal</a></p>
</body>
</html>