-- Insertamos datos en la tabla CLIENTES
INSERT INTO Clientes (Nombre, Ciudad, Pais) VALUES
('Juan Perez', 'Buenos Aires', 'Argentina'),
('Maria Gutierrez', 'Rosario', 'Argentina'),
('Camila Echarri', 'Gualeguaychu', 'Argentina'),
('Federico Gomez', 'Montevideo', 'Uruguay'),
('Roberto Lugo', 'Florianopolis', 'Brasil');
GO

-- Insertamos datos en la tabla PRODUCTOS
INSERT INTO Productos (Nombre, Categoria, Precio) VALUES
('Notebook HP Intel i7 12gb', 'Tecnologia', 850.00),
('Mouse Logitech', 'Accesorios', 30.00),
('Monitor Samsung 24"', 'Tecnologia', 220.00),
('Auriculares Gamer Logitech', 'Accesorios', 75.00),
('Teclado Inalambrico Trust', 'Accesorios', 40.00);
GO

-- Insertamos datos en la tabla VENTAS
INSERT INTO Ventas (ClienteID, ProductoID, Fecha, Cantidad, Total) VALUES
(1, 1, '2025-10-10', 1, 850.00),
(2, 2, '2025-10-12', 1, 30.00),
(3, 1, '2025-10-12', 2, 1700.00),
(4, 3, '2025-10-15', 1, 220.00),
(3, 2, '2025-10-17', 3, 90.00),
(5, 4, '2025-10-20', 2, 150.00),
(2, 5, '2025-10-22', 1, 40.00);
GO

-- FIN DE CREACIÓN E INSERCIÓN DE DATOS

-- Comprobamos los datos de las tablas con SELECT
SELECT * FROM Clientes;
SELECT * FROM Ventas;
SELECT * FROM Productos;
