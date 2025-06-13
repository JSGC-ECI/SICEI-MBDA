---------- CODE START ----------

-- CICLO 1: Tablas

CREATE TABLE universidades (
    codigo VARCHAR2(3) NOT NULL,
    nombre VARCHAR2(20) NOT NULL,
    direccion VARCHAR2(50) NOT NULL,
    usuario VARCHAR2(10)
);

CREATE TABLE usuarios (
    codigo VARCHAR2(10) NOT NULL,
    tid VARCHAR2(2) NOT NULL,
    nid VARCHAR2(10) NOT NULL ,
    nombre VARCHAR2(50) NOT NULL,
    programa VARCHAR2(20) NOT NULL,
    correo VARCHAR2(50) NOT NULL,
    registro DATE NOT NULL,
    suspencion DATE,
    nSuspenciones NUMBER(3) NOT NULL,
    universidad VARCHAR2(3) NOT NULL
);

CREATE TABLE calificaciones (
    usuario VARCHAR2(10) NOT NULL,
    articulo NUMBER(16) NOT NULL,
    estrella NUMBER(1) NOT NULL
);

CREATE TABLE categorias (
    codigo VARCHAR2(5) NOT NULL,
    nombre VARCHAR2(20) NOT NULL,
    tipo VARCHAR2(1) NOT NULL,
    minimo NUMBER(3) NOT NULL,
    maximo NUMBER(3) NOT NULL,
    codigo1 VARCHAR2(5) NOT NULL
);

CREATE TABLE articulos (
    id NUMBER(16) NOT NULL, 
    descripcion VARCHAR2(20) NOT NULL,
    estado VARCHAR2(1) NOT NULL,
    foto VARCHAR2(100) NOT NULL,
    precio NUMBER(3) NOT NULL,
    disponible VARCHAR2(1) NOT NULL,
    categoria VARCHAR2(5) NOT NULL,
    usuario VARCHAR2(10) NOT NULL
);

CREATE TABLE caracteristicas (
    articulo NUMBER(16) NOT NULL,
    caracteristica VARCHAR2(20) NOT NULL
);

CREATE TABLE ropas (
    articulo NUMBER(16) NOT NULL,
    talla VARCHAR2(2) NOT NULL,
    material VARCHAR2(10) NOT NULL,
    color VARCHAR2(10) NOT NULL
);

CREATE TABLE perecederos (
    articulo NUMBER(16) NOT NULL,
    vencimiento DATE NOT NULL
);

CREATE TABLE auditorias (
    id NUMBER(9) DEFAULT idauditoria.nextval,
    fecha DATE,
    accion VARCHAR2(1) NOT NULL,
    nombre VARCHAR2(20) NOT NULL,
    evaluacion VARCHAR2(6),
    categoria VARCHAR2(5)
);

DROP SEQUENCE idauditoria;
CREATE SEQUENCE idauditoria
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;

CREATE TABLE evaluaciones (
    a_omes VARCHAR2(6) NOT NULL,
    tid VARCHAR2(2) NOT NULL,
    nid VARCHAR2(10) NOT NULL,
    fecha DATE,
    descripcion XMLTYPE,
    reporte VARCHAR2(100) NOT NULL,
    resultado VARCHAR2(2) NOT NULL 
);

CREATE TABLE respuestas (
    a_omes VARCHAR2(6) NOT NULL,
    respuesta VARCHAR2(50) NOT NULL
);



-- CICLO1: XTablas
/*
DROP TABLE universidades CASCADE CONSTRAINTS;
DROP TABLE usuarios CASCADE CONSTRAINTS;
DROP TABLE calificaciones CASCADE CONSTRAINTS;
DROP TABLE categorias CASCADE CONSTRAINTS;
DROP TABLE articulos CASCADE CONSTRAINTS;
DROP TABLE caracteristicas CASCADE CONSTRAINTS;
DROP TABLE ropas CASCADE CONSTRAINTS;
DROP TABLE perecederos CASCADE CONSTRAINTS;
DROP TABLE auditorias CASCADE CONSTRAINTS;
DROP TABLE evaluaciones CASCADE CONSTRAINTS;
DROP TABLE respuestas CASCADE CONSTRAINTS;
DROP SEQUENCE idauditoria;

-- codigo para borrar toda la base (ELIMINAR AlL TERMINAR)
DECLARE
  v_sql VARCHAR2(1000);
BEGIN
  FOR c IN (SELECT Table_Name FROM user_tables) LOOP
    v_sql := 'DROP TABLE ' || c.Table_Name || ' CASCADE CONSTRAINTS';
    EXECUTE IMMEDIATE v_sql;
  END LOOP;
END;
COMMIT;
*/


-- CICLO 1: Primarias

ALTER TABLE universidades
ADD CONSTRAINT PK_UNIVERSIDADES PRIMARY KEY (codigo);

ALTER TABLE usuarios
ADD CONSTRAINT PK_USUARIOS PRIMARY KEY (codigo);

