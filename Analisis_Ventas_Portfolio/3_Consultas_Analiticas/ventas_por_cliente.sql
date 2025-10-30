USE VentasEmpresa
GO 
-- Generamos una tabla maestra uniendo las tres tablas con JOIN para tener una tabla de reportes base

SELECT
	v.VentaID,
	c.Nombre AS Cliente,
	p.Nombre AS Producto,
	p.Categoria,
	v.Fecha,
	v.Cantidad,
	v.Total
FROM Ventas v
JOIN Clientes c ON v.ClienteID = c.ClienteID
JOIN Productos p ON v.ProductoID = p.ProductoID
ORDER BY v.Fecha;

-- Calculamos el total de ventas por cliente para identificar los principales compradores

SELECT
	c.Nombre AS Cliente,
	SUM(v.Total) AS TotalGastado
	FROM Ventas v
	JOIN Clientes c ON v.ClienteID = c.ClienteID
	GROUP BY c.Nombre
	ORDER BY TotalGastado DESC;
