-- PROYECTO: Análisis de Ventas
-- Autor: Matias De Bartolo
-- Herramienta: Microsoft SQL Server Management Studio

-- Creamos la base de datos
CREATE DATABASE VentasEmpresa;
GO
-- Seleccionamos para usar la base de datos recien creada
USE VentasEmpresa;
GO

-- Creamos la primer tabla CLIENTES e indicamos el tipo de dato de cada columna
CREATE TABLE Clientes(
	ClienteID INT PRIMARY KEY IDENTITY(1,1),
	Nombre NVARCHAR(50),
	Ciudad NVARCHAR(50),
	Pais NVARCHAR(50)
);
GO

-- Creamos la tabla PRODUCTOS
CREATE TABLE Productos(
	ProductoID INT PRIMARY KEY IDENTITY(1,1),
	Nombre NVARCHAR(50),
	Categoria NVARCHAR(50),
	Precio DECIMAL(10,2)
);
GO

-- Creamos la tabla VENTAS
CREATE TABLE Ventas(
	VentaID INT PRIMARY KEY IDENTITY(1,1),
	ClienteID INT,
	ProductoID INT,
	Fecha DATE,
	Cantidad INT,
	Total DECIMAL(10,2),
	FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
	FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);
GO