ALTER TABLE calificaciones
ADD CONSTRAINT PK_CALIFICACIONES PRIMARY KEY (usuario, articulo);

ALTER TABLE categorias
ADD CONSTRAINT PK_CATEGORIAS PRIMARY KEY (codigo);

ALTER TABLE articulos
ADD CONSTRAINT PK_ARTICULOS PRIMARY KEY (id);

ALTER TABLE caracteristicas
ADD CONSTRAINT PK_CARACTERISTICAS PRIMARY KEY (articulo);

ALTER TABLE ropas
ADD CONSTRAINT PK_ROPAS PRIMARY KEY (articulo);

ALTER TABLE perecederos
ADD CONSTRAINT PK_PERECEDEROS PRIMARY KEY (articulo);

ALTER TABLE auditorias
ADD CONSTRAINT PK_AUDITORIAS PRIMARY KEY (id);

ALTER TABLE evaluaciones
ADD CONSTRAINT PK_EVALUACIONES PRIMARY KEY (a_omes);

ALTER TABLE respuestas
ADD CONSTRAINT PK_RESPUESTAS PRIMARY KEY (a_omes);



-- CICLO 1: Unicas

ALTER TABLE usuarios
ADD CONSTRAINT UK_USUARIOS_TID_NID UNIQUE (tid, nid);

ALTER TABLE articulos
ADD CONSTRAINT UK_ARTICULOS_FOTO UNIQUE (foto);

ALTER TABLE evaluaciones
ADD CONSTRAINT UK_EVALUACIONES_REPORTE UNIQUE (reporte);

ALTER TABLE universidades
ADD CONSTRAINT UK_UNIVERSIDADES_USUARIO UNIQUE (usuario);



-- CICLO 1: Foraneas

ALTER TABLE universidades
ADD CONSTRAINT FK_UNIVERSIDADES_USUARIOS FOREIGN KEY (usuario) REFERENCES usuarios(codigo);

ALTER TABLE usuarios
ADD CONSTRAINT FK_USUARIOS_UNIVERSIDADES FOREIGN KEY (universidad) REFERENCES universidades(codigo);

ALTER TABLE calificaciones
ADD CONSTRAINT FK_CALIFICACIONES_USUARIOS FOREIGN KEY (usuario) REFERENCES usuarios(codigo);

ALTER TABLE calificaciones
ADD CONSTRAINT FK_CALIFICACIONES_ARTICULOS FOREIGN KEY (articulo) REFERENCES articulos(id);

ALTER TABLE categorias
ADD CONSTRAINT FK_CATEGORIAS_CATEGORIAS FOREIGN KEY (codigo1) REFERENCES categorias(codigo);

ALTER TABLE articulos
ADD CONSTRAINT FK_ARTICULOS_CATEGORIAS FOREIGN KEY (categoria) REFERENCES categorias(codigo);

ALTER TABLE articulos
ADD CONSTRAINT FK_ARTICULOS_USUARIOS FOREIGN KEY (usuario) REFERENCES usuarios(codigo);

ALTER TABLE caracteristicas
ADD CONSTRAINT FK_CARACTERISTICAS_ARTICULOS FOREIGN KEY (articulo) REFERENCES articulos(id);

ALTER TABLE ropas
ADD CONSTRAINT FK_ROPAS_ARTICULOS FOREIGN KEY (articulo) REFERENCES articulos(id);

ALTER TABLE perecederos
ADD CONSTRAINT FK_PERECEDEROS_ARTICULOS FOREIGN KEY (articulo) REFERENCES articulos(id);

ALTER TABLE auditorias
ADD CONSTRAINT FK_AUDITORIAS_EVALUACIONES FOREIGN KEY (evaluacion) REFERENCES evaluaciones(a_omes);

ALTER TABLE auditorias
ADD CONSTRAINT FK_AUDITORIAS_CATEGORIAS FOREIGN KEY (categoria) REFERENCES categorias(codigo);

ALTER TABLE respuestas
ADD CONSTRAINT FK_RESPUESTAS_EVALUACIONES FOREIGN KEY (a_omes) REFERENCES evaluaciones(a_omes);



-- CICLO 1: Atributos

-- Tabla usuarios
ALTER TABLE usuarios
ADD CONSTRAINT CK_USUARIOS_TID CHECK (tid IN ('CC', 'TI'));
ALTER TABLE usuarios
ADD CONSTRAINT CK_USUARIOS_CORREO CHECK (correo LIKE '%@%.%');
ALTER TABLE usuarios
ADD CONSTRAINT CK_USUARIOS_PROGRAMA CHECK (programa IN ('Civil', 'Sistemas', 'Mecanica', 'Biomedica', 'Ingenieria', 'Derecho', 'Medicina','Por definir'));

-- Tabla calificaciones
ALTER TABLE calificaciones
ADD CONSTRAINT CK_CALIFICACIONES_ESTRELLA CHECK (estrella BETWEEN 1 AND 5);
ALTER TABLE calificaciones -- ### Pendiente a crear el TidArticulo
ADD CONSTRAINT CK_CALIFICACIONES_ARTICULO CHECK (articulo BETWEEN 1000000000000000 AND 9999999999999999);

