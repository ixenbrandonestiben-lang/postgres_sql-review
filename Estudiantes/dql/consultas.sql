-- 1. Obtener nombre, edad y promedio de todos los estudiantes activos
SELECT 
        nombre,
        edad, 
        promedio
    FROM estudiantes 
    WHERE activo = true; 

-- 2. Listar estudiantes de género femenino con promedio mayor o igual a 4.5
SELECT 
        genero = 'F' 
    FROM estudiantes 
    WHERE promedio > 4.5; 

-- 3. Consultar los estudiantes ingresados en el año 2024, ordenados por fecha de ingreso
SELECT 
        nombre, 
        fecha_ingreso 
    FROM estudiantes 
    WHERE fecha_ingreso = 2024;

-- 4. Obtener el promedio de edad y el promedio general de calificaciones de todos los alumnos
SELECT 
        e.nombre, 
        AVG(e.edad) AS promedio_edad
    FROM estudiantes e 
    ORDER BY id DESC;

-- 5. Contar cuántos estudiantes hay registrados por cada género (Filtrado para Femenino)
SELECT 
        COUNT(e.genero) 
    FROM estudiantes e 
    WHERE genero = 'F';

-- 6. Listar los 5 estudiantes con los promedios más altos
SELECT * 
    FROM estudiantes 
    WHERE promedio >= 5 LIMIT 5;

-- 7. Seleccionar estudiantes cuya duración de tests haya sido mayor a 2 horas y media
SELECT * 
    FROM estudiantes 
    WHERE duracion_tests > '2:00:00' 
    ORDER BY id DESC;

-- 8. Buscar estudiantes cuyo análisis de perfil contenga "bases de datos" o "algoritmos"
-- (Nota: Esta consulta aparece incompleta/truncada en las fuentes originales como 'select * from estudienates')
SELECT * 
    FROM estudiantes 
    WHERE analisis_perfil 
        LIKE '%bases de datos%' 
            OR analisis_perfil 
        LIKE '%algoritmos%';

-- 9. Calcular la altura máxima y mínima registrada entre los estudiantes hombres
-- (Nota: Planteado en la teoría, pero omitido a nivel de código en el documento original)
SELECT 
        MAX(altura) AS altura_maxima,
        MIN(altura) AS altura_minima 
    FROM estudiantes
    WHERE genero = 'M';

-- 10. Mostrar el nombre, fecha e hora exacta de registro de los estudiantes que ingresaron antes de las 09:00:00 AM
-- (Nota: Planteado en la teoría, pero omitido a nivel de código en el documento original)
SELECT 
        nombre, 
        fecha_ingreso 
    FROM estudiantes 
    WHERE CAST(fecha_ingreso AS TIME) < '09:00:00';


## UPDATE

-- 1. Cambiar el estado a inactivo para el estudiante con id 6.
update estudiantes 
set activo = false
where id = 6;

-- 2. Incrementar en 0.2 el promedio de todos los estudiantes que tengan un promedio menor a 3.0.
update estudiantes
set proedio = promedio + 0.2
where promedio < 3.0;

-- 3. Actualizar la hora de ingreso a 08:00:00 para todos los estudiantes que ingresaron el día 2024-02-01.
update estudiantes
set hora_ingreso = '08:00:00'
where fecha_ingreso = '2024-02-01';

-- 4. Modificar el análisis de perfil del estudiante con id 15 para agregar la anotación.
update estudiantes
set analisis_perfil = analisis_perfil || ' Graduado con honores académicos.'
where id = 15;

-- 5. Cambiar el género a F y actualizar la altura a 1.65 para un estudiante específico cuyo ID sea 20.
update estudiantes 
set genero = 'F', altura = 1.65
where id = 20;

-- 6. Desactivar a todos los estudiantes registrados antes del año 2022 que tengan un promedio inferior a 3.5.
update estudiantes 
set activo = false
where extract(year from fecha_ingreso) < 2022
  and promedio < 3.5;

-- 7. Ajustar la duración de los tests a 2 horas para todos los estudiantes que actualmente tengan registrada una duración inferior a 1 hora.
update estudiantes 
set duracion_tests = interval '2 hours'
where duracion_tests < interval '1 hour';

-- 8. Aumentar la edad en 1 año a todos los estudiantes que ingresaron en el año 2021.
update estudiantes
set edad = edad + 1
where extract(year from fecha_ingreso) = 2021;

-- 9. Limpiar o establecer como NULL el campo analisis_perfil para los estudiantes inactivos.
update estudiantes
set analisis_perfil = null
where activo = false;

-- 10. Actualizar el promedio a 5.0 para el estudiante que tenga la fecha de registro más antigua de la base de datos.
update estudiantes
set promedio = 5.0
where fecha_ingreso = (
    select min(fecha_ingreso)
    from estudiantes
);

-- 1. Eliminar el registro del estudiante con id 34.
delete from estudiantes
where id = 34;

-- 2. Borrar todos los estudiantes que estén inactivos.
delete from estudiantes
where activo = false;

-- 3. Eliminar a los estudiantes cuyo promedio sea estrictamente menor a 2.5.
delete from estudiantes
where promedio < 2.5;

-- 4. Borrar las filas de estudiantes cuya fecha de ingreso sea anterior al '2021-01-01'.
delete from estudiantes
where fecha_ingreso < '2021-01-01';

-- 5. Eliminar a los estudiantes del género masculino que tengan una altura inferior a 1.60 m.
delete from estudiantes
where genero = 'M' and altura < 1.60;

-- 6. Borrar los registros de estudiantes ingresados en el año 2024 que se encuentren inactivos.
delete from estudiantes
where extract(year from fecha_ingreso) = 2024 and activo = false;

-- 7. Eliminar a los estudiantes cuya duración de tests sea menor a 45 minutos.
delete from estudiantes
where duracion_tests < interval '45 minutes';

-- 8. Borrar a todos los estudiantes cuyo nombre comience con la letra 'E'.
delete from estudiantes
where nombre like 'E%';

-- 9. Eliminar a los estudiantes activos que ingresaron antes del año 2023 y cuyo promedio sea menor a 3.5.
delete from estudiantes
where activo = true
  and extract(year from fecha_ingreso) < 2023
  and promedio < 3.5;

-- 10. Vaciar completamente la tabla estudiantes eliminando todos sus registros.
delete from estudiantes;
