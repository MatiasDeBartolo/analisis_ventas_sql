use VentasEmpresa
go

-- Buscamos el cliente que realiz� mas compras
SELECT
	TOP 1 c.Nombre,
	COUNT(v.VentaID) AS Venta
FROM Ventas v
JOIN Clientes c ON v.ClienteID = c.ClienteID
GROUP BY c.Nombre
ORDER BY Venta DESC;