-- =========================
-- Avance 2 - Inserción de Datos
-- =========================

-- Categorias
INSERT INTO Categorias VALUES
(1, 'Comida Rápida'), (2, 'Postres'), (3, 'Bebidas'),
(4, 'Ensaladas'), (5, 'Desayunos'), (6, 'Cafetería'),
(7, 'Helados'), (8, 'Comida Vegana'), (9, 'Carnes'), (10, 'Pizzas');

-- Productos
INSERT INTO Productos VALUES
(1, 'Hamburguesa Deluxe', 9.99, 1), (2, 'Cheeseburger', 7.99, 1),
(3, 'Pizza Margarita', 11.99, 10), (4, 'Pizza Pepperoni', 12.99, 10),
(5, 'Helado de Chocolate', 2.99, 7), (6, 'Helado de Vainilla', 2.99, 7),
(7, 'Ensalada César', 5.99, 4), (8, 'Ensalada Griega', 6.99, 4),
(9, 'Pastel de Zanahoria', 3.99, 2), (10, 'Brownie', 2.99, 2);

-- Sucursales
INSERT INTO Sucursales VALUES
(1, 'Sucursal Central', '1234 Main St'), (2, 'Sucursal Norte', '5678 North St'),
(3, 'Sucursal Este', '9101 East St'), (4, 'Sucursal Oeste', '1121 West St'),
(5, 'Sucursal Sur', '3141 South St');

-- Empleados
INSERT INTO Empleados VALUES
(1, 'John Doe', 'Gerente', 'Administración', 'Administración', 1),
(2, 'Jane Smith', 'Subgerente', 'Ventas', 'Ventas', 1),
(3, 'Bill Jones', 'Cajero', 'Ventas', 'Ventas', 1),
(4, 'Alice Johnson', 'Cocinero', 'Cocina', 'Cocina', 2),
(5, 'Tom Brown', 'Barista', 'Cafetería', 'Cafetería', 2);

-- Clientes
INSERT INTO Clientes VALUES
(1, 'Cliente Uno', '1000 A Street'),
(2, 'Cliente Dos', '1001 B Street'),
(3, 'Cliente Tres', '1002 C Street');

-- OrigenesOrden
INSERT INTO OrigenesOrden VALUES
(1, 'Línea'), (2, 'Presencial'), (3, 'Teléfono');

-- TiposPago
INSERT INTO TiposPago VALUES
(1, 'Efectivo'), (2, 'Tarjeta de Crédito'), (3, 'Tarjeta de Débito');

-- Mensajeros
INSERT INTO Mensajeros VALUES
(1, 'Mensajero Uno', 1), (2, 'Mensajero Dos', 0);

-- Ordenes
INSERT INTO Ordenes VALUES
(1, 1, 1, 1, 1, 1, 1, 'Mañana', 1053.51, 5.5, '2023-01-10', '2023-01-15', '2023-01-10'),
(2, 2, 2, 2, 2, 2, 2, 'Tarde', 500.00, 2.0, '2023-06-01', '2023-06-02', '2023-06-01');

-- DetalleOrdenes
INSERT INTO DetalleOrdenes VALUES
(1, 1, 1, 2, 9.99), (2, 1, 3, 1, 11.99), (3, 2, 2, 1, 7.99);