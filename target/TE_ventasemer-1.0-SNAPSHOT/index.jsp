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
           background-image: url('img/f.jpg'); /* Ruta a tu imagen de fondo */
        background-size: cover; /* Ajusta el tamaño de la imagen al contenedor */
        background-repeat: no-repeat; /* Evita la repetición de la imagen */
        background-attachment: fixed; /* Fija la imagen en la ventana para que el contenido se desplace sobre ella */
        background-position: center; /* Centra la imagen */
        background-color: #f8f9fa; /* Color de fondo alternativo */
        margin: 0; /* Eliminar márgenes predeterminados */
        padding: 0; /* Eliminar relleno predeterminado */
        }

        .nav-container {
            background-color: #000000; /* Fondo negro para la barra de navegación */
            padding: 20px 0;
            width: 100%; /* Extender a lo ancho de la pantalla */
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000; /* Asegura que esté por encima de otros elementos */
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
            padding-top: 100px; /* Espacio para la barra de navegación */
        }

        /* Estilo para las imágenes y transiciones */
        
        .slideshow-container {
            display: flex;
            justify-content: space-between; /* Distribución de las diapositivas */
            max-width: 1000px;
            margin: auto;
            padding-top: 90px; /* Espacio para la barra de navegación */
            margin-top: 50px; /* Ajusta este valor según sea necesario */
        }

        .mySlides {
            display: flex;
            align-items: center;
            width: 100%; /* Ajusta el ancho de cada diapositiva */
        }

        .mySlides img {
            width: 50%; /* Ancho de la imagen */
            height: auto;
            border-radius: 10px;
            object-fit: cover;
            margin-right: 20px; /* Espacio entre la imagen y la descripción */
        }

        .description {
            width: 45%; /* Ancho de la caja de texto */
            background-color: #ffffff; /* Color de fondo de la caja de texto */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Sombra ligera */
        }

        .description h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .description p {
            font-size: 16px;
            line-height: 1.5;
        }

        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 4.5s;
            animation-name: fade;
            animation-duration: 4.5s;
        }

        @-webkit-keyframes fade {
            from {opacity: .4}
            to {opacity: 1}
        }

        @keyframes fade {
            from {opacity: .4}
            to {opacity: 1}
        }

        /* Título flotante */
        .floating-title {
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #4b0e20;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 24px;
            font-weight: bold;
            z-index: 1001; /* Asegura que esté por encima de la barra de navegación */
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% {
                transform: translate(-50%, 0);
            }
            50% {
                transform: translate(-50%, -20px);
            }
        }

        /* Iconos de redes sociales */
        .social-icons {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1001;
        }

        .social-icons a {
            color: white;
            background-color: #4b0e20;
            padding: 10px;
            border-radius: 50%;
            margin-left: 10px;
            text-decoration: none;
            display: inline-block;
            font-size: 40px;
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
            <br><br><br>
            <li class="nav-item">
                <a class="nav-link <%= (opcion != null && opcion.equals("productos") ? "active" : "") %>" href="ProductoControlador?opcion=productos">PRODUCTOS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= (opcion != null && opcion.equals("clientes") ? "active" : "") %>" href="ClienteControlador?opcion=clientes">CLIENTES</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <%= (opcion != null && opcion.equals("ventas") ? "active" : "") %>" href="VentaControlador?opcion=ventas">VENTAS</a>
            </li>
        </ul>
    </div>

    <div class="floating-title">Bienvenido a Nuestra Página</div>

    <div class="slideshow-container">
        <div class="mySlides fade">
            <img src="img/ChompaL.jpg" alt="Imagen 1">
            <div class="description">
                <h2>Descripción de ropa</h2>
                <p>Ropa de invierno de alta calidad de la marca X. Ideal para climas fríos y casual.</p>
            </div>
        </div>

        <div class="mySlides fade">
            <img src="img/vestido.jpg" alt="Imagen 2">
            <div class="description">
                <h2>Vestido elegante</h2>
                <p>Vestido formal para ocasiones especiales. Diseño exclusivo de la marca Y.</p>
            </div>
        </div>

        <div class="mySlides fade">
            <img src="img/varo.jpg" alt="Imagen 3">
            <div class="description">
                <h2>Ropa casual</h2>
                <p>Ropa cómoda y casual para el día a día. Variedad de estilos y colores.</p>
            </div>
        </div>

        <!-- Agrega más diapositivas según sea necesario -->

    </div>

    <div class="container mt-3">
        <!-- Aquí va el contenido adicional de tu página -->
    </div>

    <div class="social-icons">
        <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook-f"></i></a>
        <a href="https://www.whatsapp.com" target="_blank"><i class="fab fa-whatsapp"></i></a>
        <a href="https://www.tiktok.com"
        <a href="https://www.tiktok.com" target="_blank"><i class="fab fa-tiktok"></i></a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let slides = document.querySelectorAll('.mySlides');

            // Ocultar todas las diapositivas
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }

            // Mostrar la siguiente diapositiva
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1;
            }
            slides[slideIndex - 1].style.display = "flex"; // Mostrar el slide actual como flex

            // Cambiar cada 4 segundos
            setTimeout(showSlides, 4000);
        }
    </script>
</body>
</html>