-- =========================
-- Avance 4 - Consultas con JOINs
-- =========================

-- 1. Productos con su categoría
SELECT p.Nombre AS Producto, c.Nombre AS Categoria
FROM Productos p
LEFT JOIN Categorias c ON p.CategoriaID = c.CategoriaID;

-- 2. Empleados y su sucursal asignada
SELECT e.Nombre AS Empleado, s.Nombre AS Sucursal
FROM Empleados e
INNER JOIN Sucursales s ON e.SucursalID = s.SucursalID;

-- 3. Productos sin categoría asignada
SELECT p.Nombre AS Producto
FROM Productos p
LEFT JOIN Categorias c ON p.CategoriaID = c.CategoriaID
WHERE c.CategoriaID IS NULL;

-- 4. Detalle completo de órdenes
SELECT o.OrdenID, c.Nombre AS Cliente, e.Nombre AS Empleado, m.Nombre AS Mensajero
FROM Ordenes o
JOIN Clientes c ON o.ClienteID = c.ClienteID
JOIN Empleados e ON o.EmpleadoID = e.EmpleadoID
JOIN Mensajeros m ON o.MensajeroID = m.MensajeroID;

-- 5. Productos vendidos por categoría y sucursal
SELECT s.Nombre AS Sucursal, c.Nombre AS Categoria, SUM(do.Cantidad) AS TotalVendidos
FROM DetalleOrdenes do
JOIN Productos p ON do.ProductoID = p.ProductoID
JOIN Categorias c ON p.CategoriaID = c.CategoriaID
JOIN Ordenes o ON do.OrdenID = o.OrdenID
JOIN Sucursales s ON o.SucursalID = s.SucursalID
GROUP BY s.Nombre, c.Nombre
ORDER BY s.Nombre, TotalVendidos DESC;
