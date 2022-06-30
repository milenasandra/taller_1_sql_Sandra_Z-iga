/*a. Traer todos los artículos cuya descripción comience con la palabra
‘SUBTERRANEO’*/
SELECT Prod_Descripcion
FROM productos
WHERE Prod_Descripcion LIKE 'SUBTERRANEO%'