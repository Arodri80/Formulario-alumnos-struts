<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido al Registro de Alumnos</title>
</head>
<body>
    <h1>Bienvenido al Registro de Alumnos</h1>
    <p>Seleccione una opción:</p>
    <s:form action="invoice">
        <s:submit value="Ingresar Nuevo Alumno"/>
    </s:form>
    <s:form action="registry">
        <s:submit value="Ver Listado de Alumnos Registrados"/>
    </s:form>
</body>
</html>