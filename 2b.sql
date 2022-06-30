/*Traer fecha de factura , número de factura, id de producto,
 descripción de producto, id de proveedor, nombre de proveedor,
cantidad, precio unitario y parcial (cantidad * precio).*/
SELECT Ventas_Fecha AS 'Fecha de venta',
 Ventas_NroFactura AS 'Nro. Factura', Prod_Id AS 'ID producto',
 Prod_Descripcion AS Producto, Prod_ProvId AS 'ID Proveedor', 
 Prov_Nombre AS 'Nombre del proveedor' , VD_Cantidad AS total,
 VD_Precio AS Precio,
 (VD_Cantidad*VD_Precio) AS Parcial
 FROM ventas
 	 JOIN ventas_detalle ON VD_VentasId = Ventas_Id
 	 JOIN productos ON VD_ProdId = Prod_Id
 	 JOIN proveedores ON VD_ProdId = Prov_Id
 	 JOIN clientes ON Ventas_CliId = Cli_Id
 	