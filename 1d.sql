SELECT SUM(Ventas_Fecha) AS 'tota de venta',
MONTH(Ventas_Total) AS 'Mes de venta',
YEAR(Ventas_Fecha) AS 'Año de venta' 
FROM ventas
GROUP BY YEAR(Ventas_Fecha) , MONTH(Ventas_Total)
