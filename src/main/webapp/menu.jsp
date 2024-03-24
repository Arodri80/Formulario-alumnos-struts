<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido al Registro de Alumnos</title>
</head>
<body>
    <h1>Bienvenido al Registro de Alumnos</h1>
    <p>Seleccione una opción:</p>
    <s:form action="registry">
        <s:submit value="Ingresar Nuevo Alumno"/>
    </s:form>
    <s:form action="verLista">
        <s:submit value="Ver Listado de Alumnos Registrados"/>
    </s:form>
   <h2>Buscar Estudiante por DNI</h2>
       <s:form action="buscarEstudiante" method="post">
           <s:textfield label="DNI" key="dni" name="dni" />
           <s:submit value="Buscar" />
       </s:form>
</body>
</html>