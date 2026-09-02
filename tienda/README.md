 # Documentación de la base de datos: Tienda

## 1. Nombre de la base de datos

La base de datos se llama: **Tienda**.

Es una base de datos relacional diseñada para gestionar productos, existencias y ventas de una tienda, con fines de práctica y aprendizaje de SQL en PostgreSQL.

## 2. Descripción de la base de datos

La base de datos **Tienda** tiene como objetivo registrar los productos disponibles y las ventas realizadas.

Su estructura permite:

- almacenar el nombre, precio y stock de cada producto,
- registrar la cantidad vendida y la fecha de cada venta,
- asociar una venta con el identificador del producto correspondiente,
- realizar análisis sobre inventario y movimientos de ventas.

El modelo actual no declara formalmente una clave foránea entre `Ventas.producto_id` y `Productos.id`, aunque los datos insertados utilizan identificadores de productos existentes.

## 3. Estructura de la base de datos

La organización del proyecto es la siguiente:

```text
tienda/
├── README.md
├── ddl/
│   └── esquema.sql
├── dml/
│   └── inserciones.sql
└── dql/
	└── consultas.sql
```

### Descripción de cada carpeta

- **README.md**: documenta la base de datos, su propósito y sus limitaciones conocidas.
- **ddl/**: contiene la creación de la base de datos y de las tablas (`esquema.sql`).
- **dml/**: contiene los productos y ventas de prueba (`inserciones.sql`).
- **dql/**: contiene consultas SQL para trabajar con la información (`consultas.sql`).

## 4. Explicación de las tablas

### 4.1 Tabla: Productos

La tabla `Productos` almacena el catálogo y las existencias de la tienda.

#### Campos

- `id`: identificador único del producto. Es la clave primaria.
- `nombre`: nombre del producto.
- `precio`: precio unitario del producto con dos decimales.
- `stock`: cantidad disponible en inventario.

#### Función

Esta tabla sirve como catálogo principal para identificar los artículos que pueden venderse.

### 4.2 Tabla: Ventas

La tabla `Ventas` registra cada operación de venta.

#### Campos

- `id`: identificador único de la venta. Es la clave primaria.
- `producto_id`: identificador del producto vendido.
- `cantidad`: número de unidades vendidas.
- `fecha_venta`: fecha en que se realizó la venta.

#### Relación

Conceptualmente existe una relación de uno a muchos entre `Productos` y `Ventas`:

- un producto puede aparecer en muchas ventas,
- cada venta corresponde a un producto.

El DDL debería agregar una clave foránea para hacer cumplir esta relación en PostgreSQL.

## 5. Explicación de los datos de pruebas

Los datos de prueba se encuentran en el archivo:

- `dml/inserciones.sql`

El archivo inserta **10 productos** tecnológicos y de oficina, como laptops, periféricos, monitores, auriculares y accesorios USB.

También inserta **60 ventas** con fechas entre enero y marzo de 2026. Las ventas utilizan productos con identificadores del `1` al `10` y registran diferentes cantidades por operación.

Estos datos permiten practicar consultas de inventario, ventas por producto, cantidades vendidas y análisis por fecha.

## 6. Explicación del archivo de consultas

El archivo:

- `dql/consultas.sql`

contiene consultas numeradas del 4 al 11 que hacen referencia a una tabla llamada `tienda` y a columnas como `telefono`, `direccion` e `id_tienda`.

### Estado de las consultas

Las consultas actuales no corresponden al esquema definido en `ddl/esquema.sql`, porque el modelo contiene las tablas `Productos` y `Ventas`. Por esa razón, las sentencias no pueden ejecutarse correctamente contra esta base de datos sin una modificación.

Para que el archivo sea coherente con el modelo, debería incluir consultas como:

1. listado de productos y existencias,
2. productos ordenados por precio,
3. ventas con el nombre del producto mediante `JOIN`,
4. unidades vendidas por producto,
5. ventas agrupadas por fecha o mes,
6. actualización del stock,
7. validaciones de productos sin ventas.

## 7. Conclusión

La base de datos **Tienda** presenta un modelo sencillo de productos y ventas, adecuado para practicar claves primarias, relaciones, inserción de datos y consultas de análisis comercial.

El DDL y el DML describen correctamente un catálogo con movimientos de venta, pero el archivo DQL debe actualizarse para utilizar las tablas `Productos` y `Ventas`. También es recomendable declarar la clave foránea de `producto_id` para proteger la integridad de los datos.

## 8. Autor

**Brandon Estiben Ixen**

---

Este documento fue elaborado para describir la estructura, los datos de prueba y el estado actual de las consultas de la base de datos `Tienda`.
