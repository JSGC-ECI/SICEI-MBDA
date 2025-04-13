ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TIdA
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TCorreoA
    CHECK (correo LIKE '%@escuelaing.edu.co' OR correo LIKE '%@mail.escuelaing.edu.co');

ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TDireccionA
    CHECK (direccion LIKE 'Calle%' OR direccion LIKE 'Carrera%' OR direccion LIKE 'Avenida%'
        OR direccion LIKE 'Transversal%' OR direccion LIKE 'Diagonal%' OR direccion LIKE 'Circular%');

ALTER TABLE DIRECTORES ADD CONSTRAINT chk_TMoneda
    CHECK (presupuestoAsignados BETWEEN 1 AND 99999999);

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TIdB
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TCorreoB
    CHECK (correo LIKE '%@escuelaing.edu.co' OR correo LIKE '%@mail.escuelaing.edu.co');

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TDireccionB
    CHECK (direccion LIKE 'Calle%' OR direccion LIKE 'Carrera%' OR direccion LIKE 'Avenida%'
        OR direccion LIKE 'Transversal%' OR direccion LIKE 'Diagonal%' OR direccion LIKE 'Circular%');

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_estado_academico
        CHECK (REGEXP_LIKE(EstadoAcademico, '^[AF]-[1-9]$'));

ALTER TABLE ESTUDIANTES ADD CONSTRAINT chk_TIdC
    CHECK (REGEXP_LIKE(idCancelacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TIdD
    CHECK (REGEXP_LIKE(idUsuario, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TCorreoC
    CHECK (correo LIKE '%@escuelaing.edu.co' OR correo LIKE '%@mail.escuelaing.edu.co');

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TDireccionC
    CHECK (direccion LIKE 'Calle%' OR direccion LIKE 'Carrera%' OR direccion LIKE 'Avenida%'
        OR direccion LIKE 'Transversal%' OR direccion LIKE 'Diagonal%' OR direccion LIKE 'Circular%');

ALTER TABLE PROFESORES ADD CONSTRAINT chk_TContrato
    CHECK (tipoContrato IN ('Planta', 'Catedra'));

ALTER TABLE MATERIASPORESTUDIANTE ADD CONSTRAINT chk_TIdE
    CHECK (REGEXP_LIKE(idEstudiante, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIASPORESTUDIANTE ADD CONSTRAINT chk_TIdF
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE DEPARTAMENTOS ADD CONSTRAINT chk_TIdG
    CHECK (REGEXP_LIKE(idDepartamento, '^[A-Z]{4}[0-9]*$'))

ALTER TABLE DEPARTAMENTOS ADD CONSTRAINT chk_TIdH
    CHECK (REGEXP_LIKE(idDirector, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TIdI
    CHECK (REGEXP_LIKE(idGrupo, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_THora
    CHECK (horario IN (
                       '07:00 - 08:30', '08:30 - 10:00', '10:00 - 11:30', '11:30 - 13:00',
                       '13:00 - 14:30', '14:30 - 16:00', '16:00 - 17:30', '17:30 - 19:00',
                       '07:00 - 10:00', '08:30 - 11:30', '10:00 - 13:00', '11:30 - 14:30',
                       '13:00 - 16:00', '14:30 - 17:30', '16:00 - 19:00'
        ));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TIdJ
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE GRUPOS ADD CONSTRAINT chk_TIdK
    CHECK (REGEXP_LIKE(idProfesor, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TIdL
    CHECK (REGEXP_LIKE(idPreinscripcion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TEstado
    CHECK (estado IN ('Enviado', 'No enviado'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TIdM
    CHECK (REGEXP_LIKE(idEstudiante, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREINSCRIPCIONES ADD CONSTRAINT chk_TIdN
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TIdO
    CHECK (REGEXP_LIKE(idCancelacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TEstadoA
    CHECK (estado IN ('En proceso', 'Rechazada', 'Aprobada'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TAsesoria
    CHECK (asesoria IN ('S', 'N'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TIdP
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CANCELACIONES ADD CONSTRAINT chk_TIdQ
    CHECK (REGEXP_LIKE(idNotificacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE AREAS ADD CONSTRAINT chk_TIdR
    CHECK (REGEXP_LIKE(idArea, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE AREAS ADD CONSTRAINT chk_TIdS
    CHECK (REGEXP_LIKE(idDepartamento, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE AREAS ADD CONSTRAINT chk_TIdT
    CHECK (REGEXP_LIKE(idDirector, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TIdU
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TNivel
    CHECK (nivel BETWEEN 1 AND 3);

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TModalidad
    CHECK (modalidad IN ('Presencial', 'Virtual', 'Hibrida'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TIdV
    CHECK (REGEXP_LIKE(idArea, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TIdW
    CHECK (REGEXP_LIKE(idCentroDeEstudios, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TIdX
    CHECK (REGEXP_LIKE(idNucleoDeFormacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE MATERIAS ADD CONSTRAINT chk_TIdY
    CHECK (REGEXP_LIKE(idEstudiante, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREREQUISITOSMATERIAS ADD CONSTRAINT chk_TIdZ
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PREREQUISITOSMATERIAS ADD CONSTRAINT chk_TIdAA
    CHECK (REGEXP_LIKE(idMateriaRequisito, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTIFICACIONES ADD CONSTRAINT chk_TIdAB
    CHECK (REGEXP_LIKE(idNotificacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTIFICACIONES ADD CONSTRAINT chk_TEstadoB
    CHECK (estado IN ('Enviado', 'No enviado'));

ALTER TABLE CENTROSDEESTUDIOS ADD CONSTRAINT chk_TIdAC
    CHECK (REGEXP_LIKE(idCentroEstudios, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CENTROSDEESTUDIOS ADD CONSTRAINT chk_TIdAD
    CHECK (REGEXP_LIKE(idDirector, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE CENTROSDEESTUDIOS ADD CONSTRAINT chk_TIdAE
    CHECK (REGEXP_LIKE(idProgramaAcademico, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NUCLEOSDEFORMACION ADD CONSTRAINT chk_TIdAF
    CHECK (REGEXP_LIKE(idNucleoFormacion, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTAS ADD CONSTRAINT chk_TIdAG
    CHECK (REGEXP_LIKE(idNota, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTAS ADD CONSTRAINT chk_TEval
    CHECK (tipoDeEvaluacion IN ('Parcial', 'Quiz', 'Actividad', 'Trabajo', 'Examen Final', 'Exposición'));

ALTER TABLE NOTAS ADD CONSTRAINT chk_TIdAH
    CHECK (REGEXP_LIKE(idMateria, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE NOTAS ADD CONSTRAINT chk_TIdAI
    CHECK (REGEXP_LIKE(idEstudiante, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PROGRAMASACADEMICOS ADD CONSTRAINT chk_TIdAJ
    CHECK (REGEXP_LIKE(idPrograma, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PROGRAMASPORESTUDIANTES ADD CONSTRAINT chk_TIdAK
    CHECK (REGEXP_LIKE(idPrograma, '^[A-Z]{4}[0-9]*$'));

ALTER TABLE PROGRAMASPORESTUDIANTES ADD CONSTRAINT chk_TIdAL
    CHECK (REGEXP_LIKE(idEstudiante, '^[A-Z]{4}[0-9]*$'));