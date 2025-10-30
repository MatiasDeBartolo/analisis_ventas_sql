USE VentasEmpresa
GO

-- Calculamos el ticket promedio de venta para medir el valor medio de las transacciones
SELECT
	AVG(v.Total) AS TicketPromedio
	FROM Ventas v;