SELECT Ventas_Fecha AS 'Fecha de ventas', 
sum(Ventas_Total) AS 'Total de ventas'
FROM ventas
GROUP BY Ventas_Fecha