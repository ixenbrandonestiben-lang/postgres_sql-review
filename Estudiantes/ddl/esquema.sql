create table estudiantes(
    id serial primary key,
    nombre varchar(60),
    edad int,
    promedio numeric(5,2),
    altura numeric(5.2),
    genero char(1),
    fecha_ingreso date,
    hora_ingreso time,
    duracion_tests interval,
    analisis_perfil text,
    activo boolean
);