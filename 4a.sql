/*a. Traer la cantidad de productos que se han vendido.*/
SELECT VD_ProdId AS 'ID', sum(VD_Cantidad) AS 'Total vendidos'
FROM ventas_detalle
GROUP BY VD_ProdId