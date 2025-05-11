-- DIRECTORES: Violación de clave primaria (duplicado de idUsuario)
INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Duplicado Director', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

-- DEPARTAMENTOS: Violación de clave foránea (idDirector no existe)
INSERT INTO DEPARTAMENTOS (idDepartamento, nombre, idDirector)
VALUES ('CIEN', 'Ciencias Exactas', 'DIR999');

-- AREAS: Violación de restricción UNIQUE (duplicado de idArea)
INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Duplicado Área', 'HUMA', 'DIR001');

-- NUCLEOSDEFORMACION: Violación de clave primaria (duplicado de idNucleoFormacion)
INSERT INTO NUCLEOSDEFORMACION (idNucleoFormacion, nombre)
VALUES ('NUCF001', 'Duplicado Núcleo');

-- MATERIAS: Violación de tipo de dato (texto en un campo numérico)
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idCentroDeEstudios, idNucleoDeFormacion, idEstudiante)
VALUES ('MATE007', 'Materia Inválida', 'tres', 4, 2, '1', 'Presencial', 'AREA001', 'CENT001', 'NUCF001', 'ESTU001');

-- ESTUDIANTES: Violación de restricción NOT NULL (campo obligatorio)
INSERT INTO ESTUDIANTES (idUsuario, nombre)
VALUES (NULL, 'Estudiante Inválido');

-- NOTAS: Violación de clave foránea (idMateria no existe)
INSERT INTO NOTAS (idNota, tipoDeEvaluacion, valor, idMateria, idEstudiante)
VALUES ('NOTA002', 'Parcial', 4.5, 'MATE999', 'ESTU001');

-- CANCELACIONES: Violación de clave primaria (duplicado de idCancelacion)
INSERT INTO CANCELACIONES (idCancelacion, fecha, motivo, estado, asesoria, idMateria, idNotificacion)
VALUES ('CANC001', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Duplicado Cancelación', 'Aprobada', 'S', 'MATE001', 'NOTI001');

-- MATERIASPORESTUDIANTE: Violación de clave foránea (idEstudiante no existe)
INSERT INTO MATERIASPORESTUDIANTE (idMateria, idEstudiante)
VALUES ('MATE001', 'ESTU999');

-- PREREQUISITOSMATERIAS: Violación de clave foránea (idMateriaRequisito no existe)
INSERT INTO PREREQUISITOSMATERIAS (idMateria, idMateriaRequisito)
VALUES ('MATE002', 'MATE999');

-- NOTIFICACIONES: Violación de restricción NOT NULL (campo obligatorio)
INSERT INTO NOTIFICACIONES (idNotificacion, mensaje, fecha, estado)
VALUES ('NOTI004', NULL, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Enviado');

-- PROGRAMASPORESTUDIANTES: Violación de clave foránea (idPrograma no existe)
INSERT INTO PROGRAMASPORESTUDIANTES (idPrograma, idEstudiante)
VALUES ('PROG999', 'ESTU001');