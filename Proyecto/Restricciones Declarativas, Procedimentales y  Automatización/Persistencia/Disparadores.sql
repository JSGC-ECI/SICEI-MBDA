-- CICLO 1

-- Trigger para establecer la fecha de registro al insertar un nuevo estudiante
CREATE TRIGGER trg_fecha_registro_estudiante
    BEFORE INSERT ON Estudiantes
    FOR EACH ROW
BEGIN
    :NEW.fechaRegistro := SYSDATE;
END;
/

-- NOTA: La validación de que las notas no sean mayores a 5.0 se realiza mediante una restricción CHECK en Atributos.sql

-- Trigger para establecer el presupuesto asignado al insertar un nuevo director
CREATE TRIGGER trg_presupuesto_director
    BEFORE INSERT ON Directores
    FOR EACH ROW
BEGIN
    :NEW.presupuestoAsignados := 1000000.00;
END;
/

-- NOTA: La validación del formato del teléfono para profesores se realiza mediante una restricción CHECK en Atributos.sql

-- NOTA: La validación del formato del teléfono para directores se realiza mediante una restricción CHECK en Atributos.sql

-- NOTA: La validación del formato del teléfono para estudiantes se realiza mediante una restricción CHECK en Atributos.sql

-- Trigger para verificar que la fecha de ingreso sea mayor o igual a la fecha de registro en Estudiantes
CREATE OR REPLACE TRIGGER trg_validar_fecha_ingreso
    BEFORE INSERT OR UPDATE ON ESTUDIANTES
    FOR EACH ROW
BEGIN
    IF :NEW.fechaIngreso < :NEW.fechaRegistro THEN
        RAISE_APPLICATION_ERROR(-20002, 'La fecha de ingreso no puede ser anterior a la fecha de registro');
    END IF;
END;
/

-- NOTA: La validación de que las notas no sean menores a 0 se realiza mediante una restricción CHECK en Atributos.sql

-- Trigger para verificar que el cupo máximo en grupos sea un número positivo
CREATE OR REPLACE TRIGGER trg_verificar_cupo_grupo
    BEFORE INSERT OR UPDATE ON GRUPOS
    FOR EACH ROW
BEGIN
    IF :NEW.cupoMaximo <= 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'El cupo máximo del grupo debe ser un número positivo');
    END IF;
END;
/

-- Trigger para verificar que los créditos, horas teóricas y horas prácticas sean valores positivos
CREATE OR REPLACE TRIGGER trg_verificar_creditos_horas
    BEFORE INSERT OR UPDATE ON MATERIAS
    FOR EACH ROW
BEGIN
    IF :NEW.creditos <= 0 THEN
        RAISE_APPLICATION_ERROR(-20005, 'Los créditos de la materia deben ser un número positivo');
    END IF;

    IF :NEW.horasTeoricas < 0 THEN
        RAISE_APPLICATION_ERROR(-20006, 'Las horas teóricas no pueden ser negativas');
    END IF;

    IF :NEW.horasPracticas < 0 THEN
        RAISE_APPLICATION_ERROR(-20007, 'Las horas prácticas no pueden ser negativas');
    END IF;
END;
/


-- Trigger para validar que los prerequerimientos de una materia no sean la misma materia
CREATE OR REPLACE TRIGGER trg_validar_prerequisitos
    BEFORE INSERT OR UPDATE ON PREREQUISITOSMATERIAS
    FOR EACH ROW
BEGIN
    IF :NEW.idMateria = :NEW.idMateriaRequisito THEN
        RAISE_APPLICATION_ERROR(-20008, 'Una materia no puede ser prerequisito de sí misma');
    END IF;
END;
/

-- CICLO 2

-- Trigger para actualizar el estado de la notificación al insertar una cancelación
CREATE OR REPLACE TRIGGER trg_actualizar_notificacion
    AFTER INSERT ON CANCELACIONES
    FOR EACH ROW
BEGIN
    UPDATE NOTIFICACIONES
    SET estado = 'enviado'
    WHERE idNotificacion = :NEW.idNotificacion;
END;

-- Trigger para establecer la fecha en notificaciones al momento de la inserción
CREATE OR REPLACE TRIGGER trg_fecha_notificacion
    BEFORE INSERT ON NOTIFICACIONES
    FOR EACH ROW
BEGIN
    :NEW.fecha := SYSDATE;
END;
/