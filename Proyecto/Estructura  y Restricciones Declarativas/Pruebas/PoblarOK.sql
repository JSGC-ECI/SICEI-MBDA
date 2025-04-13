-- DIRECTORES
INSERT INTO DIRECTORES (
    idUsuario, nombre, correo, contraseña, telefono, direccion, fechaRegistro,
    fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados
) VALUES (
             'DIRA123', 'RODRIGO HUMBERTO GUALTERO MARTINEZ', 'rodrigo.gualtero-m@escuelaing.edu.co', 'claveSegura123', '371',
             'Calle 123', SYSDATE, TO_DATE('2023-02-01', 'YYYY-MM-DD'),
             'Alto', 'Informe1', 5000000
         );

-- PROFESORES
INSERT INTO PROFESORES (
    idUsuario, nombre, correo, contraseña, telefono, direccion, fechaRegistro,
    titulo, experienciaAnios, tipoContrato
) VALUES (
             'PROF123', 'LAURA CATALINA HERRERA CORREA', 'laura.herrera@escuelaing.edu.co', 'clave1234', '223',
             'Carrera 45', SYSDATE, 'Ingeniera Sistemas', 5, 'Catedra'
         );

-- ESTUDIANTES
INSERT INTO ESTUDIANTES (
    idUsuario, nombre, correo, contraseña, telefono, direccion, fechaRegistro,
    fechaIngreso, documentoIdentidad, idCancelacion, estadoAcademico
) VALUES (
             'ESTU001', 'MARIANELLA POLO PEÑA', 'marianella.polo-p@mail.escuelaing.edu.co', 'pass456', '3001234567',
             'Avenida Siempreviva', SYSDATE, TO_DATE('2023-01-10', 'YYYY-MM-DD'),
             '1029220411', 'CANC001', 'A-7'
         );

-- CANCELACIONES
INSERT INTO CANCELACIONES (
    idCancelacion, fecha, motivo, estado, asesoria, idMateria, idNotificacion
) VALUES (
             'CANC001', TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'Notas bajas', 'En proceso',
             'S', 'MAT001', 'NOTI001'
         );

-- NOTIFICACIONES
INSERT INTO NOTIFICACIONES (
    idNotificacion, mensaje, fecha, estado
) VALUES (
             'NOTI001', 'Solicitud recibida', TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'Enviado'
         );

-- PROGRAMAS ACADÉMICOS
INSERT INTO PROGRAMASACADEMICOS (
    idPrograma, nombre, duracionSemestres
) VALUES (
             'ISIS', 'Ingeniería de Sistemas', 10
         );

-- CENTROS DE ESTUDIOS
INSERT INTO CENTROSDEESTUDIOS (
    idCentroEstudios, nombre, idDirector, idProgramaAcademico
) VALUES (
             'CENT001', 'Centro de Estudios en Ingeniería de Software y Ciencias de la Computación', 'DIRA123', 'ISIS'
         );

-- NÚCLEOS DE FORMACIÓN
INSERT INTO NUCLEOSDEFORMACION (
    idNucleoFormacion, nombre
) VALUES (
             'NUCL001', 'COMÚN INSTITUCIONAL'
         );

-- ÁREAS
INSERT INTO AREAS (
    idArea, nombre, idDepartamento, idDirector
) VALUES (
             'AREA01', 'Comunicación en español', 'DEPT001', 'DIRA123'
         );

-- DEPARTAMENTOS
INSERT INTO DEPARTAMENTOS (
    idDepartamento, nombre, idDirector
) VALUES (
             'DEPT001', 'Departamento de Humanidades e Idiomas', 'DIRA123'
         );

-- MATERIAS
INSERT INTO MATERIAS (
    idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad,
    idArea, idCentroDeEstudios, idNucleoDeFormacion, idEstudiante
) VALUES (
             'MBDA ', 'Modelos y Bases de Datos', 4, 1, 1, '2', 'Presencial',
             'AREA01', 'CENT001', 'NUCL001', 'ESTU001'
         );

-- MATERIAS POR ESTUDIANTE
INSERT INTO MATERIASPORESTUDIANTE (
    idEstudiante, idMateria, materia
) VALUES (
             'ESTU001', 'MAT001', 'Modelos y Bases de Datos'
         );

-- PREINSCRIPCIONES
INSERT INTO PREINSCRIPCIONES (
    idPreinscripcion, fecha, estado, idEstudiante, idMateria
) VALUES (
             'PRE001', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Enviado', 'ESTU001', 'MAT001'
         );

-- GRUPOS
INSERT INTO GRUPOS (
    idGrupo, numero, cupoMaximo, horario, idMateria, idProfesor
) VALUES (
             'GRUP001', 2, 30, '07:00 - 10:00', 'MAT001', 'PROF123'
         );

-- NOTAS
INSERT INTO NOTAS (
    idNota, valor, fechaRegistro, tipoDeEvaluacion, idMateria, idEstudiante
) VALUES (
             'NOTA001', 4.5, SYSDATE, 'Parcial', 'MAT001', 'ESTU001'
         );

-- PREREQUISITOS DE MATERIA
INSERT INTO PREREQUISITOSMATERIAS (
    idMateria, idMateriaRequisito
) VALUES (
             'MAT001', 'MAT000'
         );

-- PROGRAMAS POR ESTUDIANTE
INSERT INTO PROGRAMASPORESTUDIANTES (
    idPrograma, idEstudiante, programa
) VALUES (
             'PROG001', 'ESTU001', 'Ingeniería Estadística'
         );
