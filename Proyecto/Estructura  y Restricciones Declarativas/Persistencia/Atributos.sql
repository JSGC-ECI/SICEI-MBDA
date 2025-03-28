ALTER TABLE PROFESORES ADD CONSTRAINT chk_TContrato
    CHECK (tipoContrato IN ('Planta', 'Catedra'));

ALTER TABLE USUARIOS ADD CONSTRAINT chk_TCorreo
    CHECK (correo LIKE '%@escuelaing.edu.co' OR correo LIKE '%@mail.escuelaing.edu.co');

ALTER TABLE USUARIOS ADD CONSTRAINT chk_TDireccion
    CHECK (direccion LIKE 'Calle%' OR direccion LIKE 'Carrera%' OR direccion LIKE 'Avenida%'
        OR direccion LIKE 'Transversal%' OR direccion LIKE 'Diagonal%' OR direccion LIKE 'Circular%');

ALTER TABLE USUARIOS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTIFICACIONES ADD CONSTRAINT chk_TEstado
    CHECK (estado IN ('Enviado', 'No enviado'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TEstadoA
    CHECK (estado IN ('En proceso', 'Rechazada', 'Aprobada'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TAsesoria
    CHECK (asesoria IN ('S', 'N'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TIdCancelacion
    CHECK (REGEXP_LIKE(idCancelacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TIdMateria
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TIdNotificacion
    CHECK (REGEXP_LIKE(idNotificacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTAS ADD CONSTRAINT chk_TEval
    CHECK (tipoDeEvaluacion IN ('Parcial', 'Quiz', 'Actividad', 'Trabajo', 'Examen Final', 'Exposición'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_THora
    CHECK (horario IN (
                       '07:00 - 08:30', '08:30 - 10:00', '10:00 - 11:30', '11:30 - 13:00',
                       '13:00 - 14:30', '14:30 - 16:00', '16:00 - 17:30', '17:30 - 19:00',
                       '07:00 - 10:00', '08:30 - 11:30', '10:00 - 13:00', '11:30 - 14:30',
                       '13:00 - 16:00', '14:30 - 17:30', '16:00 - 19:00'
        ));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TIdGrupo
    CHECK (REGEXP_LIKE(idGrupo, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TIdMateriaa
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TIdProfesor
    CHECK (REGEXP_LIKE(idProfesor, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TNumero
    CHECK (numero > 0);

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TCupoMaximo
    CHECK (cupoMaximo > 0);

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TModalidad
    CHECK (modalidad IN ('Presencial', 'Virtual', 'Hibrida'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TNivel
    CHECK (nivel BETWEEN 1 AND 3);

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TIdMateria
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TNombre
    CHECK (REGEXP_LIKE(nombre, '^[A-Za-z ]+$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TIdArea
    CHECK (REGEXP_LIKE(idArea, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE DEPARTAMENTOS ADD CONSTRAINT chk_TIdDirector
    CHECK (REGEXP_LIKE(idDirector, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE DEPARTAMENTOS ADD CONSTRAINT chk_TIdDepartamento
    CHECK (REGEXP_LIKE(idDepartamento, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TDoc
    CHECK (REGEXP_LIKE(documentoIdentidad, '^[0-9]{10}$'));

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TFecha
    CHECK (fechaIngreso <= CURRENT_DATE);

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TIdCancelacion
    CHECK (REGEXP_LIKE(idCancelacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIASPORESTUDIANTE ADD CONSTRAINT chk_TIdEstudiante
    CHECK (REGEXP_LIKE(idEstudiante, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIASPORESTUDIANTE ADD CONSTRAINT chk_TIdMateria
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIASPORESTUDIANTE ADD CONSTRAINT chk_TMateria
    CHECK (REGEXP_LIKE(materia, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TIdPreinscripcion
    CHECK (REGEXP_LIKE(idPreinscripcion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TEstado
    CHECK (estado IN ('Aceptada', 'Rechazada', 'Pendiente'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TIdEstudiante
    CHECK (REGEXP_LIKE(idEstudiante, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TIdMateria
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE AREAS ADD CONSTRAINT chk_TIdArea
    CHECK (REGEXP_LIKE(idArea, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE AREAS ADD CONSTRAINT chk_TIdDepartamento
    CHECK (REGEXP_LIKE(idDepartamento, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE AREAS ADD CONSTRAINT chk_TIdCoordinador
    CHECK (REGEXP_LIKE(idCoordinador, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TMoneda
    CHECK (presupuestoAsignados BETWEEN 1 AND 99999999);

ALTER TABLE COORDINADORES ADD CONSTRAINT chk_TMoneda
    CHECK (recursosAsignados BETWEEN 1 AND 99999999);
