/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : bd_ventas

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 25/06/2024 17:53:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Marcelo Quiroga Garcia', 'marcelo@mail.com', '67712349');
INSERT INTO `clientes` VALUES (2, 'Caleb Benitez', 'benitez@mail.org', '70012345');
INSERT INTO `clientes` VALUES (3, 'Ursula Gonzales', 'nec@lacus.ca', '79112345');
INSERT INTO `clientes` VALUES (5, 'Juan Carlos Arce', 'conejo@mail.com', '71512345');
INSERT INTO `clientes` VALUES (6, 'Halee Kirby', 'tiam@tempor.com', '72012345');
INSERT INTO `clientes` VALUES (7, 'Marco Perez', 'marco@mail.com', '71526789');
INSERT INTO `clientes` VALUES (8, 'Pedro Marquez', 'peter@mail.com', '72054578');
INSERT INTO `clientes` VALUES (9, 'Juan de Arco', 'juanita@mail.com', '77112456');
INSERT INTO `clientes` VALUES (10, 'Luis Callejas', 'lucho@mial.com', '77122456');
INSERT INTO `clientes` VALUES (16, 'Marcelo Martins', 'marcelo@mail.com', '70012345');
INSERT INTO `clientes` VALUES (17, 'Juan Capriles', 'capri@mail.com', '78945612');
INSERT INTO `clientes` VALUES (19, 'LIZEHT', 'jhoansimis.12@gmail.com', '67712348');
INSERT INTO `clientes` VALUES (20, 'LIZEHT', 'jhoansimis.12@gmail.com', '67712348');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, 'Camisa de algodón', 'Camisa de manga larga, ideal para cualquier ocasión.', 250.5);
INSERT INTO `productos` VALUES (2, 'Pantalón vaquero', 'Pantalón vaquero ajustado, estilo moderno.', 350.75);
INSERT INTO `productos` VALUES (3, 'Vestido de fiesta', 'Elegante vestido de fiesta largo con detalles en encaje.', 680.25);
INSERT INTO `productos` VALUES (4, 'Zapatillas deportivas', 'Zapatillas deportivas cómodas y modernas.', 400);
INSERT INTO `productos` VALUES (5, 'Chaqueta de cuero', 'Chaqueta de cuero genuino, estilo clásico.', 980);
INSERT INTO `productos` VALUES (6, 'Bufanda de lana', 'Bufanda suave y abrigadora para el invierno.', 120.8);
INSERT INTO `productos` VALUES (7, 'Sombrero de ala ancha', 'Sombrero elegante con ala ancha para protección solar.', 180.5);
INSERT INTO `productos` VALUES (8, 'Calcetines de algodón', 'Calcetines de algodón suaves y transpirables.', 30.25);
INSERT INTO `productos` VALUES (9, 'Blusa estampada', 'Blusa ligera con estampado floral.', 180);
INSERT INTO `productos` VALUES (10, 'Pantalones cortos de mezclilla', 'Pantalones cortos de mezclilla para el verano.', 150);
INSERT INTO `productos` VALUES (11, 'Abrigo de invierno', 'Abrigo acolchado para el frío, con capucha desmontable.', 1050);
INSERT INTO `productos` VALUES (12, 'Falda plisada', 'Falda plisada elegante para ocasiones especiales.', 320.5);
INSERT INTO `productos` VALUES (13, 'Traje formal', 'Traje completo de tela fina para eventos formales.', 1450.75);
INSERT INTO `productos` VALUES (14, 'Gorra deportiva', 'Gorra deportiva ajustable, ideal para actividades al aire libre.', 90);
INSERT INTO `productos` VALUES (15, 'Sudadera con capucha', 'Sudadera cómoda con capucha y bolsillos.', 280);
INSERT INTO `productos` VALUES (16, 'Medias térmicas', 'Medias térmicas para mantener los pies calientes en invierno.', 50.5);
INSERT INTO `productos` VALUES (17, 'Blazer de mujer', 'Blazer entallado para mujer, perfecto para la oficina.', 780.25);
INSERT INTO `productos` VALUES (18, 'Pijama de algodón', 'Pijama de dos piezas de algodón suave y ligero.', 190);
INSERT INTO `productos` VALUES (19, 'Camiseta básica', 'Camiseta básica de algodón, ideal para uso diario.', 90);
INSERT INTO `productos` VALUES (20, 'Vestido casual', 'Vestido corto y casual, cómodo para el día a día.', 280.5);
INSERT INTO `productos` VALUES (21, 'Sandalias de verano', 'Sandalias ligeras y cómodas para el verano.', 220.75);
INSERT INTO `productos` VALUES (22, 'Bufanda de seda', 'Bufanda elegante de seda natural.', 260);
INSERT INTO `productos` VALUES (23, 'Camisa polo', 'Camisa polo clásica, perfecta para un look casual.', 180);
INSERT INTO `productos` VALUES (24, 'Chaquetón de hombre', 'Chaquetón de hombre con forro polar para el invierno.', 950);
INSERT INTO `productos` VALUES (25, 'Leggings deportivos', 'Leggings deportivos para entrenamiento y actividades físicas.', 120);
INSERT INTO `productos` VALUES (26, 'Blusa de seda', 'Blusa de seda suave y delicada, ideal para ocasiones especiales.', 450.75);
INSERT INTO `productos` VALUES (27, 'Traje de baño', 'Traje de baño de una pieza con diseño moderno.', 320);
INSERT INTO `productos` VALUES (28, 'Cinturón de cuero', 'Cinturón de cuero genuino con hebilla metálica.', 150.25);
INSERT INTO `productos` VALUES (29, 'Gorra de moda', 'Gorra ajustable con diseño moderno y bordado.', 80);
INSERT INTO `productos` VALUES (30, 'Jersey de lana', 'Jersey de lana gruesa para abrigarse en invierno.', 380.5);