-- Tabla categorias
ALTER TABLE categorias 
ADD CONSTRAINT CK_CATEGORIAS_TIPO CHECK (tipo IN ('A', 'R', 'L', 'T', 'O'));
ALTER TABLE categorias
ADD CONSTRAINT CK_CATEGORIAS_MINIMO CHECK (minimo IN (50, 100, 150, 200, 250));
ALTER TABLE categorias
ADD CONSTRAINT CK_CATEGORIAS_MAXIMO CHECK (maximo IN (50, 100, 150, 200, 250));

-- Tabla articulos
ALTER TABLE articulos -- ### Pendiente a crear el TidArticulo
ADD CONSTRAINT CK_ARTICULOS_ID CHECK (id BETWEEN 1000000000000000 AND 9999999999999999);
ALTER TABLE articulos
ADD CONSTRAINT CK_ARTICULOS_ESTADO CHECK (estado IN ('U', 'N'));
ALTER TABLE articulos
ADD CONSTRAINT CK_ARTICULOS_FOTO CHECK (foto LIKE 'https://%.%.pdf');
ALTER TABLE articulos
ADD CONSTRAINT CK_ARTICULOS_PRECIO CHECK (precio IN (50, 100, 150, 200, 250));
ALTER TABLE articulos
ADD CONSTRAINT CK_ARTICULOS_DISPONIBLE CHECK (disponible IN ('T', 'F'));

-- Tabla caracteristicas
ALTER TABLE caracteristicas -- ### Pendiente a crear el TidArticulo
ADD CONSTRAINT CK_CARACTERISTICAS_ARTICULO CHECK (articulo BETWEEN 1000000000000000 AND 9999999999999999);

-- Tabla ropas
ALTER TABLE ropas -- ### Pendiente a crear el TidArticulo
ADD CONSTRAINT CK_ROPAS_ARTICULO CHECK (articulo BETWEEN 1000000000000000 AND 9999999999999999);
ALTER TABLE ropas
ADD CONSTRAINT CK_ROPAS_TALLA CHECK (talla IN ('XS', 'S', 'M', 'L', 'XL'));

-- Tabla perecederos
ALTER TABLE perecederos -- ### Pendiente a crear el TidArticulo
ADD CONSTRAINT CK_PERECEDEROS_ARTICULO CHECK (articulo BETWEEN 1000000000000000 AND 9999999999999999);

-- Tabla auditorias
ALTER TABLE auditorias
ADD CONSTRAINT CK_AUDITORIAS_ID CHECK (id > 0);
ALTER TABLE auditorias
ADD CONSTRAINT CK_AUDITORIAS_ACCCION CHECK (accion IN ('I', 'D', 'U'));
ALTER TABLE auditorias
ADD CONSTRAINT CK_AUDITORIAS_EVALUACION CHECK (evaluacion LIKE '______' AND SUBSTR(evaluacion, 5, 2) BETWEEN '01' AND '12');

-- Tabla evaluaciones
ALTER TABLE evaluaciones
ADD CONSTRAINT CK_EVALUACIONES_A_OMES CHECK (a_omes LIKE '______' AND SUBSTR(a_omes, 5, 2) BETWEEN '01' AND '12');
ALTER TABLE evaluaciones
ADD CONSTRAINT CK_EVALUACIONES_TID CHECK (tid IN ('CC', 'TI'));
ALTER TABLE evaluaciones
ADD CONSTRAINT CK_EVALUACIONES_REPORTE CHECK (reporte LIKE 'https://%.%.pdf');
ALTER TABLE evaluaciones
ADD CONSTRAINT CK_EVALUACIONES_RESULTADO CHECK (resultado IN ('AP', 'PE'));

-- Tabla respuestas
ALTER TABLE respuestas
ADD CONSTRAINT CK_RESPUESTAS_A_OMES CHECK (LENGTH(a_omes) = 6 AND TO_NUMBER(SUBSTR(a_omes, 1, 4)) > 2000 AND TO_NUMBER(SUBSTR(a_omes, 5, 2)) BETWEEN 1 AND 12);

-- Nuevas definiciones de atributos
ALTER TABLE usuarios
ADD CONSTRAINT CK_USUARIOS_PROGRAMANA CHECK (programa IN ('Civil', 'Sistemas', 'Mecanica', 'Biomedica', 'Ingenieria', 'Derecho', 'Medicina','Por definir'));
ALTER TABLE respuestas
ADD CONSTRAINT CK_USUARIOS_RESPUESTA CHECK (respuesta IN ('Aprobada', 'Rechazada'));


