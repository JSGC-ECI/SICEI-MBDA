ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TCorreo
    CHECK (correo LIKE '%@escuelaing.edu.co' OR correo LIKE '%@mail.escuelaing.edu.co');

ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TDireccion
    CHECK (direccion LIKE 'Calle%' OR direccion LIKE 'Carrera%' OR direccion LIKE 'Avenida%'
        OR direccion LIKE 'Transversal%' OR direccion LIKE 'Diagonal%' OR direccion LIKE 'Circular%');

ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TMoneda
    CHECK (presupuestoAsignados BETWEEN 1 AND 99999999);

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TCorreo
    CHECK (correo LIKE '%@escuelaing.edu.co' OR correo LIKE '%@mail.escuelaing.edu.co');

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TDireccion
    CHECK (direccion LIKE 'Calle%' OR direccion LIKE 'Carrera%' OR direccion LIKE 'Avenida%'
        OR direccion LIKE 'Transversal%' OR direccion LIKE 'Diagonal%' OR direccion LIKE 'Circular%');

ALTER TABLE Estudiantes ADD CONSTRAINT chk_estado_academico
        CHECK (REGEXP_LIKE(EstadoAcademico, '^[AF]-[1-9]$'));

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TCorreo
    CHECK (correo LIKE '%@escuelaing.edu.co' OR correo LIKE '%@mail.escuelaing.edu.co');

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TDireccion
    CHECK (direccion LIKE 'Calle%' OR direccion LIKE 'Carrera%' OR direccion LIKE 'Avenida%'
        OR direccion LIKE 'Transversal%' OR direccion LIKE 'Diagonal%' OR direccion LIKE 'Circular%');

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TContrato
    CHECK (tipoContrato IN ('Planta', 'Catedra'));

ALTER TABLE DEPARTAMENTOS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idDepartamento, '^[A-Z]{4}[0-9]*$'))

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idGrupo, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_THora
    CHECK (horario IN (
                       '07:00 - 08:30', '08:30 - 10:00', '10:00 - 11:30', '11:30 - 13:00',
                       '13:00 - 14:30', '14:30 - 16:00', '16:00 - 17:30', '17:30 - 19:00',
                       '07:00 - 10:00', '08:30 - 11:30', '10:00 - 13:00', '11:30 - 14:30',
                       '13:00 - 16:00', '14:30 - 17:30', '16:00 - 19:00'
        ));


ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idPreinscripcion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TEstado
    CHECK (estado IN ('Enviado', 'No enviado'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idCancelacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TEstadoA
    CHECK (estado IN ('En proceso', 'Rechazada', 'Aprobada'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TAsesoria
    CHECK (asesoria IN ('S', 'N'));

ALTER TABLE AREAS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idArea, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TNivel
    CHECK (nivel BETWEEN 1 AND 3);

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TModalidad
    CHECK (modalidad IN ('Presencial', 'Virtual', 'Hibrida'));

ALTER TABLE NOTIFICACIONES ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idNotificacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTIFICACIONES ADD CONSTRAINT chk_TEstado
    CHECK (estado IN ('Enviado', 'No enviado'));

ALTER TABLE CENTROSDEESTUDIOS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idCentroEstudios, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NUCLEOSDEFORMACION ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idNucleoFormacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTAS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idNota, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTAS ADD CONSTRAINT chk_TEval
    CHECK (tipoDeEvaluacion IN ('Parcial', 'Quiz', 'Actividad', 'Trabajo', 'Examen Final', 'Exposición'));

ALTER TABLE PROGRAMASACADEMICOS ADD CONSTRAINT chk_TId
    CHECK (REGEXP_LIKE(idPrograma, '^[A-Z]{4}[0-9]*$'));