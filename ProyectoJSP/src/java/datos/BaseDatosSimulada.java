package datos;

import java.util.ArrayList;
import modelo.Estudiante;

public class BaseDatosSimulada {

    private static ArrayList<Estudiante> lista = new ArrayList<>();

    public static void guardar(Estudiante e) {
        lista.add(e);
    }

    public static ArrayList<Estudiante> obtenerTodos() {
        return lista;
    }
}