/*
-- CICLO 1: Consultas

-- 1. Consultar las categorias con mas articulos

SELECT categoria, COUNT(*) AS cantidad_articulos
FROM articulos
GROUP BY categoria
ORDER BY COUNT(*) DESC;

-- 2. Consultar las calificaciones de los articulos del ultimo mes

SELECT estrella
FROM calificaciones JOIN articulos ON articulo=id
WHERE TO_CHAR(fecha, 'YYYY-MM') = TO_CHAR(ADD_MONTHS(SYSDATE, -1), 'YYYY-MM');

-- 3. Consultar la cantidad de estudiantes suspendidos por programa (Propuesta)

SELECT programa, COUNT(*) AS cantidad_suspendidos
FROM usuarios
WHERE suspencion IS NOT NULL
GROUP BY programa;
*/




-- CICLO 1: CRUD: Caso de Uso 1

-- CICLO 1: Atributos

-- CICLO 1: Los codigos deben iniciar con una letra mayuscula
ALTER TABLE categorias
ADD CONSTRAINT CK_CATEGORIAS_CODIGO CHECK (REGEXP_LIKE(codigo, '^[A-Z]'));


-- CICLO 1: Tuplas

-- El precio minimo debe ser menor que el maximo
ALTER TABLE categorias
ADD CONSTRAINT CK_CATEGORIAS_MINIMO_MAXIMO CHECK (minimo < maximo);


-- CICLO 1: Disparadores

-- Unicamente se pueden eliminar las categorías que no tienen articulos asociados. (Implementar mejor como Trigger)

CREATE OR REPLACE TRIGGER TG_CATEGORIAS_ELIMINAR_BD
BEFORE DELETE ON categorias
FOR EACH ROW
DECLARE
    num_articulos NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO num_articulos
    FROM articulos
    WHERE categoria = :OLD.codigo;

    IF num_articulos > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No se puede eliminar la categoría porque tiene artículos asociados');
    END IF;
END;
/
-- La fecha del registro corresponde a la fecha del momento en el cual se registra.
CREATE OR REPLACE TRIGGER TR_AUDITORIA_FECHAG_BI
BEFORE INSERT ON auditorias
FOR EACH ROW
BEGIN
    :new.fecha := SYSDATE;
END;
/

-- Si no se indica el nombre se le asigna. 'Nombre de <codigo>'
CREATE OR REPLACE TRIGGER TR_CATEGORIA_NOMBRE_BI
BEFORE INSERT ON categorias
FOR EACH ROW
BEGIN
    IF :NEW.nombre IS NULL THEN
        :NEW.nombre := "Nombre de "||:NEW.codigo;
    END IF;
END;
/

-- Si no se indica el precio maximo se supone que es el doble del minimo
CREATE OR REPLACE TRIGGER TR_CATEGORIA_MAXIMO
BEFORE INSERT ON categorias
FOR EACH ROW
BEGIN
    IF :NEW.maximo IS NULL THEN
        :NEW.maximo := :NEW.minimo * 2;
    END IF;
END;
/

-- Los unicos datos que se pueden modificar son el minimo y el maximo. Únicamente pueden aumentar.

CREATE OR REPLACE TRIGGER TR_CATEGORIA_MINMAX_BI
BEFORE UPDATE ON categorias
FOR EACH ROW
BEGIN
    IF :NEW.minimo < :OLD.minimo OR :NEW.maximo < :OLD.maximo THEN
        RAISE_APPLICATION_ERROR (-20001, 'Los valores solo pueden aumentar');
    ELSE
        RAISE_APPLICATION_ERROR (-20001, 'Solo se puede modificar el minimo y el maximo');
    END IF;
END;
/

-- Si se modifica el minimo, el maximo debe modificarse en el mismo valor.
CREATE OR REPLACE TRIGGER TR_CATEGORIA_NEWMAX_BU
BEFORE UPDATE ON categorias
FOR EACH ROW
BEGIN
    IF :NEW.minimo > :OLD.maximo THEN
        :NEW.maximo := :NEW.minimo;
    END IF;
END;
/

-- Los registros no se pueden modificar.
CREATE OR REPLACE TRIGGER TR_AUDITORIAS_BD
BEFORE DELETE OR UPDATE ON auditorias
FOR EACH ROW
BEGIN
    IF UPDATING OR DELETING THEN
        RAISE_APPLICATION_ERROR(-20002, 'No se puede modificar ni eliminar los registros de esta tabla.');
    END IF;
END;
/

-- Los registros no se pueden modificar.
CREATE OR REPLACE TRIGGER TG_AUDITORIAS_UP
BEFORE UPDATE OR DELETE ON auditorias
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20002, 'No se puede eliminar registros de esta tabla.');
END;
/



-- CICLO 1: CRUD: Caso de Uso 2

-- CICLO 1: Disparadores

-- La fecha de la evaluación se genera automáticamente y debe ser posterior al año-mes evaluado
CREATE OR REPLACE TRIGGER TG_EVALUACIONES_FECHA_BI
BEFORE INSERT ON evaluaciones
FOR EACH ROW
BEGIN
    :new.fecha := SYSDATE;
END;
/

