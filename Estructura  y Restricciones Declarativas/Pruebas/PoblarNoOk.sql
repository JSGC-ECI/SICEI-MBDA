-- ACLARACION: Se debe ejecutar PoblarNoOk.sql antes de ejecutar este script

-- CICLO 1

-- DIRECTORES: Violación de clave primaria (duplicado de idUsuario)
INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DICE029', 'Duplicado Director', 'directorR@escuelaing.edu.co', 'GGG', '222', 'Calle 20', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 1, 'http://example.com/reportR', 55300.20);

-- DEPARTAMENTOS: Violación de clave foránea (idDirector no existe)
INSERT INTO DEPARTAMENTOS (idDepartamento, nombre, idDirector)
VALUES ('CIEN', 'Ciencias Exactas', 'DIRE999');

-- AREAS: Violación de restricción UNIQUE (duplicado de idArea)
INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA1', 'Duplicado Área', 'HUMA', 'DIR001');

-- NUCLEOSDEFORMACION: Violación de clave primaria (duplicado de idNucleoFormacion)
INSERT INTO NUCLEOSDEFORMACION (idNucleoFormacion, nombre)
VALUES ('NUCF1', 'Duplicado Núcleo');

-- MATERIAS: Violación de tipo de dato (texto en un campo numérico)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idNucleoDeFormacion)
VALUES ('MATE007', 'Materia Inválida', 'tres', 4, 2, '1', 'Presencial', 'AREA1', 'NUCF1');

-- ESTUDIANTES: Violación de restricción NOT NULL (campo obligatorio)
INSERT INTO ESTUDIANTES (idUsuario, nombre)
VALUES (NULL, 'Estudiante Inválido');

-- NOTAS: Violación de clave foránea (idMateria no existe)
INSERT INTO NOTAS (idNota, tipoDeEvaluacion, valor, idMateria, idEstudiante)
VALUES ('NOTA031', 'Parcial', 4.5, 'MATE999', 'ESTU1000093986');

-- MATERIASPORESTUDIANTE: Violación de clave foránea (idEstudiante no existe)
INSERT INTO MATERIASPORESTUDIANTE (idMateria, idEstudiante)
VALUES ('PREM', 'ESTU999');

-- PREREQUISITOSMATERIAS: Violación de clave foránea (idMateriaRequisito no existe)
INSERT INTO PREREQUISITOSMATERIAS (idMateria, idMateriaRequisito)
VALUES ('PREM', 'MATE999');

-- PROGRAMASPORESTUDIANTES: Violación de clave foránea (idPrograma no existe)
INSERT INTO PROGRAMASPORESTUDIANTES (idPrograma, idEstudiante)
VALUES ('PROG999', 'ESTU1000096208');

-- Violación de chk_TIdA (idUsuario no cumple con el formato)
INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('1234', 'Director Inválido', 'correo@escuelaing.edu.co', '1234', '123456789', 'Calle 123', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 1, 'http://example.com', 10000);

-- Violación de chk_TCorreoA (correo no pertenece al dominio permitido)
INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Director Inválido', 'correo@otrodominio.com', '1234', '123456789', 'Calle 123', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 1, 'http://example.com', 10000);

-- Violación de chk_TDireccionA (dirección no cumple con el formato)
INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR002', 'Director Inválido', 'correo@escuelaing.edu.co', '1234', '123456789', 'Zona Rural', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 1, 'http://example.com', 10000);

-- Violación de chk_TNivelL (nivelJerarquico fuera del rango permitido)
INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIRE099', 'Director Inválido', 'correo@escuelaing.edu.co', '1234', '123456789', 'Calle 123', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 5, 'http://example.com', 10000);

-- Violación de chk_documentoIdentidad (documentoIdentidad no es numérico)
INSERT INTO ESTUDIANTES (idUsuario, nombre, documentoIdentidad, correo, direccion, EstadoAcademico)
VALUES ('ESTU001', 'Estudiante Inválido', 'ABC123', 'correo@escuelaing.edu.co', 'Calle 123', 'A/1');

-- Violación de chk_estado_academico (EstadoAcademico no cumple con el formato permitido)
INSERT INTO ESTUDIANTES (idUsuario, nombre, documentoIdentidad, correo, direccion, EstadoAcademico)
VALUES ('ESTU002', 'Estudiante Inválido', '123456', 'correo@escuelaing.edu.co', 'Calle 123', 'Z');

-- Violación de chk_TModalidad (modalidad no es válida)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idNucleoDeFormacion)
VALUES ('MATI001', 'Materia Inválida', 3, 2, 1, 1, 'Semipresencial', 'AREA001', 'NUCF001');

-- Violación de chk_rango_notas (valor fuera del rango permitido)
INSERT INTO NOTAS (idNota, tipoDeEvaluacion, valor, idMateria, idEstudiante)
VALUES ('NOTA001', 'Parcial', 6.0, 'MAT001', 'ESTU001');

-- GRUPOS: Violación de chk_TIdA (idGrupo no cumple con el formato)
INSERT INTO GRUPOS (idGrupo, horario, idMateria, idProfesor)
VALUES ('12345', '07:00 - 08:30', 'MATE001', 'PROF001');

-- GRUPOS: Violación de chk_THora (horario no permitido)
INSERT INTO GRUPOS (idGrupo, horario, idMateria, idProfesor)
VALUES ('GRUP001', '20:00 - 21:30', 'MATE001', 'PROF001');

-- GRUPOS: Violación de chk_TIdJ (idMateria no cumple con el formato)
INSERT INTO GRUPOS (idGrupo, horario, idMateria, idProfesor)
VALUES ('GRUP002', '07:00 - 08:30', '1234', 'PROF001');

