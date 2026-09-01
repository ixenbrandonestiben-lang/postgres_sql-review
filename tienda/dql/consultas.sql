-- 4. Seleccionar todos los registros
select * from tienda;

-- 5. Seleccionar columnas específicas (nombre y teléfono)
select nombre, telefono
from tienda;

-- 6. Filtrar registros por dirección (ejemplo: Zona 10)
select * from tienda
where direccion like '%Zona 10%';

-- 7. Ordenar registros por nombre ascendente
select * from tienda
order by nombre asc;

-- 8. Contar el total de registros en la tabla tienda
select count(*) as total_tiendas
from tienda;

-- 9. Actualizar el teléfono de una tienda específica
update tienda
set telefono = '555-0000'
where nombre = 'ElectroShop';

-- 10. Eliminar registros cuyo nombre empiece con 'Farmacia'
delete from tienda
where nombre like 'Farmacia%';

-- 11. Eliminar registros duplicados por nombre
delete from tienda t1
using tienda t2
where t1.id_tienda < t2.id_tienda
and t1.nombre = t2.nombre;
