SELECT VD_ProdId AS 'ID', 
VD_Cantidad AS 'Cantidad de producto',
VD_Precio AS 'precio total'
FROM ventas_detalle
WHERE VD_Precio > 0