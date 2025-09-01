-- =========================
-- Avance 1 - Creación de Base de Datos y Tablas
-- =========================

-- Crear base de datos
CREATE DATABASE FastFood;
GO

-- Usar base de datos
USE FastFood;
GO

-- Crear tabla: Categorias
CREATE TABLE Categorias (
  CategoriaID INT PRIMARY KEY,
  Nombre NVARCHAR(100) NOT NULL
);

-- Crear tabla: Productos
CREATE TABLE Productos (
  ProductoID INT PRIMARY KEY,
  Nombre NVARCHAR(100) NOT NULL,
  Precio DECIMAL(10, 2) NOT NULL,
  CategoriaID INT,
  FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

-- Crear tabla: Sucursales
CREATE TABLE Sucursales (
  SucursalID INT PRIMARY KEY,
  Nombre NVARCHAR(100),
  Direccion NVARCHAR(255)
);

-- Crear tabla: Empleados
CREATE TABLE Empleados (
  EmpleadoID INT PRIMARY KEY,
  Nombre NVARCHAR(100) NOT NULL,
  Puesto NVARCHAR(100),
  Rol NVARCHAR(100),
  Departamento NVARCHAR(100),
  SucursalID INT,
  FOREIGN KEY (SucursalID) REFERENCES Sucursales(SucursalID)
);

-- Crear tabla: Clientes
CREATE TABLE Clientes (
  ClienteID INT PRIMARY KEY,
  Nombre NVARCHAR(100),
  Direccion NVARCHAR(255)
);

-- Crear tabla: OrigenesOrden
CREATE TABLE OrigenesOrden (
  OrigenID INT PRIMARY KEY,
  Nombre NVARCHAR(100)
);

-- Crear tabla: TiposPago
CREATE TABLE TiposPago (
  TipoPagoID INT PRIMARY KEY,
  Nombre NVARCHAR(100)
);

-- Crear tabla: Mensajeros
CREATE TABLE Mensajeros (
  MensajeroID INT PRIMARY KEY,
  Nombre NVARCHAR(100),
  EsExterno BIT
);

-- Crear tabla: Ordenes
CREATE TABLE Ordenes (
  OrdenID INT PRIMARY KEY,
  ClienteID INT,
  EmpleadoID INT,
  SucursalID INT,
  MensajeroID INT,
  TipoPagoID INT,
  OrigenID INT,
  HorarioVenta NVARCHAR(50),
  TotalCompra DECIMAL(10,2),
  KilometrosRecorrer DECIMAL(10,2),
  FechaDespacho DATE,
  FechaEntrega DATE,
  FechaOrdenTomada DATE,
  FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
  FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
  FOREIGN KEY (SucursalID) REFERENCES Sucursales(SucursalID),
  FOREIGN KEY (MensajeroID) REFERENCES Mensajeros(MensajeroID),
  FOREIGN KEY (TipoPagoID) REFERENCES TiposPago(TipoPagoID),
  FOREIGN KEY (OrigenID) REFERENCES OrigenesOrden(OrigenID)
);

-- Crear tabla: DetalleOrdenes
CREATE TABLE DetalleOrdenes (
  DetalleID INT PRIMARY KEY,
  OrdenID INT,
  ProductoID INT,
  Cantidad INT,
  Precio DECIMAL(10,2),
  FOREIGN KEY (OrdenID) REFERENCES Ordenes(OrdenID),
  FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);
