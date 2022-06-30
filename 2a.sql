/*Traer fecha de factura, número de factura, id de cliente, razón social del
cliente y monto total vendido.*/
SELECT Ventas_Fecha AS 'Fecha', Ventas_NroFactura AS 'Nro. Factura',
Cli_Id 'Id cliente', Ventas_Total 'Monto total'
FROM clientes 
	JOIN ventas ON Ventas_CliId = Cli_Id