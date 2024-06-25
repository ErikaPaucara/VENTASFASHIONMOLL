<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Color de fondo del cuerpo */
            margin: 0; /* Eliminar márgenes predeterminados */
            padding: 0; /* Eliminar relleno predeterminado */
        }

        .nav-container {
            background-color: #000000; /* Fondo negro para la barra de navegación */
            padding: 20px 0;
            width: 100%; /* Extender a lo ancho de la pantalla */
        }

        .nav-tabs .nav-link {
            color: white; /* Color de texto para pestañas inactivas */
            font-weight: bold; /* Negrita para las pestañas */
            background-color: transparent; /* Fondo transparente para pestañas inactivas */
        }

        .nav-tabs .nav-link.active {
            background-color: #4b0e20; /* Color de fondo más oscuro para la pestaña activa */
            color: white; /* Color de texto para la pestaña activa */
        }

        .nav-tabs .nav-link:hover {
            background-color: #5c1225; /* Color de fondo al pasar el ratón */
        }

        .nav-text {
            margin-right: 10px; /* Ajusta este valor según sea necesario */
            color: white;
            font-weight: bold;
        }

        .container {
            width: 100%; /* Extender a lo ancho de la pantalla */
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }

    </style>
    <title>PUNTO DE VENTA</title>
</head>
<body>
    <%
        String opcion = request.getParameter("opcion"); // opcion para cambio
    %>
    <div class="nav-container">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <span class="nav-text">Sistema de ventas Fashion Moll</span>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= (opcion.equals("productos") ? "active" : "") %>" href="ProductoControlador">PRODUCTOS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= (opcion.equals("clientes") ? "active" : "") %>" href="ClienteControlador">CLIENTES</a>
            </li>
             <li class="nav-item">
                <a class="nav-link <%= (opcion.equals("proveedores") ? "active" : "") %>" href="ProveedoresControlador">PROVEEDORES</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= (opcion.equals("ventas") ? "active" : "") %>" href="VentaControlador">VENTAS</a>
            </li>
        </ul>
    </div>

    <div class="container mt-3">
        <!-- Resto de tu contenido -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
