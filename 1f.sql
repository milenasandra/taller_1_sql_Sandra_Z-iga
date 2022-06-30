/*Traer la lista de productos 
vendidos (solo su ID) sin repeticiones y con el total
vendido por cada uno.*/
SELECT VD_ProdId 'ID', sum(VD_Precio) AS 'Precio'
FROM ventas_detalle
GROUP BY VD_ProdId