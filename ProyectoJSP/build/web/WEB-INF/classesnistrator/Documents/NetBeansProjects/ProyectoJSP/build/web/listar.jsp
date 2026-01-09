<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Estudiante" %>

<html>
<head>
    <title>Estudiantes</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<div class="container">
    <h2>Estudiantes Registrados</h2>

    <table class="tabla">
        <tr>
            <th>Nombre</th>
            <th>Correo</th>
            <th>Curso</th>
        </tr>

        <%
            ArrayList<Estudiante> lista = (ArrayList<Estudiante>) request.getAttribute("lista");
            if(lista != null){
                for (Estudiante e : lista) {
        %>
        <tr>
            <td><%= e.getNombre() %></td>
            <td><%= e.getCorreo() %></td>
            <td><%= e.getCurso() %></td>
        </tr>
        <% 
                }
            }
        %>
    </table>

    <a href="index.jsp" class="btn volver">Volver</a>
</div>

</body>
</html>
