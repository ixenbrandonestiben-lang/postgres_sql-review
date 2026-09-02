 # Documentación de la base de datos: ventas_vendedores

## 1. Nombre de la base de datos

La base de datos se llama: **ventas_vendedores**.

Es una base de datos relacional sencilla para registrar ventas por vendedor y practicar funciones de ventana, agrupaciones y cálculos porcentuales en PostgreSQL.

## 2. Descripción de la base de datos

La base de datos **ventas_vendedores** tiene como objetivo almacenar operaciones de venta y permitir el análisis del desempeño de cada vendedor.

Su estructura permite:

- registrar la fecha de cada venta,
- identificar al vendedor responsable,
- guardar el monto de la operación,
- ordenar las ventas por importe,
- calcular la participación de cada venta dentro de su mes,
- obtener totales y promedios por vendedor.

## 3. Estructura de la base de datos

La organización del proyecto es la siguiente:

```text
ventas_vendedores/
├── README.md
├── ddl/
│   └── esquema.sql
├── dml/
│   └── inserciones.sql
└── dql/
	└── consultas.sql
```

### Descripción de cada carpeta

- **README.md**: documenta la base de datos y sus componentes.
- **ddl/**: contiene la definición de la tabla (`esquema.sql`).
- **dml/**: contiene las ventas de prueba (`inserciones.sql`).
- **dql/**: contiene consultas de ranking y análisis (`consultas.sql`).

## 4. Explicación de la tabla

### 4.1 Tabla: ventas_vendedores

La tabla `ventas_vendedores` almacena una fila por cada operación de venta.

#### Campos

- `fecha`: fecha en que se realizó la venta.
- `vendedor`: nombre del vendedor responsable.
- `monto`: importe de la venta con dos decimales.

#### Función

Esta tabla permite analizar el monto de las ventas por persona y por período.

#### Consideración del diseño

El esquema no define una clave primaria ni un identificador único para cada venta. Además, no establece restricciones `NOT NULL`. Para un sistema productivo sería recomendable agregar un `id` y restricciones de validación.

## 5. Explicación de los datos de pruebas

Los datos de prueba se encuentran en el archivo:

- `dml/inserciones.sql`

El archivo contiene **50 ventas** correspondientes a enero y febrero de 2026.

Participan siete vendedores:

- Juan,
- Ana,
- Carlos,
- Maria,
- Pedro,
- Sofia,
- Luisa.

Los montos tienen dos decimales y existen varias operaciones para cada vendedor, lo que permite realizar comparaciones, rankings y promedios.

## 6. Explicación del archivo de consultas

El archivo:

- `dql/consultas.sql`

contiene tres consultas principales de análisis.

### Ejemplos de consultas incluidas

1. Ordena las ventas de mayor a menor y asigna un ranking general mediante `ROW_NUMBER()`.
2. Calcula qué porcentaje representa cada venta respecto al total de su mes usando `SUM` como función de ventana.
3. Agrupa las ventas por vendedor para obtener el total vendido y el promedio por transacción, mostrando únicamente promedios superiores a `200`.

Estas consultas demuestran el uso de `SELECT`, `ORDER BY`, `ROW_NUMBER`, `SUM`, `AVG`, `GROUP BY`, `WITH`, `DATE_TRUNC` y filtros sobre resultados agrupados.

### Observación sobre la primera consulta

La primera consulta selecciona una columna llamada `id`, pero dicha columna no existe en el esquema actual. Debe eliminarse ese campo de la consulta o agregarse un identificador al DDL antes de ejecutar el archivo completo.

## 7. Conclusión

La base de datos **ventas_vendedores** ofrece un modelo pequeño y útil para practicar análisis de ventas con funciones de ventana y agregaciones. Sus 50 registros permiten comparar vendedores y estudiar la distribución mensual de los ingresos.

Para mejorar la consistencia del proyecto, se recomienda resolver la referencia a `id` en la primera consulta y agregar una clave primaria a la tabla.

## 8. Autor

**Brandon Estiben Ixen**

---

Este documento fue elaborado para describir de forma clara la estructura, los datos de prueba y las consultas de análisis de la base de datos `ventas_vendedores`.