-- El tipo de documento por defecto de los auditores de no informarse es: CC
CREATE OR REPLACE TRIGGER TG_EVALUACIONES_BI
BEFORE INSERT ON evaluaciones
FOR EACH ROW
BEGIN
    IF :new.tid IS NULL
    THEN :new.tid := 'CC';
    END IF;
END;
/

-- Solo se puede modificar el resultado de las auditorías
CREATE OR REPLACE TRIGGER TG_EVALUACIONES_BU
BEFORE UPDATE OF resultado ON evaluaciones
FOR EACH ROW
BEGIN
    IF :old.resultado <> :new.resultado
        THEN NULL;
    ElSE
        RAISE_APPLICATION_ERROR(-20010, 'No se puede modificar el resultado de la evaluación.');
    END IF;
END;
/

-- Solo es posible adicionar respuestas de las anomalías si el estado de la auditoría es pendiente.
CREATE OR REPLACE TRIGGER TG_RESPUESTAS_BI
BEFORE INSERT ON respuestas
FOR EACH ROW
DECLARE
    resultado VARCHAR2(2);
BEGIN
    SELECT resultado INTO resultado
    FROM evaluaciones
    WHERE evaluaciones.a_omes = :new.a_omes;

    IF resultado = 'PE' THEN
        RAISE_APPLICATION_ERROR(-20011, 'No se pueden adicionar respuestas si la evaluación ya fue aprobada.');
    END IF;
END;
/

-- Las evaluaciones se pueden eliminar si no tienen anomalías.
CREATE OR REPLACE TRIGGER TG_EVALUACIONES_BD
BEFORE DELETE ON evaluaciones
FOR EACH ROW
DECLARE
    respuesta VARCHAR2(50);
BEGIN
    SELECT respuesta INTO respuesta
    FROM respuestas
    WHERE respuestas.a_omes = :old.a_omes;

    IF respuesta IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20012, 'No se pueden eliminar evaluaciones con respuestas.');
    END IF;
END;
/



-- CICLO 1: Índices

-- Índices para la tabla usuarios

CREATE INDEX IUSUARIOS1 ON usuarios(codigo);
CREATE INDEX IUSUARIOS2 ON usuarios(nid);

-- Índice para la tabla categorías

CREATE INDEX ICATEGORIAS ON categorias(codigo);

-- Índice para la tabla artículos

CREATE INDEX IARTICULOS ON articulos(id);

-- Índice para la tabla evaluaciones

CREATE INDEX IEVALUACIONES ON evaluaciones(a_omes);



-- CICLO 1: Vistas

-- Vista de Trueques Exitosos (Gerente)

CREATE VIEW VTRUEQUES_EXITOSOS AS
SELECT a.id AS id,
       c.codigo AS codigo,
       car.caracteristica AS caracteristica,
       a.disponible AS disponible,
       a.precio AS precio,
       ca.estrella AS estrella
FROM articulos a
JOIN categorias c ON a.categoria = c.codigo
JOIN caracteristicas car ON a.id = car.articulo
JOIN calificaciones ca ON a.id = ca.articulo;

-- Vista de la tabla categorías

CREATE VIEW VCATEGORIAS AS
SELECT c.tipo AS tipo,
       a.id AS id,
       c.nombre AS nombre
FROM categorias c
JOIN articulos a ON c.codigo = a.categoria;

-- Vista de la tabla calificaiones

CREATE VIEW VCALIFICACIONES AS
SELECT ca.articulo AS articulo,
       ca.estrella AS estrella,
       a.disponible AS disponibilidad
FROM calificaciones ca
JOIN articulos a ON ca.articulo = a.id;



-- CICLO 1: XÍndicesVistas
/*
DROP INDEX IUSUARIOS1;
DROP INDEX IUSUARIOS2;
DROP INDEX ICATEGORIAS;
DROP INDEX IARTICULOS;
DROP INDEX IEVALUACIONES;
DROP VIEW VTRUEQUES_EXITOSOS;
DROP VIEW VCATEGORIAS;
DROP VIEW VCALIFICACIONES;
*/


-- CICLO 1: CRUDE EVALUACIONES

CREATE OR REPLACE PACKAGE PK_EVALUACIONES AS
    -- Procedimiento para agregar una nueva evaluación
    PROCEDURE agregar_evaluacion(
        p_a_omes IN VARCHAR2,
        p_tid IN VARCHAR2,
        p_nid IN VARCHAR2,
        p_descripcion IN VARCHAR2,
        p_reporte IN VARCHAR2,
        p_resultado IN VARCHAR2
    );

    -- Función para obtener cosultas de una evaluación por ID
    FUNCTION obtener_evaluacion_por_id(
        p_a_omes IN VARCHAR2,
        p_tid IN VARCHAR2,
        p_nid IN VARCHAR2)
    RETURN evaluaciones%ROWTYPE;

    -- Procedimiento para actualizar una evaluación existente
    PROCEDURE actualizar_evaluacion(
        p_resultado IN VARCHAR2,
        p_a_omes IN VARCHAR2
    );

    -- Procedimiento para eliminar una evaluación
    PROCEDURE eliminar_evaluacion(
        p_a_omes IN VARCHAR2
    ); 
