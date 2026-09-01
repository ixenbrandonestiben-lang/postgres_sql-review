# Documentación de la base de datos: Estudiantes

## 1. Nombre de la base de datos

La base de datos se llama: **Estudiantes**.

Es una base de datos relacional orientada a la gestión de información académica de estudiantes, diseñada para practicar consultas SQL, filtros, agrupaciones, actualizaciones y eliminaciones en PostgreSQL.

## 2. Descripción de la base de datos

La base de datos **Estudiantes** tiene como finalidad registrar información académica y personal básica de un conjunto de estudiantes.

Su estructura permite:

- almacenar datos personales como nombre, edad, género y altura,
- registrar el promedio académico,
- guardar fechas y horas de ingreso,
- medir la duración de pruebas o evaluaciones,
- guardar un análisis de perfil del estudiante,
- indicar si el estudiante está activo o inactivo.

Esta base de datos simula un sistema de control académico o de seguimiento estudiantil en una institución educativa.

## 3. Estructura de la base de datos

La organización del proyecto es la siguiente:

```text
Estudiantes/
├── README.md
├── ddl/
│   └── esquema.sql
├── dml/
│   └── inserciones.sql
└── dql/
    └── consultas.sql
```

### Descripción de cada carpeta

- **README.md**: documenta la base de datos y su propósito.
- **ddl/**: contiene la definición de la estructura de la tabla (`esquema.sql`).
- **dml/**: contiene los datos de prueba insertados en la base de datos (`inserciones.sql`).
- **dql/**: contiene consultas SQL para consultar, actualizar y eliminar información (`consultas.sql`).

## 4. Explicación de la tabla

### 4.1 Tabla: estudiantes

La tabla `estudiantes` almacena la información principal de cada alumno.

#### Campos

- `id`: identificador único del estudiante. Es la clave primaria.
- `nombre`: nombre completo del estudiante.
- `edad`: edad del estudiante.
- `promedio`: promedio académico del estudiante.
- `altura`: altura del estudiante.
- `genero`: género del estudiante representado con un carácter (`M` o `F`).
- `fecha_ingreso`: fecha en que el estudiante ingresó a la institución.
- `hora_ingreso`: hora de ingreso.
- `duracion_tests`: tiempo que duró una evaluación o prueba.
- `analisis_perfil`: texto descriptivo con un análisis del perfil académico del estudiante.
- `activo`: indica si el estudiante está activo o inactivo en el sistema.

#### Función

La tabla central permite llevar un registro académico y de asistencia, así como consultar el rendimiento y perfil de cada estudiante.

> Nota: en el archivo de inserción se incluye también el campo `fecha_hora_registro`, que no aparece en el esquema principal de la tabla. Esto sugiere un ejemplo adicional o una inconsistencia entre los scripts, pero la estructura base de la base de datos queda definida principalmente por la tabla `estudiantes`.

## 5. Explicación de los datos de pruebas

Los datos de prueba se encuentran en el archivo:

- `dml/inserciones.sql`

Estos registros fueron generados por **ChatGPT** para simular un conjunto realista de estudiantes universitarios. El archivo incluye nombres, edades, promedios, alturas, géneros y fechas de ingreso que permiten hacer análisis estadísticos y filtros académicos.

### Características de los datos

- estudiantes activos e inactivos,
- promedios elevados y bajos,
- géneros masculinos y femeninos,
- diferentes rangos de edad,
- perfiles académicos con análisis de desempeño,
- registros de ingreso con fecha y hora.

Estos datos permiten probar consultas de:

- selección de estudiantes activos,
- búsqueda por género,
- ordenamiento por promedio,
- comparación de rangos de edad,
- uso de condiciones por fechas y horas,
- manejo de texto en `analisis_perfil`.

## 6. Explicación del archivo de consultas

El archivo:

- `dql/consultas.sql`

contiene una serie de consultas SQL con fines de práctica.

### Tipos de consultas que incluye

1. **SELECT básicos**
   - para mostrar estudiantes activos,
   - listar por género,
   - consultar promedios y edades,
   - ordenar por fecha de ingreso.

2. **Consultas con filtros**
   - estudiantes con promedio alto,
   - evaluación de duración de pruebas,
   - búsqueda por palabras clave dentro del análisis de perfil.

3. **Agrupaciones y cálculos**
   - conteos por género,
   - consulta de máximo y mínimo,
   - uso de agregaciones estadísticas.

4. **Actualizaciones**
   - cambiar estado de estudiantes,
   - modificar promedios,
   - actualizar fechas, horas y análisis de perfil.

5. **Eliminaciones**
   - borrar estudiantes inactivos,
   - eliminar por promedio o fecha,
   - borrar registros según género o tiempo de evaluación.

Estas consultas demuestran operaciones esenciales de SQL como `SELECT`, `WHERE`, `ORDER BY`, `LIKE`, `COUNT`, `AVG`, `MAX`, `MIN`, `UPDATE` y `DELETE`.

## 7. Conclusión

La base de datos **Estudiantes** es una estructura simple pero funcional para el manejo de información académica. Permite organizar datos de alumnos y realizar análisis básicos sobre rendimiento, asistencia y perfil estudiantil.

Su diseño es ideal para aprender:

- creación de tablas,
- inserción de datos,
- filtros y condiciones,
- consultas con agregaciones,
- actualización y borrado de registros.

En conjunto, la base de datos representa una práctica útil para el aprendizaje de SQL en un contexto educativo realista.

## 8. Autor

**Brandon Estiben Ixen**

---

Este documento fue elaborado para describir de forma clara la base de datos `Estudiantes`, su estructura, contenido y uso dentro del ejercicio de SQL.
