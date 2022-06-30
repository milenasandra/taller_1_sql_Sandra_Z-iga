/*Traer todos los artículos que en su descripción o color o nombre de
proveedor tenga el string ‘FERRO’.*/
SELECT Prod_Descripcion AS 'Producto',
Prod_Color AS 'Color', 
Prov_Nombre AS 'Proveedor'
FROM productos
 JOIN proveedores ON Prov_Id = Prod_ProvId
 WHERE Prod_Descripcion  LIKE '%FERRO%'