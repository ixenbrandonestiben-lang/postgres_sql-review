# Documentación de la base de datos: biblioteca-campus

## 1. Nombre de la base de datos

La base de datos se llama: **biblioteca-campus**.

Es una base de datos relacional diseñada para gestionar información bibliográfica básica de autores y libros, con fines de práctica, aprendizaje y demostración de consultas SQL en PostgreSQL.

## 2. Descripción de la base de datos

La base de datos **biblioteca-campus** tiene como objetivo registrar información sobre autores y sus obras literarias. Su estructura permite:

- almacenar datos de los autores,
- asociar cada libro a su autor correspondiente,
- guardar información relevante como título, ISBN, fecha de publicación y precio,
- realizar consultas para análisis de producción editorial, precios y autores.

En términos funcionales, esta base de datos simula una pequeña biblioteca digital o catálogo de libros, útil para prácticas de diseño de tablas, inserción de datos y consultas SQL.

## 3. Estructura de la base de datos

La organización del proyecto es la siguiente:

```text
biblioteca-campus/
├── README.md
├── ddl/
│   └── esquema.sql
├── dml/
│   └── inserciones.sql
└── dql/
    └── consultas.sql
```

### Descripción de cada carpeta

- **README.md**: documenta la base de datos, su propósito y componentes.
- **ddl/**: contiene el archivo de definición de estructuras (`esquema.sql`).
- **dml/**: contiene los datos de prueba insertados en la base de datos (`inserciones.sql`).
- **dql/**: contiene ejemplos de consultas SQL para consultar la información (`consultas.sql`).

## 4. Explicación de las tablas

### 4.1 Tabla: autores

La tabla `autores` almacena la información de cada escritor o autor.

#### Campos

- `autor_id`: identificador único del autor. Es la clave primaria.
- `nombre`: nombre del autor.
- `apellido`: apellido del autor.
- `fecha_nacimiento`: fecha de nacimiento del autor.
- `nacionalidad`: país o nacionalidad del autor.

#### Función

Esta tabla sirve como referencia principal para identificar a cada autor y su origen.

### 4.2 Tabla: libros

La tabla `libros` almacena la información de cada obra literaria.

#### Campos

- `libro_id`: identificador único del libro. Es la clave primaria.
- `autor_id`: identifica al autor del libro. Es una clave foránea que hace referencia a `autores(autor_id)`.
- `titulo`: título del libro.
- `isbn`: código internacional de libro.
- `fecha_publicacion`: fecha de publicación.
- `precio`: precio del libro.

#### Relación

Existe una relación de uno a muchos entre `autores` y `libros`:

- un autor puede tener muchos libros,
- cada libro pertenece a un único autor.

## 5. Explicación de los datos de pruebas

Los datos de prueba se encuentran en el archivo:

- `dml/inserciones.sql`

Estos registros fueron generados por **ChatGPT** para simular un catálogo bibliográfico realista. Incluyen información de autores reconocidos y obras destacadas de la literatura hispana, como:

- Gabriel García Márquez
- Isabel Allende
- Jorge Luis Borges
- Mario Vargas Llosa
- Julio Cortázar
- Laura Esquivel
- Carlos Ruiz Zafón
- Octavio Paz
- Rosa Montero
- Arturo Pérez-Reverte

Los libros insertados abarcan una variedad de títulos clásicos y contemporáneos, con campos como:

- ISBN,
- precio,
- fecha de publicación,
- título,
- autor asociado.

La intención de estos datos es demostrar cómo se estructura y se consulta una base de datos relacional sin necesidad de usar información real de una biblioteca productiva.

## 6. Explicación del archivo de consultas

El archivo:

- `dql/consultas.sql`

contiene una serie de consultas SQL de tipo de práctica y análisis.

### Objetivo de estas consultas

Estas consultas permiten:

- filtrar libros por fecha,
- consultar autores según nacionalidad,
- buscar libros por rango de precio,
- localizar textos que contengan palabras específicas,
- ordenar resultados por precio,
- hacer joins entre tablas,
- agrupar datos por autor,
- calcular promedios y totales.

### Ejemplos de consultas incluidas

1. Libros publicados después del año 2000.
2. Autores españoles o argentinos.
3. Libros con precios entre 15 y 20.
4. Libros cuyo título incluye la palabra “amor”.
5. Los 5 libros más costosos.
6. Título del libro con el nombre de su autor.
7. Número de libros por autor.
8. Promedio, mínimo y máximo del precio por autor.
9. Autores con promedio de precio mayor a 20.
10. Cantidad de libros por nacionalidad.

Estas consultas demuestran el uso de `SELECT`, `WHERE`, `LIKE`, `ORDER BY`, `GROUP BY`, `HAVING`, `JOIN` y `LIMIT`, que son conceptos esenciales en SQL.

## 7. Conclusión

La base de datos **biblioteca-campus** es una estructura sencilla, clara y didáctica para aprender sobre modelos relacionales en PostgreSQL. Su diseño permite manejar información de autores y libros de manera organizada y funcional.

A lo largo del proyecto, se evidencian tres etapas principales:

- **DDL**: creación de la estructura.
- **DML**: ingreso de datos de prueba.
- **DQL**: consulta y análisis de la información.

Gracias a esta organización, la base de datos funciona como una excelente herramienta de aprendizaje para estudiantes que desean practicar SQL, modelado de datos y consultas relacionales.

## 8. Autor

**Brandon Estiben Ixen**

---

Este documento fue elaborado para describir de forma clara y ordenada la base de datos `biblioteca-campus`, su estructura, tablas, datos de prueba y funcionamiento general.
