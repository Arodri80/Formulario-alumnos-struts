package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import org.demo.actions.beans.InvoiceBean;
import org.apache.struts2.ServletActionContext;

public class BuscarEstudianteAction extends ActionSupport {

    private String dni;

    public String buscarPorDni() {
        // Obtenemos la lista de alumnos registrados en la sesión
        Map<String, Object> session = ServletActionContext.getContext().getSession();
        List<InvoiceBean> alumnos = (List<InvoiceBean>) session.get("alumnos");

        // Realizamos la búsqueda dentro de la lista de alumnos
        if (alumnos != null) {
            for (InvoiceBean alumno : alumnos) {
                if (alumno.getDni().equals(dni)) {
                    // Almacenar el alumno encontrado en la sesión
                    session.put("alumnoEncontrado", alumno);
                    return SUCCESS; // Redirigir a la página de éxito
                }
            }
        }

        // Si no se encuentra al alumno, redirigir a la página de error
        return ERROR;
    }


        public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }
}
