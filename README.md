## 1. Nombre del proyecto

El proyecto reúne varias bases de datos de práctica desarrolladas con PostgreSQL.

## 2. Descripción del proyecto

Este repositorio contiene ejercicios de diseño, carga y consulta de bases de datos relacionales. Cada base de datos se organiza en sus propios directorios para separar la documentación, la definición de estructuras, los datos de prueba y las consultas SQL.

Las bases incluidas son:

- **biblioteca-campus**: autores y libros.
- **Estudiantes**: información académica y personal de estudiantes.
- **plantilla**: estructura inicial para una nueva práctica.
- **tienda**: productos y ventas.
- **ventas_vendedores**: ventas agrupadas por vendedor.

## 3. Estructura general de las bases de datos

La organización completa del proyecto es la siguiente:

```text
postgres_sql-review/
├── README.md
├── biblioteca-campus/
│   ├── README.md
│   ├── ddl/
│   │   └── esquema.sql
│   ├── dml/
│   │   └── inserciones.sql
│   └── dql/
│       └── consultas.sql
├── Estudiantes/
│   ├── README.md
│   ├── ddl/
│   │   └── esquema.sql
│   ├── dml/
│   │   └── inserciones.sql
│   └── dql/
│       └── consultas.sql
├── plantilla/
│   ├── README.md
│   ├── ddl/
│   │   └── esquema.sql
│   ├── dml/
│   │   └── inserciones.sql
│   └── dql/
│       └── consultas.sql
├── tienda/
│   ├── README.md
│   ├── ddl/
│   │   └── esquema.sql
│   ├── dml/
│   │   └── inserciones.sql
│   └── dql/
│       └── consultas.sql
└── ventas_vendedores/
	├── README.md
	├── ddl/
	│   └── esquema.sql
	├── dml/
	│   └── inserciones.sql
	└── dql/
		└── consultas.sql
```

### Descripción de cada carpeta

- **README.md**: documenta el propósito, la estructura y el contenido de cada base de datos.
- **ddl/**: contiene los archivos `esquema.sql`, donde se definen las bases de datos y sus tablas.
- **dml/**: contiene los archivos `inserciones.sql`, donde se agregan los datos de prueba.
- **dql/**: contiene los archivos `consultas.sql`, donde se realizan consultas y análisis de la información.

## 4. Explicación de las bases de datos

Cada directorio representa una base de datos independiente y mantiene la misma organización interna:

- `biblioteca-campus` trabaja con autores y libros.
- `Estudiantes` trabaja con información de estudiantes.
- `plantilla` proporciona una estructura vacía para futuros ejercicios.
- `tienda` trabaja con productos y ventas.
- `ventas_vendedores` trabaja con ventas y vendedores.

## 5. Explicación de los datos de pruebas

Los datos de prueba se encuentran dentro de la carpeta `dml/` de cada base de datos. Estos registros permiten ejecutar las consultas SQL y practicar filtros, ordenamientos, agrupaciones, relaciones y cálculos.

## 6. Explicación de los archivos de consultas

Los archivos de consultas se encuentran dentro de la carpeta `dql/` de cada base de datos. Cada archivo contiene las operaciones necesarias para consultar o analizar la información definida en su respectivo esquema.

## 7. Conclusión

El proyecto reúne cinco estructuras de bases de datos organizadas de forma uniforme. El árbol general permite identificar rápidamente la documentación, los scripts DDL, los datos DML y las consultas DQL correspondientes a cada práctica.

## 8. Autor

**Brandon Estiben Ixen**

---

Este documento fue elaborado para presentar de forma general la organización del repositorio `postgres_sql-review` y sus bases de datos.
