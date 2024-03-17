package org.demo.actions.beans;

import java.util.Date;

public class InvoiceBean {

    private String nombre;

    private String apellidos;

    private String dni;
    private Date nace;

    public Date getNace() {
        return nace;
    }

    public void setNace(Date nace) {
        this.nace = nace;
    }

    public String getNombre() {
        return nombre;
    }

   public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }


}
