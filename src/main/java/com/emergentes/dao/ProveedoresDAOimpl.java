package com.emergentes.dao;

import com.emergentes.modelo.Proveedores;
import com.emergentes.util.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProveedoresDAOimpl extends ConexionBD implements ProveedoresDAO {

    @Override
    public void insert(Proveedores proveedores) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("INSERT INTO proveedores (nombre, apellidos, correo, celular, dirempresa) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, proveedores.getNombre());
            ps.setString(2, proveedores.getApellidos());
            ps.setString(3, proveedores.getCorreo());
            ps.setString(4, proveedores.getCelular());
            ps.setString(5, proveedores.getDirempresa());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Proveedores proveedores) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("UPDATE proveedores SET nombre = ?, apellidos = ?, correo = ?, celular = ?, dirempresa = ? WHERE id = ?");

            ps.setString(1, proveedores.getNombre());
            ps.setString(2, proveedores.getApellidos());
            ps.setString(3, proveedores.getCorreo());
            ps.setString(4, proveedores.getCelular());
            ps.setString(5, proveedores.getDirempresa());
            ps.setInt(6, proveedores.getId());

            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void delete(int id) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("DELETE FROM proveedores WHERE id = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Proveedores getById(int id) throws Exception {
        Proveedores pro = new Proveedores();
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM proveedores WHERE id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                pro.setId(rs.getInt("id"));
                pro.setNombre(rs.getString("nombre"));
                pro.setApellidos(rs.getString("apellidos"));
                pro.setCorreo(rs.getString("correo"));
                pro.setCelular(rs.getString("celular"));
                pro.setDirempresa(rs.getString("dirempresa"));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return pro;
    }

    @Override
    public List<Proveedores> getAll() throws Exception {
        List<Proveedores> lista = new ArrayList<>();
        try {
            this.conectar();
            String sql = "SELECT * FROM proveedores";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Proveedores p = new Proveedores();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setApellidos(rs.getString("apellidos"));
                p.setCorreo(rs.getString("correo"));
                p.setCelular(rs.getString("celular"));
                p.setDirempresa(rs.getString("dirempresa"));
                lista.add(p);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lista;
    }
}
