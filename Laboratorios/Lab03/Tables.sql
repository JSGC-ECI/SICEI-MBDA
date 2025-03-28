CREATE TABLE Desayuno
(
    nombre     VARCHAR2(5)  NOT NULL,
    precio     NUMBER(9)    NOT NULL CHECK ( precio > 0 AND MOD(precio, 100) = 0 ),
    decoracion VARCHAR2(10) NULL,
    personas   NUMBER(3)    NOT NULL CHECK ( personas > 0 )
);

CREATE TABLE Basico
(
    nombre      VARCHAR2(5)  NOT NULL,
    precio      NUMBER(9)    NOT NULL CHECK ( precio > 0 AND MOD(precio, 100) = 0 ),
    descripcion VARCHAR2(10) NULL
);

CREATE TABLE Factura
(
    numero          NUMBER(5)     NOT NULL,
    fecha           DATE          NOT NULL,
    entrega         DATE          NOT NULL,
    unidades        NUMBER(3)     NOT NULL CHECK ( unidades > 0 ),
    hora            VARCHAR2(5)   NULL CHECK (REGEXP_LIKE(hora, '^([0][5-9]|1[0-2]):(00|30)$')),
    detalle         VARCHAR2(100) NULL,
    total           NUMBER(9)     NOT NULL CHECK ( total > 0 AND MOD(total, 100) = 0 ),
    estado          CHAR(1)       NOT NULL CHECK ( estado IN ('N', 'B', 'P', 'E') ),
    boleta          NUMBER(5)     NOT NULL CHECK ( boleta >= 100000 ),
    nombre_desayuno VARCHAR2(5)   NULL,
    nombre_estilo   VARCHAR2(5)   NULL,
    cedula_cliente  NUMBER(15)    NOT NULL
);

