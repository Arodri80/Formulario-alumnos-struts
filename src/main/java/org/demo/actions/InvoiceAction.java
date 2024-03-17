package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.demo.actions.beans.InvoiceBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public class InvoiceAction extends ActionSupport  {

    InvoiceBean invoiceBean;

    public InvoiceAction() {
        invoiceBean = new InvoiceBean(); // Inicializar invoiceBean
    }



    public InvoiceBean getInvoiceBean() {
        return invoiceBean;
    }

    public void setInvoiceBean(InvoiceBean invoiceBean) {
        this.invoiceBean = invoiceBean;
    }
    @Override


    public void validate() {
        if (invoiceBean.getNombre() == null || invoiceBean.getNombre().isEmpty()) {
            addFieldError("invoiceBean.nombre", "El nombre es obligatorio.");
        }
        if (invoiceBean.getNace() == null) {
            addFieldError("invoiceBean.nace", "La fecha de nacimiento es obligatorio.");
        }

        if (invoiceBean.getApellidos() == null || invoiceBean.getApellidos().isEmpty()) {
            addFieldError("invoiceBean.apellidos", "Los apellidos son obligatorios.");
        }

        if (invoiceBean.getDni() == null ||invoiceBean.getDni().isEmpty()) {
            addFieldError("invoiceBean.dni", "El DNI es obligatorio.");
        }



    }

    public String execute() {
        // Inicializamos la lista de alumnos en la sesión si aún no existe
        Map<String, Object> session = org.apache.struts2.ServletActionContext.getContext().getSession();
        List<InvoiceBean> alumnos = (List<InvoiceBean>) session.get("alumnos");
        if (alumnos == null) {
            alumnos = new ArrayList<>();
            session.put("alumnos", alumnos);
        }

        // Agregamos el alumno actual a la lista
        alumnos.add(invoiceBean);

        return SUCCESS;
    }
    public String verLista() {
        // Obtener la lista de alumnos de la sesión
        Map<String, Object> session = org.apache.struts2.ServletActionContext.getContext().getSession();
        List<InvoiceBean> alumnos = (List<InvoiceBean>) session.get("alumnos");

        // Verificar si la lista de alumnos está vacía
        if (alumnos == null || alumnos.isEmpty()) {
            // Si está vacía, agregar un mensaje de error y redirigir a una página de error
            addActionError("No hay alumnos registrados.");
            return ERROR;
        } else {
            // Si hay alumnos, asignar la lista a un atributo para ser mostrado en la vista
            setListaAlumnos(alumnos);
            return SUCCESS;
        }
    }

    private void setListaAlumnos(List<InvoiceBean> alumnos) {
    }

}
