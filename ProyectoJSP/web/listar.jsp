<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Estudiante" %>

<html>
<head>
    <title>Estudiantes Registrados</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<div class="card">
    <h2>Estudiantes Registrados</h2>

    <table>
        <tr>
            <th>Nombre</th>
            <th>Correo</th>
            <th>Curso</th>
        </tr>

        <%
            ArrayList<Estudiante> lista = (ArrayList<Estudiante>) request.getAttribute("lista");
            for (Estudiante e : lista) {
        %>
        <tr>
            <td><%= e.getNombre() %></td>
            <td><%= e.getCorreo() %></td>
            <td><%= e.getCurso() %></td>
        </tr>
        <% } %>
    </table>

    <br>
    <a class="btn" href="index.jsp">Volver</a>
</div>

</body>
</html>
