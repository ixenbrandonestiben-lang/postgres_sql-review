-- Listado de todas las ventas ordenadas por monto de mayor a menor
-- Asignando un número de posición general a cada venta
SELECT 
    id,
    fecha,
    vendedor,
    monto,
    ROW_NUMBER() OVER (ORDER BY monto DESC) AS ranking
FROM ventas_vendedores
ORDER BY monto DESC;
