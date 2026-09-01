-- 1. Libros publicados después del año 2000, ordenados del más reciente al más antiguo
SELECT titulo, anio_publicacion, precio
FROM libros
WHERE anio_publicacion > 2000
ORDER BY anio_publicacion DESC;

-- 2. Autores españoles o argentinos, mostrando nombre completo y nacionalidad
SELECT nombre || ' ' || apellido AS nombre_completo, nacionalidad
FROM autores
WHERE nacionalidad IN ('Española', 'Argentina');

-- 3. Libros con precio entre $15.00 y $20.00 inclusive
SELECT titulo, precio
FROM libros
WHERE precio BETWEEN 15.00 AND 20.00;

-- 4. Libros cuyo título contenga la palabra "amor" (sin importar mayúsculas/minúsculas)
SELECT titulo
FROM libros
WHERE LOWER(titulo) LIKE '%amor%';

-- 5. Los 5 libros más costosos con su título y precio
SELECT titulo, precio
FROM libros
ORDER BY precio DESC
LIMIT 5;

-- 6. Título del libro, precio y nombre completo del autor
SELECT l.titulo, l.precio, a.nombre || ' ' || a.apellido AS nombre_autor
FROM libros l
INNER JOIN autores a ON l.autor_id = a.autor_id
ORDER BY nombre_autor, l.titulo;

-- 7. Cantidad total de libros por autor, ordenados de mayor a menor
SELECT a.nombre || ' ' || a.apellido AS nombre_autor,
       COUNT(l.id_libro) AS total_libros
FROM libros l
INNER JOIN autores a ON l.autor_id = a.autor_id
GROUP BY a.nombre, a.apellido
ORDER BY total_libros DESC;

-- 8. Precio promedio, mínimo y máximo de los libros por autor
SELECT a.nombre || ' ' || a.apellido AS nombre_autor,
       ROUND(AVG(l.precio), 2) AS promedio_precio,
       MIN(l.precio) AS precio_minimo,
       MAX(l.precio) AS precio_maximo
FROM libros l
INNER JOIN autores a ON l.autor_id = a.autor_id
GROUP BY a.nombre, a.apellido;

-- 9. Autores con promedio de precio superior a $20.00
SELECT a.nombre || ' ' || a.apellido AS nombre_autor,
       ROUND(AVG(l.precio), 2) AS promedio_precio
FROM libros l
INNER JOIN autores a ON l.autor_id = a.autor_id
GROUP BY a.nombre, a.apellido
HAVING AVG(l.precio) > 20.00
ORDER BY promedio_precio DESC;

-- 10. Contar cuántos libros se han publicado por cada nacionalidad
SELECT a.nacionalidad,
       COUNT(l.id_libro) AS total_libros
FROM libros l
INNER JOIN autores a ON l.autor_id = a.autor_id
GROUP BY a.nacionalidad
ORDER BY total_libros DESC;
