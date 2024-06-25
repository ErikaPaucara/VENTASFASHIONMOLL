package com.emergentes.controlador;

import com.emergentes.dao.ProveedoresDAO;
import com.emergentes.dao.ProveedoresDAOimpl;
import com.emergentes.modelo.Proveedores;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProveedoresControlador", urlPatterns = {"/ProveedoresControlador"})
public class ProveedoresControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id;
            Proveedores pro = new Proveedores();
            ProveedoresDAO dao = new ProveedoresDAOimpl();
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";

            switch (action) {
                case "add":
                    request.setAttribute("proveedor", pro);
                    request.getRequestDispatcher("frmproveedores.jsp").forward(request, response);
                    break;

                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    pro = dao.getById(id);
                    request.setAttribute("proveedor", pro);
                    request.getRequestDispatcher("frmproveedores.jsp").forward(request, response);
                    break;

                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("ProveedoresControlador");
                    break;
                    
                case "view":
                    List< Proveedores> lista = dao.getAll();
                    request.setAttribute("proveedor", lista);
                    request.getRequestDispatcher("proveedores.jsp").forward(request, response);
                    break;
            }
        } catch (Exception ex) {
            System.out.println("ERROR " + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String idStr = request.getParameter("id");
        int id = (idStr != null && !idStr.isEmpty()) ? Integer.parseInt(idStr) : 0; // CAMBIADO

        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String celular = request.getParameter("celular");
        String dirempresa = request.getParameter("dirempresa");

        Proveedores pro = new Proveedores();
        pro.setId(id);
        pro.setNombre(nombre);
        pro.setApellidos(apellidos);
        pro.setCorreo(correo);
        pro.setCelular(celular);
        pro.setDirempresa(dirempresa);

        ProveedoresDAO dao = new ProveedoresDAOimpl();
        if (id == 0) {
            try {
                // Insertar nuevo registro
                dao.insert(pro);
            } catch (Exception ex) {
                System.out.println("Error al insertar: " + ex.getMessage());
            }
        } else {
            try {
                // Actualizar registro existente
                dao.update(pro);
            } catch (Exception ex) {
                System.out.println("Error al editar: " + ex.getMessage());
            }
        }
        response.sendRedirect("ProveedoresControlador");
    }
}
