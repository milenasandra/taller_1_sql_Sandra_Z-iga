/*b. Traer el total vendido de los productos que fueron vendidos entre el
02-01-2018 y el 10-01-2018 y cuyo id del proveedor se encuentre entre el 2 y
el 100.*/
SELECT id AS 'Id del producto', 
SUM(precio) AS total FROM 
(SELECT VD_ProdId AS 'Id',
VD_Precio AS 'Precio', 
Ventas_Fecha AS 'Fecha de venta', 
Prod_ProvId AS 'Id_proveedor'
FROM ventas_detalle
JOIN ventas ON Ventas_Id = VD_VentasId
JOIN productos ON VD_ProdId = Prod_Id
JOIN proveedores ON Prov_Id = Prod_ProvId
WHERE Ventas_Fecha
BETWEEN '2018-01-02' AND '2018-01-10'
AND Prod_ProvId BETWEEN 2 AND 100
ORDER BY VD_ProdId) AS T
GROUP BY id