CREATE DATABASE biblioteca;

\c biblioteca;

CREATE TABLE libro(
    codigo_libro SERIAL PRIMARY KEY,
    titulo VARCHAR(30) UNIQUE
);

CREATE TABLE autor(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) UNIQUE
);

CREATE TABLE editorial(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) UNIQUE
);

CREATE TABLE lector(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20)
);






CREATE TABLE editorial_libro(
    editorial_id INT REFERENCES editorial(id),
    libro_codigo INT REFERENCES libro(codigo_libro)
);

CREATE TABLE autor_libro(
    libro_codigo INT REFERENCES libro(codigo_libro),
     autor_id INT REFERENCES autor(id)
);

CREATE TABLE prestamo(
    id SERIAL PRIMARY KEY,
    lector_id INT REFERENCES lector(id),
    libro_codigo INT REFERENCES libro(codigo_libro),
    fecha_devolucion DATE
);