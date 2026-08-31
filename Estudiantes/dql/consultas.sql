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
    WHERE CAST(fecha_ingreso AS TIME) < '09:00:00'; [8]
