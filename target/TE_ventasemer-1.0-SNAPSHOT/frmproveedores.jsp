
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer"  rel="stylesheet"/>
        <title>PUNTO DE VENTA</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div class="container"> 
            <h1>FORMULARIO DE REGISTRO DE PROVEEDORES</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="proveedores"/>
            </jsp:include>
            <br>
            <form action="ProveedoresControlador" method="post">
                <input type="hidden" name="id" value="${proveedor.id}">
                <div class="mb-3">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" value="${proveedor.nombre}"  placeholder="escriba el nombre">
                    
                </div>
                     <div class="mb-3">
                    <label for="" class="form-label">Apellido</label>
                    <input type="text" class="form-control" name="apellidos" value="${proveedor.apellidos}"  placeholder="escriba el apellido">
                    
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Correo electronico</label>
                    <input type="email" class="form-control" name="correo" value="${proveedor.correo}" placeholder="ingrese correo">
                    
                </div>
                
                  <div class="mb-3">
                    <label for="" class="form-label">Celular</label>
                    <input type="text" class="form-control" name="celular" value="${proveedor.celular}" placeholder="ingrese numero">
                    
                </div>
                    <div class="mb-3">
                    <label for="" class="form-label">Direccion de Empresa</label>
                    <input type="text" class="form-control" name="dirempresa" value="${proveedor.dirempresa}" placeholder="ingrese la direccion">
                    
                </div>
                
                
                <button type="submit" class="btn btn-primary">enviar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>