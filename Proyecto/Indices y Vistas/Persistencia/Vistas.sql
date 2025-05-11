-- DIRECTORES
CREATE VIEW directoresE AS
SELECT idUsuario, nombre, correo, telefono, direccion, nivelJerarquico, informesGenerados, presupuestoAsignados
FROM DIRECTORES;

-- DEPARTAMENTOS
CREATE VIEW departamentosE AS
SELECT idDepartamento, nombre, idDirector
FROM DEPARTAMENTOS;

-- AREAS
CREATE VIEW vista_areas AS
SELECT idArea, nombre, idDepartamento, idDirector
FROM AREAS;

-- NUCLEOSDEFORMACION
CREATE VIEW vista_nucleosdeformacion AS
SELECT idNucleoFormacion, nombre
FROM NUCLEOSDEFORMACION;

-- MATERIAS
CREATE VIEW vista_materias AS
SELECT idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idCentroDeEstudios, idNucleoDeFormacion
FROM MATERIAS;

-- ESTUDIANTES
CREATE VIEW vista_estudiantes AS
SELECT idUsuario, nombre, correo, telefono, direccion, fechaRegistro, fechaIngreso, documentoIdentidad, estadoAcademico
FROM ESTUDIANTES;

-- NOTAS
CREATE VIEW vista_notas AS
SELECT idNota, tipoDeEvaluacion, valor, idMateria, idEstudiante
FROM NOTAS;

-- CANCELACIONES
CREATE VIEW vista_cancelaciones AS
SELECT idCancelacion, fecha, motivo, estado, idMateria
FROM CANCELACIONES;

-- MATERIASPORESTUDIANTE
CREATE VIEW vista_materiasporestudiante AS
SELECT idMateria, idEstudiante
FROM MATERIASPORESTUDIANTE;

-- PREREQUISITOSMATERIAS
CREATE VIEW vista_prerequisitosmaterias AS
SELECT idMateria, idMateriaRequisito
FROM PREREQUISITOSMATERIAS;

-- NOTIFICACIONES
CREATE VIEW vista_notificaciones AS
SELECT idNotificacion, mensaje, fecha, estado
FROM NOTIFICACIONES;

-- PROGRAMASPORESTUDIANTES
CREATE VIEW vista_programasporestudiantes AS
SELECT idPrograma, idEstudiante
FROM PROGRAMASPORESTUDIANTES;