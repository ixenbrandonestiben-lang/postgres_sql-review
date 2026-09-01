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

-- Reporte con total acumulado y promedio por transacción de cada vendedor
-- Filtrando solo los vendedores con promedio > 200
WITH reporte AS (
    SELECT 
        vendedor,
        SUM(monto) AS total_vendido,
        AVG(monto) AS promedio_por_transaccion
    FROM ventas_vendedores
    GROUP BY vendedor
)
SELECT 
    vendedor,
    total_vendido,
    ROUND(promedio_por_transaccion, 2) AS promedio_redondeado
FROM reporte
WHERE promedio_por_transaccion > 200
ORDER BY total_vendido DESC;
