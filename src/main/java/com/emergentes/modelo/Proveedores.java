
package com.emergentes.modelo;

public class Proveedores {
    private int id;
    private String nombre;
    private String apellidos;
    private String correo;
    private String celular;
    private String dirempresa;

    public Proveedores() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getDirempresa() {
        return dirempresa;
    }

    public void setDirempresa(String dirempresa) {
        this.dirempresa = dirempresa;
    }

    @Override
    public String toString() {
        return "Proveedores{" + "id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", correo=" + correo + ", celular=" + celular + ", dirempresa=" + dirempresa + '}';
    }

  
    
    
    
    
}