-- GRUPOS: Violación de chk_TIdK (idProfesor no cumple con el formato)
INSERT INTO GRUPOS (idGrupo, horario, idMateria, idProfesor)
VALUES ('GRUP003', '07:00 - 08:30', 'MATE001', '1234');

-- PREINSCRIPCIONES: Violación de chk_TIdL (idPreinscripcion no cumple con el formato)
INSERT INTO PREINSCRIPCIONES (idPreinscripcion, estado, idEstudiante, idMateria)
VALUES ('1234', 'Enviado', 'ESTU001', 'MATE001');

-- PREINSCRIPCIONES: Violación de chk_TEstado (estado no permitido)
INSERT INTO PREINSCRIPCIONES (idPreinscripcion, estado, idEstudiante, idMateria)
VALUES ('PREI001', 'Pendiente', 'ESTU001', 'MATE001');

-- PREINSCRIPCIONES: Violación de chk_TIdM (idEstudiante no cumple con el formato)
INSERT INTO PREINSCRIPCIONES (idPreinscripcion, estado, idEstudiante, idMateria)
VALUES ('PREI002', 'Enviado', '1234', 'MATE001');

-- PREINSCRIPCIONES: Violación de chk_TIdN (idMateria no cumple con el formato)
INSERT INTO PREINSCRIPCIONES (idPreinscripcion, estado, idEstudiante, idMateria)
VALUES ('PREI003', 'Enviado', 'ESTU001', '1234');

-- AREAS: Violación de chk_TIdR (idArea no cumple con el formato)
INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('1234', 'Área Inválida', 'HUMA', 'DIRE1000000563');

-- AREAS: Violación de chk_TIdS (idDepartamento no cumple con el formato)
INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Área Inválida', '1234', 'DIRE1000000563');

-- AREAS: Violación de chk_TIdT (idDirector no cumple con el formato)
INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Área Inválida', 'DEP001', '1234');

-- MATERIAS: Violación de chk_TIdU (idMateria no cumple con el formato)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idNucleoDeFormacion)
VALUES ('1234', 'Materia Inválida', 3, 2, 1, 1, 'Presencial', 'HUMA', 'NUCF1');

-- MATERIAS: Violación de chk_TNivel (nivel fuera del rango permitido)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idNucleoDeFormacion)
VALUES ('MATI001', 'Materia Inválida', 3, 2, 1, 5, 'Presencial', 'AREA1', 'NUCF1');

-- MATERIAS: Violación de chk_TIdV (idArea no cumple con el formato)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idNucleoDeFormacion)
VALUES ('MATI001', 'Materia Inválida', 3, 2, 1, 1, 'Presencial', '1234', 'NUCF1');

-- MATERIAS: Violación de chk_TIdW (idCentroDeEstudios no cumple con el formato)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idCentroDeEstudios, idNucleoDeFormacion)
VALUES ('MATI001', 'Materia Inválida', 3, 2, 1, 1, 'Presencial', '1234', 'NUCF1');

-- MATERIAS: Violación de chk_TIdX (idNucleoDeFormacion no cumple con el formato)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idNucleoDeFormacion)
VALUES ('MAT001', 'Materia Inválida', 3, 2, 1, 1, 'Presencial', 'AREA1', '1234');

-- PREREQUISITOSMATERIAS: Violación de chk_TIdZ (idMateria no cumple con el formato)
INSERT INTO PREREQUISITOSMATERIAS (idMateria, idMateriaRequisito)
VALUES ('1234', 'INSI');

-- PREREQUISITOSMATERIAS: Violación de chk_TIdAA (idMateriaRequisito no cumple con el formato)
INSERT INTO PREREQUISITOSMATERIAS (idMateria, idMateriaRequisito)
VALUES ('INSI', '1234');

-- CENTROSDEESTUDIOS: Violación de chk_TIdAC (idCentroEstudios no cumple con el formato)
INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('1234', 'Centro Inválido', 'DIRE1000000563', 'ISIS');

-- CENTROSDEESTUDIOS: Violación de chk_TIdAD (idDirector no cumple con el formato)
INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT001', 'Centro Inválido', 'DIRE1000000563', 'ISIS');

-- CENTROSDEESTUDIOS: Violación de chk_TIdAE (idProgramaAcademico no cumple con el formato)
INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT001', 'Centro Inválido', 'DIRE1000000563', '1234');

-- CICLO 2

-- CANCELACIONES: Violación de clave primaria (duplicado de idCancelacion)
INSERT INTO CANCELACIONES (idCancelacion, fecha, motivo, estado, asesoria, idMateria, idNotificacion)
VALUES ('CANC001', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Duplicado Cancelación', 'Aprobada', 'S', 'MATE001', 'NOTI001');

-- NOTIFICACIONES: Violación de restricción NOT NULL (campo obligatorio)
INSERT INTO NOTIFICACIONES (idNotificacion, mensaje, fecha, estado)
VALUES ('NOTI004', NULL, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Enviado')

-- CANCELACIONES: Violación de chk_TEstadoA (estado no permitido)
INSERT INTO CANCELACIONES (idCancelacion, fecha, motivo, estado, asesoria, idMateria, idNotificacion)
VALUES ('CANC002', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Motivo Inválido', 'Pendiente', 'S', 'MATE001', 'NOTI001');

-- CANCELACIONES: Violación de chk_TAsesoria (asesoria no permitida)
INSERT INTO CANCELACIONES (idCancelacion, fecha, motivo, estado, asesoria, idMateria, idNotificacion)
VALUES ('CANC003', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Motivo Inválido', 'Aprobada', 'X', 'MATE001', 'NOTI001');
