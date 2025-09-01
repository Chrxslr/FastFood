# 🍔 Proyecto M2 – FastFood Insights  

**Autor:** Christian Daniel Lara Larios  
**Email:** larad8704@gmail.com  
**Cohorte:** DAFT-16  
**Fecha de entrega:** 25/06/2025  
**Institución:** FastFood Insights & Data Lab 🧠🍔  

---

## 📌 Introducción  
Este proyecto tuvo como propósito diseñar, construir y analizar una **base de datos relacional** orientada al funcionamiento comercial de una cadena ficticia de comida rápida.  

El objetivo fue modelar operaciones clave (ventas, logística y desempeño de personal) para obtener **insights valiosos** mediante **consultas SQL avanzadas**, replicando un entorno empresarial realista donde las decisiones se basan en datos.  
![FastFood Logo](assets/dashboard.png)
---

## 🛠️ Desarrollo del proyecto  

🔹 **Avance 1 – Modelado y Creación de la BD**  
- Base de datos `FastFood`.  
- 10 tablas con PKs y FKs correctamente definidas.  
- Buenas prácticas de notación y estructura.  

🔹 **Avance 2 – Inserción y Manipulación de Datos**  
- Población de tablas con datos simulados.  
- Uso de `INSERT`, `UPDATE`, `DELETE`.  
- Verificación de integridad mediante consultas básicas.  

🔹 **Avance 3 – Consultas con Funciones de Agregación**  
- Uso de `SUM`, `AVG`, `MAX`, `MIN`.  
- Análisis de ingresos por canal, desempeño de empleados y estacionalidad.  

🔹 **Avance 4 – Consultas con JOINs**  
- Aplicación de `INNER JOIN`, `LEFT JOIN` y alias.  
- Reportes combinados de órdenes, productos y empleados.  
- Agrupaciones por sucursal y categoría.  

---

## 🗂️ Diagrama relacional  
📌 Se diseñó un **DER (Diagrama Entidad-Relación)** con relaciones claras y consistentes entre tablas de órdenes, empleados, productos, sucursales y clientes.  

---

## 📊 Consultas destacadas  

1. **Eficiencia de los mensajeros**  
```sql
SELECT AVG(DATEDIFF(MINUTE, FechaDespacho, FechaEntrega)) AS TiempoPromedioEntrega
FROM Ordenes;
