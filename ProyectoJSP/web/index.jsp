<%@ page contentType="text/html" %>
<html>
<head>
    <title>Registro de Estudiantes</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<h2>Registro al Curso</h2>

<!-- Formulario para GUARDAR -->
<form action="<%= request.getContextPath() %>/RegistroServlet" method="POST">
    <input type="text" name="nombre" placeholder="Nombre" required>
    <input type="email" name="correo" placeholder="Correo" required>

    <select name="curso" required>
        <option value="">Seleccione un curso</option>
        <option>Programación</option>
        <option>Base de Datos</option>
        <option>Redes</option>
    </select>

    <button type="submit" name="accion" value="guardar">Guardar</button>
</form>

<br>

<!-- Formulario SOLO para MOSTRAR -->
<form action="<%= request.getContextPath() %>/RegistroServlet" method="POST">
    <button type="submit" name="accion" value="mostrar">Mostrar Registros</button>
</form>

</body>
</html>
