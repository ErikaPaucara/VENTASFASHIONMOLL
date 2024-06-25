
package com.emergentes.dao;

import com.emergentes.modelo.Proveedores;
import java.util.List;


public interface ProveedoresDAO {
    public void insert (Proveedores proveedores) throws Exception;
public void update(Proveedores proveedores) throws Exception;
public void delete (int id) throws Exception;
public Proveedores getById (int id) throws Exception;
public List<Proveedores>getAll() throws Exception;
}
