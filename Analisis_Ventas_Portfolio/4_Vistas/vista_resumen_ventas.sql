USE VentasEmpresa
go

-- Creamos una vista para simplificar la consulta de todas las ventas 
-- con información de clientes y productos

CREATE VIEW VistaVentasCompletas AS
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
JOIN Productos p ON v.ProductoID = p.ProductoID;
GO

SELECT * FROM VistaVentasCompletas;
