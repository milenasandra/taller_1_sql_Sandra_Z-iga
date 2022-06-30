SELECT *
FROM ventas
JOIN ventas_detalle ON VD_VentasId = Ventas_Id
WHERE Ventas_Total =
(SELECT MAX(Ventas_Total)
FROM ventas
JOIN ventas_detalle ON VD_VentasId = Ventas_Id
WHERE VD_ProdId = 656)
AND VD_ProdId = 656