CREATE TABLE Cliente
(
    cedula    NUMBER(15)   NOT NULL,
    nombre    VARCHAR2(20) NOT NULL,
    descuento NUMBER(3)    NULL CHECK ( descuento > 0 AND descuento <= 100 ),
    direccion VARCHAR2(20) NULL,
    correo    VARCHAR2(64) NOT NULL CHECK ( REGEXP_LIKE(correo, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$'))
);

CREATE TABLE Telefonos
(
    cedula_cliente NUMBER(15) NOT NULL,
    telefono       VARCHAR2(7)
);

CREATE TABLE Estilo
(
    nombre      VARCHAR2(5)   NOT NULL,
    descripcion VARCHAR2(100) NOT NULL
);

CREATE TABLE Campaña
(
    id              NUMBER(10)    NOT NULL,
    nombre          VARCHAR2(20)  NOT NULL,
    descripcion     VARCHAR2(100) NOT NULL,
    presupuesto     NUMBER(9)     NOT NULL CHECK ( presupuesto > 0 AND MOD(presupuesto, 100) = 0 ),
    fecha_inicio    DATE          NOT NULL,
    duracion        NUMBER(4),
    nombre_desayuno VARCHAR2(5)   NOT NULL,
    nombre_basico   VARCHAR2(5)   NOT NULL
);

CREATE TABLE Fisico
(
    id           NUMBER(10)    NOT NULL,
    titulo       VARCHAR2(100) NOT NULL,
    fecha_inicio DATE          NOT NULL,
    fecha_fin    DATE          NOT NULL,
    costo        NUMBER(9)     NOT NULL CHECK ( costo > 0 AND MOD(costo, 100) = 0 ),
    estado       CHAR(1)       NOT NULL CHECK ( estado IN ('N', 'B', 'P', 'E') ),
    direccion    VARCHAR2(100) NOT NULL,
    dimesiones   VARCHAR2(13)  NOT NULL CHECK ( REGEXP_LIKE(dimesiones, '^\d+x\d+$') ),
    id_campaña   NUMBER(10)    NOT NULL
);

CREATE TABLE Digital
(
    id           NUMBER(10)    NOT NULL,
    titulo       VARCHAR2(100) NOT NULL,
    fecha_inicio DATE          NOT NULL,
    fecha_fin    DATE          NOT NULL,
    costo        NUMBER(9)     NOT NULL CHECK ( costo > 0 AND MOD(costo, 100) = 0 ),
    estado       CHAR(1)       NOT NULL CHECK ( estado IN ('N', 'B', 'P', 'E') ),
    url          VARCHAR2(200) NOT NULL CHECK ( REGEXP_LIKE(url,
                                                            '^(https?://)?([a-zA-Z0-9.-]+).([a-zA-Z]{2,})(:\d{2,5})?(/[^\s]*)?$') ),
    id_campaña   NUMBER(10)    NOT NULL
);

CREATE TABLE Especificacion
(
    id_digital NUMBER(10)    NOT NULL,
    formato    VARCHAR2(16)  NOT NULL,
    url        VARCHAR2(200) NOT NULL CHECK ( REGEXP_LIKE(url,
                                                          '^(https?://)?([a-zA-Z0-9.-]+).([a-zA-Z]{2,})(:\d{2,5})?(/[^\s]*)?$') )
);

CREATE TABLE SePiden
(
    nombre_producto VARCHAR2(5) NOT NULL,
    numero_factura  NUMBER(5)   NOT NULL,
    unidades        NUMBER(3)   NOT NULL CHECK ( unidades > 0 )
);

CREATE TABLE SeVendenEn
(
    nombre_estilo   VARCHAR2(5) NOT NULL,
    nombre_producto VARCHAR2(5) NOT NULL,
    precio          NUMBER(9)   NOT NULL CHECK ( precio > 0 AND MOD(precio, 100) = 0 )
);

-- Insertar datos en la tabla Desayuno
INSERT INTO Desayuno (nombre, precio, decoracion, personas) VALUES ('D1', 1000, 'Flores', 2);
INSERT INTO Desayuno (nombre, precio, decoracion, personas) VALUES ('D2', 2000, 'Globos', 4);
INSERT INTO Desayuno (nombre, precio, decoracion, personas) VALUES ('D3', 1500, 'Velas', 3);

-- Insertar datos en la tabla Basico
INSERT INTO Basico (nombre, precio, descripcion) VALUES ('B1', 500, 'Simple');
INSERT INTO Basico (nombre, precio, descripcion) VALUES ('B2', 1000, 'Completo');
INSERT INTO Basico (nombre, precio, descripcion) VALUES ('B3', 700, 'Medio');

-- Insertar datos en la tabla Factura
INSERT INTO Factura (numero, fecha, entrega, unidades, hora, detalle, total, estado, boleta, nombre_desayuno, nombre_estilo, cedula_cliente)
VALUES (1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-02', 'YYYY-MM-DD'), 2, '10:00', 'Detalle 1', 2000, 'N', 100000, 'D1', 'E1', 123456789012345);
INSERT INTO Factura (numero, fecha, entrega, unidades, hora, detalle, total, estado, boleta, nombre_desayuno, nombre_estilo, cedula_cliente)
VALUES (2, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-02-02', 'YYYY-MM-DD'), 3, '11:00', 'Detalle 2', 3000, 'B', 100001, 'D2', 'E2', 123456789012346);
INSERT INTO Factura (numero, fecha, entrega, unidades, hora, detalle, total, estado, boleta, nombre_desayuno, nombre_estilo, cedula_cliente)
VALUES (3, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-03-02', 'YYYY-MM-DD'), 1, '09:00', 'Detalle 3', 1000, 'P', 100002, 'D3', 'E3', 123456789012347);

-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (cedula, nombre, descuento, direccion, correo) VALUES (123456789012345, 'Cliente 1', 10, 'Direccion 1', 'cliente1@example.com');
INSERT INTO Cliente (cedula, nombre, descuento, direccion, correo) VALUES (123456789012346, 'Cliente 2', 20, 'Direccion 2', 'cliente2@example.com');
INSERT INTO Cliente (cedula, nombre, descuento, direccion, correo) VALUES (123456789012347, 'Cliente 3', 15, 'Direccion 3', 'cliente3@example.com');

-- Insertar datos en la tabla Telefonos
INSERT INTO Telefonos (cedula_cliente, telefono) VALUES (123456789012345, '1234567');
INSERT INTO Telefonos (cedula_cliente, telefono) VALUES (123456789012346, '2345678');
INSERT INTO Telefonos (cedula_cliente, telefono) VALUES (123456789012347, '3456789');

-- Insertar datos en la tabla Estilo
INSERT INTO Estilo (nombre, descripcion) VALUES ('E1', 'Estilo 1');
INSERT INTO Estilo (nombre, descripcion) VALUES ('E2', 'Estilo 2');
INSERT INTO Estilo (nombre, descripcion) VALUES ('E3', 'Estilo 3');

-- Insertar datos en la tabla Campaña
INSERT INTO Campaña (id, nombre, descripcion, presupuesto, fecha_inicio, duracion, nombre_desayuno, nombre_basico)
VALUES (1, 'Campaña 1', 'Descripcion 1', 10000, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 30, 'D1', 'B1');
INSERT INTO Campaña (id, nombre, descripcion, presupuesto, fecha_inicio, duracion, nombre_desayuno, nombre_basico)
VALUES (2, 'Campaña 2', 'Descripcion 2', 20000, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 60, 'D2', 'B2');
INSERT INTO Campaña (id, nombre, descripcion, presupuesto, fecha_inicio, duracion, nombre_desayuno, nombre_basico)
VALUES (3, 'Campaña 3', 'Descripcion 3', 15000, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 45, 'D3', 'B3');

-- Insertar datos en la tabla Fisico
INSERT INTO Fisico (id, titulo, fecha_inicio, fecha_fin, costo, estado, direccion, dimesiones, id_campaña)
VALUES (1, 'Fisico 1', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-31', 'YYYY-MM-DD'), 5000, 'N', 'Direccion 1', '10x10', 1);
INSERT INTO Fisico (id, titulo, fecha_inicio, fecha_fin, costo, estado, direccion, dimesiones, id_campaña)
VALUES (2, 'Fisico 2', TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-02-28', 'YYYY-MM-DD'), 10000, 'B', 'Direccion 2', '20x20', 2);
INSERT INTO Fisico (id, titulo, fecha_inicio, fecha_fin, costo, estado, direccion, dimesiones, id_campaña)
VALUES (3, 'Fisico 3', TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-03-31', 'YYYY-MM-DD'), 7500, 'P', 'Direccion 3', '15x15', 3);

-- Insertar datos en la tabla Digital
INSERT INTO Digital (id, titulo, fecha_inicio, fecha_fin, costo, estado, url, id_campaña)
VALUES (1, 'Digital 1', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-31', 'YYYY-MM-DD'), 5000, 'N', 'http://example.com/1', 1);
INSERT INTO Digital (id, titulo, fecha_inicio, fecha_fin, costo, estado, url, id_campaña)
VALUES (2, 'Digital 2', TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-02-28', 'YYYY-MM-DD'), 10000, 'B', 'http://example.com/2', 2);
INSERT INTO Digital (id, titulo, fecha_inicio, fecha_fin, costo, estado, url, id_campaña)
VALUES (3, 'Digital 3', TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-03-31', 'YYYY-MM-DD'), 7500, 'P', 'http://example.com/3', 3);

-- Insertar datos en la tabla Especificacion
INSERT INTO Especificacion (id_digital, formato, url) VALUES (1, 'Formato 1', 'http://example.com/1');
INSERT INTO Especificacion (id_digital, formato, url) VALUES (2, 'Formato 2', 'http://example.com/2');
INSERT INTO Especificacion (id_digital, formato, url) VALUES (3, 'Formato 3', 'http://example.com/3');

-- Insertar datos en la tabla SePiden
INSERT INTO SePiden (nombre_producto, numero_factura, unidades) VALUES ('P1', 1, 2);
INSERT INTO SePiden (nombre_producto, numero_factura, unidades) VALUES ('P2', 2, 3);
INSERT INTO SePiden (nombre_producto, numero_factura, unidades) VALUES ('P3', 3, 1);

-- Insertar datos en la tabla SeVendenEn
INSERT INTO SeVendenEn (nombre_estilo, nombre_producto, precio) VALUES ('E1', 'P1', 1000);
INSERT INTO SeVendenEn (nombre_estilo, nombre_producto, precio) VALUES ('E2', 'P2', 2000);
INSERT INTO SeVendenEn (nombre_estilo, nombre_producto, precio) VALUES ('E3', 'P3', 1500);

-- Error: El precio no es múltiplo de 100.
INSERT INTO Desayuno (nombre, precio, decoracion, personas) VALUES ('D4', 1050, 'Flores', 2);

-- Error: El correo no cumple con el formato especificado.
INSERT INTO Cliente (cedula, nombre, descuento, direccion, correo) VALUES (123456789012348, 'Cliente 4', 10, 'Direccion 4', 'cliente4@com');

-- Error: El estado no está en el conjunto permitido ('N', 'B', 'P', 'E').
INSERT INTO Factura (numero, fecha, entrega, unidades, hora, detalle, total, estado, boleta, nombre_desayuno, nombre_estilo, cedula_cliente)
VALUES (4, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-04-02', 'YYYY-MM-DD'), 2, '10:00', 'Detalle 4', 2000, 'X', 100003, 'D1', 'E1', 123456789012345);

-- Error esperado: El número de teléfono debe tener 7 dígitos.
INSERT INTO Telefonos (cedula_cliente, telefono) VALUES (123456789012345, '12345');
SELECT * FROM Telefonos;

-- Error esperado: La URL no cumple con el formato especificado.
INSERT INTO Especificacion (id_digital, formato, url) VALUES (1, 'Formato 1', 'invalid_url');
SELECT * FROM Especificacion;


-- An attempt to insert a duplicate primary key value
INSERT INTO Cliente (cedula, nombre, descuento, direccion, correo) VALUES (123456789012345, 'Cliente 1', 10, 'Direccion 1', 'hola@mail.com');
INSERT INTO Cliente (cedula, nombre, descuento, direccion, correo) VALUES (123456789012345, 'Cliente 1', 10, 'Direccion 1', 'hola@mail.com');
SELECT * FROM Cliente;
-- Error: Duplicated entry for 'cédula'