/*b. Traer el total vendido de los productos que fueron vendidos entre el
02-01-2018 y el 10-01-2018 y cuyo id del proveedor se encuentre entre el 2 y
el 100.*/
SELECT SUM(precio) AS 'Venta total' FROM
 (SELECT VD_Precio AS precio
 FROM ventas_detalle
  JOIN ventas ON VD_VentasId = Ventas_Id
 WHERE Ventas_Fecha BETWEEN '208-01-02' AND '2018-01-10'
 AND VD_ProdId BETWEEN 2 AND 100) AS t;