END;
/

CREATE OR REPLACE PACKAGE PK_RESPUESTAS AS
    PROCEDURE adicionar(respuesta IN VARCHAR2);
    PROCEDURE consultar(a_omes IN VARCHAR2, respuesta IN VARCHAR2);
    PROCEDURE modificar;
    PROCEDURE eliminar(a_omes IN VARCHAR2);
END PK_RESPUESTAS;
/

CREATE OR REPLACE PACKAGE PK_AUDITORIAS AS
    PROCEDURE adicionar(accion IN VARCHAR2, nombre IN VARCHAR2);
    PROCEDURE consultar(id OUT NUMBER, fecha OUT DATE, accion OUT VARCHAR2, nombre OUT VARCHAR2, evaluacion OUT VARCHAR2, categoria OUT VARCHAR2);
    PROCEDURE modificar(resultado IN VARCHAR2);
    PROCEDURE eliminar(id IN NUMBER);
END PK_AUDITORIAS;
/



-- CICLO 1: CRUDI EVALUACIONES

CREATE OR REPLACE PACKAGE BODY PK_EVALUACIONES AS
    -- Procedimiento para agregar una nueva evaluación
    PROCEDURE agregar_evaluacion(
        p_a_omes IN VARCHAR2,
        p_tid IN VARCHAR2,
        p_nid IN VARCHAR2,
        p_descripcion IN VARCHAR2,
        p_reporte IN VARCHAR2,
        p_resultado IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO evaluaciones(a_omes, tid, nid, descripcion, reporte, resultado)
        VALUES (p_a_omes, p_tid, p_nid, p_descripcion, p_reporte, p_resultado);
    END agregar_evaluacion;

    -- Función para obtener información de una evaluación por ID
    FUNCTION obtener_evaluacion_por_id(
        p_a_omes VARCHAR2
    ) RETURN evaluaciones%ROWTYPE IS
        evaluacion_row evaluaciones%ROWTYPE;
    BEGIN
        SELECT * INTO evaluacion_row
        FROM evaluaciones
        WHERE a_omes = p_a_omes;
        
        RETURN;
    END obtener_evaluacion_por_id;

    -- Procedimiento para actualizar una evaluación existente
    PROCEDURE actualizar_evaluacion(
        p_a_omes VARCHAR2,
        p_resultado VARCHAR2
    ) IS
    BEGIN
        UPDATE evaluaciones
        SET resultado = p_resultado
        WHERE a_omes = p_a_omes;
    END actualizar_evaluacion;

    -- Procedimiento para eliminar una evaluación
    PROCEDURE eliminar_evaluacion(
        p_a_omes VARCHAR2
    ) IS
    BEGIN
        DELETE FROM evaluaciones
        WHERE a_omes = p_a_omes;
    END eliminar_evaluacion;
END PC_EVALUACIONES;
/

CREATE OR REPLACE PACKAGE BODY PK_RESPUESTAS AS
    PROCEDURE adicionar(respuesta IN VARCHAR2) AS
    BEGIN
        -- Procedimiento para añadir una nueva respuesta
        INSERT INTO respuestas (respuesta, fecha)
        VALUES (respuesta, SYSDATE);
    END adicionar;

    PROCEDURE consultar(a_omes IN VARCHAR2, respuesta IN VARCHAR2) AS
    BEGIN
        -- Procedimiento para consultar una respuesta
        SELECT respuesta
        FROM respuestas r
        WHERE a_omes = r.a_omes AND respuesta = respuesta;
    END consultar;

    PROCEDURE modificar AS
    BEGIN
        -- Procedimiento para modificar una respuesta
        NULL;
    END modificar;

    PROCEDURE eliminar(a_omes IN VARCHAR2) IS
    BEGIN
        -- Procedimiento para eliminar una respuesta
        DELETE FROM respuestas r
        WHERE a_omes = r.a_omes;
    END eliminar;
END PK_RESPUESTAS;
/

CREATE OR REPLACE PACKAGE BODY PK_AUDITORIAS AS
    PROCEDURE adicionar(accion IN VARCHAR2, nombre IN VARCHAR2) AS
    BEGIN
        -- Procedimiento para añadir una nueva auditoría
        INSERT INTO auditorias (accion, nombre, fecha)
        VALUES (accion, nombre, SYSDATE);
    END adicionar;

    PROCEDURE consultar(id OUT NUMBER, fecha OUT DATE, accion OUT VARCHAR2, nombre OUT VARCHAR2, evaluacion OUT VARCHAR2, categoria OUT VARCHAR2) AS
    BEGIN
        -- Procedimiento para consultar una auditoría
        SELECT id, fecha, accion, nombre, evaluacion, categoria
        INTO id, fecha, accion, nombre, evaluacion, categoria
        FROM auditorias;
    END consultar;

    PROCEDURE modificar(resultado IN VARCHAR2) AS
    BEGIN
        -- Procedimiento para modificar una auditoría
        UPDATE auditorias a
        SET resultado = a.resultado;
    END modificar;

    PROCEDURE eliminar(id IN NUMBER) IS
    BEGIN
        -- Procedimiento para eliminar una auditoría
        DELETE FROM auditorias a
        WHERE id = a.id;
    END eliminar;
END PK_AUDITORIAS;
/


-- CICLO 1: XCRUD
/*
DROP PACKAGE PK_EVALUACIONES;
DROP PACKAGE PK_AUDITORIAS;
DROP PACKAGE PK_RESPUESTAS;
*/


-- CICLO 1: ActoresE

CREATE PACKAGE PK_ADMINISTRADOR AS
    PROCEDURE adicionarAuditoria(accion IN VARCHAR2, nombre IN VARCHAR2);
    PROCEDURE consultarAuditoria(id OUT NUMBER, fecha OUT DATE, accion OUT VARCHAR2, nombre OUT VARCHAR2, evaluacion OUT VARCHAR2, categoria OUT VARCHAR2);
    PROCEDURE modificarAuditoria(resultado IN VARCHAR2);
END PK_ADMINISTRADOR;
/

CREATE PACKAGE PK_AUDITOR AS
    PROCEDURE adicionarEvaluacion(p_a_omes IN VARCHAR2, p_tid IN VARCHAR2, p_nid IN VARCHAR2, p_descripcio IN VARCHAR2, p_reporte IN ARCHAR2, p_resultado IN VARCHAR2);
    PROCEDURE consultarEvaluacion(p_a_omes IN VARCHAR2, p_tid IN  VARCHAR2, p_nid IN VARCHAR2);
    PROCEDURE modificarEvaluacion(p_resultado IN VARCHAR2, p_a_omes IN VARCHAR2);
    PROCEDURE eliminarEvaluacion(p_a_omes IN VARCHAR2); 
    PROCEDURE adicionarRespuesta(respuesta IN VARCHAR2);
    PROCEDURE consultarRespuesta(a_omes IN VARCHAR2, respuesta IN VARCHAR2);
END PK_AUDITOR;
/



-- CICLO 1: ActoresI

CREATE PACKAGE BODY PK_ADMINISTRADOR AS
    PROCEDURE adicionarAuditoria(accion IN VARCHAR2, nombre IN VARCHAR2) IS
    BEGIN
        PK_AUDITOR.adicionarEvaluacion(accion, nombre);
    END adicionarAuditoria;

    PROCEDURE consultarAuditoria(id OUT NUMBER, fecha OUT DATE, accion OUT VARCHAR2, nombre OUT VARCHAR2, evaluacion OUT VARCHAR2, categoria OUT VARCHAR2) IS
    BEGIN
        PK_AUDITOR.consultarEvaluacion('A01', accion, nombre);
    END consultarAuditoria;

    PROCEDURE modificarAuditoria(resultado IN VARCHAR2) IS
    BEGIN
        PK_AUDITOR.modificarEvaluacion(resultado, 'A01');
    END modificarAuditoria;
END PK_ADMINISTRADOR;
/


CREATE PACKAGE BODY PK_AUDITOR AS
    PROCEDURE adicionarEvaluacion(p_a_omes IN VARCHAR2, p_tid IN VARCHAR2, p_nid IN VARCHAR2, p_descripcio IN VARCHAR2, p_reporte IN VARCHAR2, p_resultado IN VARCHAR2) IS
    BEGIN
        PK_EVALUACIONES.adicionar(p_tid, p_nid, p_descripcio, p_reporte, p_resultado);
    END adicionarEvaluacion;

    PROCEDURE consultarEvaluacion(p_a_omes IN VARCHAR2, p_tid IN  VARCHAR2, p_nid IN VARCHAR2) IS
    BEGIN
        PK_EVALUACIONES.consultar(p_a_omes, SYSDATE, p_descripcion, p_reporte, p_resultado);
    END consultarEvaluacion;

    PROCEDURE modificarEvaluacion(p_resultado IN VARCHAR2, p_a_omes IN VARCHAR2) IS
    BEGIN
        PK_EVALUACIONES.modificar(p_descripcion);
    END modificarEvaluacion;

    PROCEDURE eliminarEvaluacion(p_a_omes IN VARCHAR2) IS
    BEGIN
        PK_EVALUACIONES.eliminar(p_a_omes);
    END eliminarEvaluacion;

    PROCEDURE adicionarRespuesta(respuesta IN VARCHAR2) IS
    BEGIN
        PK_RESPUESTAS.adicionar(respuesta);
    END adicionarRespuesta;

    PROCEDURE consultarRespuesta(a_omes IN VARCHAR2, respuesta IN VARCHAR2) IS
    BEGIN
        PK_RESPUESTAS.consultar(a_omes, respuesta);
    END consultarRespuesta;
END PK_AUDITOR;
/

-- CICLO 1: Seguridad

-- 1. Creación de roles

CREATE ROLE Administrador;
CREATE ROLE Auditor;

-- 2. Creación de usuarios

CREATE USER Daniel_Rodriguez
IDENTIFIED BY 1000076386;
CREATE USER Jesus_Pinzon
IDENTIFIED BY 1000095859;


-- 2. Otoragción de permisos

-- 2.1. Administrador

GRANT INSERT(accion, nombre), SELECT, UPDATE(resultado), DELETE
ON auditorias
TO Administrador, Daniel_Rodriguez;

-- 2.2. Auditor

GRANT INSERT(tid, nid, descripcion, reporte, resultado), SELECT, UPDATE(descripcion), DELETE
ON evaluaciones
TO Auditor, Jesus_Pinzon;

GRANT INSERT(respuesta), SELECT
ON repuestas
TO Auditor, Jesus_Pinzon;



-- CICLO 1: XSeguridad
/*
DROP PACKAGE PK_ADMINISTRADOR;
DROP PACKAGE PK_AUDITOR;

-- Eliminar permisos del Administrador
REVOKE INSERT(accion, nombre), SELECT, UPDATE(resultado), DELETE
ON auditorias
FROM Administrador;

-- Eliminar permisos del Auditor
REVOKE INSERT(tid, nid, descripcion, reporte, resultado), SELECT, UPDATE(descripcion), DELETE
ON evaluaciones
FROM Auditor;

REVOKE INSERT(respuesta), SELECT
ON repuestas
FROM Auditor;

-- Eliminar roles y usuarios
DROP ROLE Administrador;
DROP ROLE Auditor;
DROP USER Daniel_Rodriguez;
DROP USER Jesus_Pinzon;
*/


-- CICLO 1: Pruebas

-- Prueba de aceptación para el Administrador
/*
YO Jesus Pinzon,
COMO auditor,
QUIERO realizar una evaluación de los artículos y categorías de la plataforma Trueques,
PARA PODER validar su funcionamiento bajo los más altos estándares de calidad.
*/

-- 1. El auditor puede acceder a la BD por su rol o usuario:

CONNECT / AS (Auditor);
CONNECT Jesus_Pinzon/1000095859;

-- 2. Ya que el auditor no tiene acceso completo a la BD de Trueques,
--    le pide al administrador que le conceda los permisos neccesarios para su evaluación:

-- 2.1.  El administrador ingresa a la BD:

CONNECT / AS (Administrador);
CONNECT Daniel_Rodriguez/1000076386;

-- 2.2. El administrador le da acceso restringido al auditor a las tablas de Artículos, Categorías y Calificaciones:

GRANT SELECT(id, descripcion, estado, foto, precio, disponible, categoria)
ON articulos
TO Jesus_Pinzon;

GRANT SELECT
ON categorias
TO Jesus_Pinzon;

GRANT SELECT(articulo, estrella)
ON calificaciones
TO Jesus_Pinzon;

-- 3. El auditor consulta las tablas Artículos, Categorías y Calificaciones a través de sus vistas:

SELECT *
FROM VTRUEQUES_EXITOSOS;

SELECT *
FROM VCATEGORIAS;

SELECT *
FROM VCALIFICACIONES;

-- 4. El auditor trata de modificar datos en la tabla de Árticulos y eliminar datos de la tabla Categorías,
--    pero la BD le indica que no tiene los permisos suficientes:

INSERT INTO articulos (id, descripcion, estado, foto, precio, disponible, categoria, usuario)
VALUES (1234567890123456, 'Laptop', 'U', 'https://example.com/laptop.jpg', 200, 'TRUE', 'C01', 'USR001');

DELETE FROM categorias WHERE codigo = 'C03';

-- NOTA: El administrador es notificado del intento de la alteración de la BD y envía 
--       una orden de arresto para el auditor (Ficción)  

-- 5. El auditor registra sus resultados en la tabla Evaluaciones y Respuestas.

CALL PK_AUDITOR.adicionarEvaluacion('202204', 'TID01', 'NID1234567890', 'Descripción de la evaluación', 'Reporte de la evaluación', 'OK');
CALL PK_AUDITOR.consultarEvaluacion('202204', 'TID01', 'NID1234567890');
CALL PK_AUDITOR.modificarEvaluacion('Resultado modificado', '202204');
CALL PK_AUDITOR.adicionarRespuesta('Respuesta de ejemplo');
CALL PK_AUDITOR.consultarRespuesta('202204');

-- 6. El auditor termina su trabajo y el administrador le retira sus privilegios sobre la BD:

-- 7. El auditor y administrador cierran sus sesiones:

SELECT sid, serial#
FROM v$session
WHERE username IN ('Daniel_Rodriguez', 'Jesus_Pinzon');

ALTER SYSTEM KILL SESSION '123,456' IMMEDIATE;
ALTER SYSTEM KILL SESSION '789,012' IMMEDIATE;

---------- CODE END ----------