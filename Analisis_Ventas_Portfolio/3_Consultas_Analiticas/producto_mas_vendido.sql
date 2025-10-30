USE VentasEmpresa
go

-- Identificamos cual fue el producto mas vendido
SELECT
	TOP 1 p.Nombre AS Producto,
	SUM(v.Cantidad) AS TotalUnidades
	FROM Ventas v
	JOIN Productos p ON v.ProductoID = p.ProductoID
	GROUP BY p.Nombre
	ORDER BY TotalUnidades DESC;