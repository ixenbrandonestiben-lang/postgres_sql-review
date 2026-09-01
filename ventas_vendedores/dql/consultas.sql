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

-- Calcular qué porcentaje representa cada venta respecto al total del mes
SELECT 
    fecha,
    vendedor,
    monto,
    ROUND(
        monto * 100.0 / SUM(monto) OVER (PARTITION BY DATE_TRUNC('month', fecha)),
        2
    )::text || '%' AS porcentaje_mes
FROM ventas_vendedores
ORDER BY fecha, vendedor;