-- ----------------------------
-- Table structure for proveedores
-- ----------------------------
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `celular` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dirempresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedores
-- ----------------------------
INSERT INTO `proveedores` VALUES (1, 'Juan', 'Pérez', 'juanperez@example.com', '1234567890', 'FashionStyle S.A. de C.V., La Paz');
INSERT INTO `proveedores` VALUES (2, 'María', 'González', 'mariagonzalez@example.com', '9876543210', 'Elegance Fashion, El Alto');
INSERT INTO `proveedores` VALUES (3, 'Pedro', 'Sánchez', 'pedrosanchez@example.com', '5551234567', 'Trendy Wear, Santa Cruz');
INSERT INTO `proveedores` VALUES (4, 'Ana', 'López', 'analopez@example.com', '3339998888', 'Chic Boutique, Oruro');
INSERT INTO `proveedores` VALUES (5, 'Javier', 'Martínez', 'javiermartinez@example.com', '7774445555', 'Moda Urbana, Cochabamba');
INSERT INTO `proveedores` VALUES (6, 'Luisa', 'Hernández', 'luisahernandez@example.com', '2221113333', 'Fashion Unlimited, La Paz');
INSERT INTO `proveedores` VALUES (7, 'Carlos', 'Díaz', 'carlosdiaz@example.com', '9996663333', 'Style Masters, El Alto');
INSERT INTO `proveedores` VALUES (8, 'Elena', 'Ruiz', 'elenaruiz@example.com', '1112223333', 'Elegant Trends, Santa Cruz');
INSERT INTO `proveedores` VALUES (9, 'Roberto', 'Torres', 'robertotorres@example.com', '7778889999', 'Exclusive Fashion, Oruro');
INSERT INTO `proveedores` VALUES (10, 'Sofía', 'Flores', 'sofiaflores@example.com', '4445556666', 'Glamour Couture, Cochabamba');
INSERT INTO `proveedores` VALUES (11, 'Diego', 'Ramírez', 'diegoramirez@example.com', '6667778888', 'Fashion Zone, La Paz');
INSERT INTO `proveedores` VALUES (12, 'Laura', 'García', 'lauragarcia@example.com', '3332221111', 'Chic Trends, El Alto');
INSERT INTO `proveedores` VALUES (13, 'Mario', 'Ortega', 'marioortega@example.com', '8889990000', 'Urban Style, Santa Cruz');
INSERT INTO `proveedores` VALUES (14, 'Verónica', 'Morales', 'veronicamorales@example.com', '5554443333', 'Elegant Fashion, Oruro');
INSERT INTO `proveedores` VALUES (15, 'Alejandro', 'Castro', 'alejandrocastro@example.com', '2223334444', 'Trendy Look, Cochabamba');
INSERT INTO `proveedores` VALUES (16, 'Lucía', 'Gómez', 'luciagomez@example.com', '9998887777', 'Fashion Forward, La Paz');
INSERT INTO `proveedores` VALUES (17, 'Pablo', 'Vargas', 'pablovargas@example.com', '7776665555', 'Chic Attire, El Alto');
INSERT INTO `proveedores` VALUES (18, 'Adriana', 'Jiménez', 'adrianajimenez@example.com', '4443332222', 'Glamorous Fashion, Santa Cruz');
INSERT INTO `proveedores` VALUES (19, 'Francisco', 'Rojas', 'franciscorojas@example.com', '6665554444', 'Modern Chic, Oruro');
INSERT INTO `proveedores` VALUES (20, 'Isabel', 'Navarro', 'isabelnavarro@example.com', '1112223333', 'Trendy Style, Cochabamba');
INSERT INTO `proveedores` VALUES (21, 'Ricardo', 'Reyes', 'ricardoreyes@example.com', '8889990000', 'Fashion Hub, La Paz');
INSERT INTO `proveedores` VALUES (22, 'Marcela', 'Herrera', 'marcelaherrera@example.com', '5554443333', 'Fashion Galore, El Alto');
INSERT INTO `proveedores` VALUES (23, 'Héctor', 'Pérez', 'hectorperez@example.com', '2223334444', 'Elegant Couture, Santa Cruz');
INSERT INTO `proveedores` VALUES (24, 'Gabriela', 'Santos', 'gabrielasantos@example.com', '9998887777', 'Chic Designs, Oruro');
INSERT INTO `proveedores` VALUES (25, 'Andrés', 'Mendoza', 'andresmendoza@example.com', '7776665555', 'Style Icon, Cochabamba');
INSERT INTO `proveedores` VALUES (26, 'Natalia', 'Castillo', 'nataliacastillo@example.com', '4443332222', 'Fashion Trends, La Paz');
INSERT INTO `proveedores` VALUES (27, 'Fernando', 'Guerrero', 'fernandoguerrero@example.com', '6665554444', 'Exclusive Styles, El Alto');
INSERT INTO `proveedores` VALUES (28, 'Valeria', 'Luna', 'valerialuna@example.com', '1112223333', 'Fashion Paradise, Santa Cruz');
INSERT INTO `proveedores` VALUES (29, 'Antonio', 'Sánchez', 'antoniosanchez@example.com', '8889990000', 'Chic Couture, Oruro');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `apellidos` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Admin', 'Isttrado', 'admin@gmail.com', 'admin');
INSERT INTO `usuarios` VALUES (2, 'María', 'García', 'mariagarcia@gmail.com', '123456');
INSERT INTO `usuarios` VALUES (3, 'Luis', 'Martínez', 'luismartinez@gmail.com', '78910');

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ventas
-- ----------------------------
INSERT INTO `ventas` VALUES (15, 7, 1, '2021-05-18');
INSERT INTO `ventas` VALUES (21, 2, 1, '0018-05-16');

SET FOREIGN_KEY_CHECKS = 1;
