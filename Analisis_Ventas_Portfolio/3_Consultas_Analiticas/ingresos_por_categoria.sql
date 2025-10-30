USE VentasEmpresa
GO

-- Buscamos los ingresos por categoria

SELECT
	p.Categoria AS Categoria,
	SUM(v.Total) AS TotalVentas
	FROM Ventas v
	JOIN Productos p ON v.ProductoID = p.ProductoID
	GROUP BY Categoria
	ORDER BY TotalVentas DESC;