package controlador;

import datos.BaseDatosSimulada;
import modelo.Estudiante;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if ("guardar".equals(accion)) {

            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String curso = request.getParameter("curso");

            Estudiante e = new Estudiante(nombre, correo, curso);
            BaseDatosSimulada.guardar(e);

            response.sendRedirect(request.getContextPath() + "/index.jsp");

        } else if ("mostrar".equals(accion)) {

            ArrayList<Estudiante> lista = BaseDatosSimulada.obtenerTodos();
            request.setAttribute("lista", lista);
            request.getRequestDispatcher("/listar.jsp").forward(request, response);
        }
    }
}
