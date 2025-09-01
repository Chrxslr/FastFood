-- =========================
-- Avance 3 - Consultas con funciones de agregación
-- =========================

-- 1. Total de ventas globales
SELECT SUM(TotalCompra) AS TotalVentasGlobales FROM Ordenes;

-- 2. Precio promedio de productos por categoría
SELECT c.Nombre AS Categoria, AVG(p.Precio) AS PrecioPromedio
FROM Productos p
JOIN Categorias c ON p.CategoriaID = c.CategoriaID
GROUP BY c.Nombre;

-- 3. Orden mínima y máxima por sucursal
SELECT s.Nombre, MIN(o.TotalCompra) AS MinOrden, MAX(o.TotalCompra) AS MaxOrden
FROM Ordenes o
JOIN Sucursales s ON o.SucursalID = s.SucursalID
GROUP BY s.Nombre;

-- 4. Mayor número de kilómetros recorridos
SELECT MAX(KilometrosRecorrer) AS MaxKm FROM Ordenes;

-- 5. Promedio de cantidad de productos por orden
SELECT AVG(Cantidad) AS PromedioCantidad FROM DetalleOrdenes;

-- 6. Total de ventas por tipo de pago
SELECT tp.Nombre, SUM(o.TotalCompra) AS TotalVentas
FROM Ordenes o
JOIN TiposPago tp ON o.TipoPagoID = tp.TipoPagoID
GROUP BY tp.Nombre;

-- 7. Sucursal con la venta promedio más alta
SELECT TOP 1 s.Nombre, AVG(o.TotalCompra) AS VentaPromedio
FROM Ordenes o
JOIN Sucursales s ON o.SucursalID = s.SucursalID
GROUP BY s.Nombre
ORDER BY VentaPromedio DESC;

-- 8. Sucursales con ventas mayores a $1000
SELECT s.Nombre, SUM(o.TotalCompra) AS TotalSucursal
FROM Ordenes o
JOIN Sucursales s ON o.SucursalID = s.SucursalID
GROUP BY s.Nombre
HAVING SUM(o.TotalCompra) > 1000;

-- 9. Comparación antes y después del 1 de julio de 2023
SELECT 
  CASE WHEN FechaOrdenTomada < '2023-07-01' THEN 'Antes' ELSE 'Despues' END AS Periodo,
  AVG(TotalCompra) AS PromedioVentas
FROM Ordenes
GROUP BY CASE WHEN FechaOrdenTomada < '2023-07-01' THEN 'Antes' ELSE 'Despues' END;

-- 10. Actividad de ventas por horario
SELECT HorarioVenta, COUNT(*) AS CantidadVentas,
       AVG(TotalCompra) AS PromedioVenta,
       MAX(TotalCompra) AS MaxVenta
FROM Ordenes
GROUP BY HorarioVenta;