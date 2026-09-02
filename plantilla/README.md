
## 1. Nombre de la base de datos

La base de datos se llama: **plantilla**.

Es una estructura inicial preparada para organizar ejercicios de bases de datos relacionales en PostgreSQL.

## 2. Descripción de la base de datos

La base de datos **plantilla** funciona como punto de partida para crear un proyecto de práctica. Actualmente no contiene tablas, datos de prueba ni consultas SQL implementadas.

Su propósito es proporcionar una organización estándar para desarrollar posteriormente:

- el diseño de las tablas,
- la inserción de datos,
- las consultas de información,
- la documentación del proyecto.

## 3. Estructura de la base de datos

La organización del proyecto es la siguiente:

```text
plantilla/
├── README.md
├── ddl/
│   └── esquema.sql
├── dml/
│   └── inserciones.sql
└── dql/
	└── consultas.sql
```

### Descripción de cada carpeta

- **README.md**: documenta el propósito y el estado de la base de datos.
- **ddl/**: está destinado a contener la definición de las tablas y demás estructuras.
- **dml/**: está destinado a contener los datos de prueba y las operaciones de inserción.
- **dql/**: está destinado a contener las consultas SQL para consultar y analizar la información.

## 4. Explicación de las tablas

Actualmente no hay tablas definidas. El archivo `ddl/esquema.sql` se encuentra vacío, por lo que todavía no existen campos, claves primarias, claves foráneas ni relaciones que documentar.

## 5. Explicación de los datos de pruebas

El archivo `dml/inserciones.sql` se encuentra vacío. No hay registros de prueba insertados ni entidades disponibles para realizar operaciones de carga de datos.

## 6. Explicación del archivo de consultas

El archivo `dql/consultas.sql` se encuentra vacío. Por el momento no incluye consultas `SELECT`, filtros, agrupaciones, actualizaciones o eliminaciones.

### Estado actual

La base de datos requiere definir primero un modelo de información antes de poder agregar datos y consultas relacionadas.

## 7. Conclusión

La base de datos **plantilla** es un proyecto base sin implementar. Su separación en archivos DDL, DML y DQL proporciona una estructura clara para construir una nueva práctica de PostgreSQL de manera ordenada.

Para completarla, es necesario definir las tablas en `ddl/esquema.sql`, agregar registros en `dml/inserciones.sql` y crear las consultas correspondientes en `dql/consultas.sql`.

## 8. Autor

**Brandon Estiben Ixen**

---

Este documento fue elaborado para describir el estado inicial de la base de datos `plantilla` y la función de cada componente del proyecto.
