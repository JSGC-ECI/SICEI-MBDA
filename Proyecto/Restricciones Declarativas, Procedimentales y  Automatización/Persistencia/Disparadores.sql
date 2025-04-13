-- Trigger para establecer la fecha de registro al insertar un nuevo estudiante
CREATE TRIGGER trg_fecha_registro_estudiante
BEFORE INSERT ON Estudiantes
FOR EACH ROW
BEGIN
    :NEW.fechaRegistro := SYSDATE;
END;
/

-- Trigger para evitar notas mayores a 5.0
CREATE TRIGGER trg_validar_nota
BEFORE INSERT OR UPDATE ON Notas
FOR EACH ROW
BEGIN
    IF :NEW.valor > 5.0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'La nota no puede ser mayor a 5.0');
    END IF;
END;
/

-- Trigger para establecer el estado académico del estudiante a 'I' al insertar una cancelación
CREATE TRIGGER trg_cancelacion_estudiante
AFTER INSERT ON Cancelaciones
FOR EACH ROW
BEGIN
    UPDATE Estudiantes
    SET estadoAcademico = 'I'
    WHERE idCancelacion = :NEW.idCancelacion;
END;
/

-- Trigger para establecer el presupuesto asignado al insertar un nuevo director
CREATE TRIGGER trg_presupuesto_director
BEFORE INSERT ON Directores
FOR EACH ROW
BEGIN
    :NEW.presupuestoAsignados := 1000000.00;
END;
/

-- Trigger para validar el formato del teléfono al insertar o actualizar un profesor
CREATE TRIGGER trg_validar_telefono_profesor
BEFORE INSERT OR UPDATE ON PROFESORES
FOR EACH ROW
BEGIN
    IF LENGTH(:NEW.telefono) != 10 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El teléfono debe tener 10 dígitos');
    END IF;
END;

-- Trigger para validar el formato del teléfono al insertar o actualizar un director
CREATE OR REPLACE TRIGGER trg_validar_telefono_director
BEFORE INSERT OR UPDATE ON DIRECTORES
FOR EACH ROW
BEGIN
    IF LENGTH(:NEW.telefono) != 10 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El teléfono debe tener 10 dígitos');
    END IF;
END;

-- Trigger para validar el formato del teléfono al insertar o actualizar un estudiante
CREATE OR REPLACE TRIGGER trg_validar_telefono_estudiante
BEFORE INSERT OR UPDATE ON ESTUDIANTES
FOR EACH ROW
BEGIN
    IF LENGTH(:NEW.telefono) != 10 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El teléfono debe tener 10 dígitos');
    END IF;
END;

-- Trigger para actualizar el estado de la notificación al insertar una cancelación
CREATE OR REPLACE TRIGGER trg_actualizar_notificacion
AFTER INSERT ON CANCELACIONES
FOR EACH ROW
BEGIN
    UPDATE NOTIFICACIONES
    SET estado = 'enviado'
    WHERE idNotificacion = :NEW.idNotificacion;
END;

-- Trigger para validar los prerequisitos de una materia al insertar una preinscripción
CREATE OR REPLACE TRIGGER trg_validar_prerequisitos
BEFORE INSERT ON PREINSCRIPCIONES
FOR EACH ROW
DECLARE
    v_faltan INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO v_faltan
    FROM PREREQUISITOSMATERIAS prereq
    WHERE prereq.idMateria = :NEW.idMateria
    AND prereq.idMateriaRequisito NOT IN (
        SELECT idMateria
        FROM MATERIASPORESTUDIANTE
        WHERE idEstudiante = :NEW.idEstudiante
    );

    IF v_faltan > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'El estudiante no ha cumplido con los prerequisitos de esta materia');
    END IF;
END;
