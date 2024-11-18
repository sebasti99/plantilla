CREATE DATABASE bd_automoviles;
USE bd_automoviles;
CREATE TABLE clientes (
nif CHAR(9) PRIMARY KEY,
nombre VARCHAR(20) NOT NULL UNIQUE,
direccion VARCHAR(50),
telefono VARCHAR(20)
);
INSERT INTO clientes VALUES
('111', 'Ignacio', 'Murcia', '555-11-22-33'),
('222', 'Julia', 'Burgos', '555-00-33-44'),
('333', 'Pedro', 'Cádiz', '555-99-88-00'),
('444', 'David', 'Vizcaya', '555-00-88-77');
CREATE TABLE coches (
matricula CHAR(8) PRIMARY KEY,
marca VARCHAR(20),
modelo VARCHAR(20),
color VARCHAR(20),
precio NUMERIC(10,2),
nif_cliente CHAR(9),
FOREIGN KEY (nif_cliente) REFERENCES clientes(nif)
ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO coches VALUES
('2222-BBB', 'seat', 'ibiza', 'blanco', 12000, '111'),
('3333-CCC', 'seat', 'toledo', 'gris', 18000, '222'),
('4444-DDD', 'renault', 'clio', 'rojo', 15000, '222'),
('6666-FFF', 'renault', 'megane', 'blanco', 19000, '444');
CREATE TABLE revisiones (
codigo INT AUTO_INCREMENT PRIMARY KEY,
matricula_coche CHAR(8),
filtro BOOL DEFAULT FALSE,
aceite BOOL DEFAULT FALSE,
frenos BOOL DEFAULT FALSE,
FOREIGN KEY (matricula_coche) REFERENCES coches(matricula)
ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO revisiones VALUES
(DEFAULT, '2222-BBB', TRUE, FALSE, TRUE),
(DEFAULT, '3333-CCC', TRUE, TRUE, TRUE),
(DEFAULT, '4444-DDD', FALSE, FALSE, TRUE),
(DEFAULT, '2222-BBB', TRUE, FALSE, TRUE);