USE VentasEmpresa
GO

-- Elaboramos un ranking general de clientes según volumen de compras y monto total gastado.
SELECT
	c.Nombre,
	COUNT(v.VentaID) AS Compras,
	SUM(v.Total) AS TotalGastado
FROM Ventas v
JOIN Clientes c ON v.ClienteID = c.ClienteID
GROUP BY c.Nombre
ORDER BY TotalGastado DESC;