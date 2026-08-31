CREATE TABLE inventario (
  id SERIAL PRIMARY KEY,
  producto VARCHAR(150),
  cantidad INT,
  precio NUMERIC(6, 2)
);
