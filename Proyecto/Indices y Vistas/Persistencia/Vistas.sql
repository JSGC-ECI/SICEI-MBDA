-- CICLO 1

-- DIRECTORES
CREATE VIEW directoresE AS
SELECT idUsuario, nombre, correo, telefono, direccion, nivelJerarquico, informesGenerados, presupuestoAsignados
FROM DIRECTORES;

-- DEPARTAMENTOS
CREATE VIEW departamentosE AS
SELECT idDepartamento, nombre, idDirector
FROM DEPARTAMENTOS;

-- AREAS
CREATE VIEW areasE AS
SELECT idArea, nombre, idDepartamento, idDirector
FROM AREAS;

-- NUCLEOSDEFORMACION
CREATE VIEW nucleosdeformacionE AS
SELECT idNucleoFormacion, nombre
FROM NUCLEOSDEFORMACION;

-- MATERIAS
CREATE VIEW materiasE AS
SELECT idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idCentroDeEstudios, idNucleoDeFormacion
FROM MATERIAS;

-- ESTUDIANTES
CREATE VIEW estudiantesE AS
SELECT idUsuario, nombre, correo, telefono, direccion, fechaRegistro, fechaIngreso, documentoIdentidad, estadoAcademico
FROM ESTUDIANTES;

-- NOTAS
CREATE VIEW notasE AS
SELECT idNota, tipoDeEvaluacion, valor, idMateria, idEstudiante
FROM NOTAS;

-- MATERIASPORESTUDIANTE
CREATE VIEW materiasporestudianteE AS
SELECT idMateria, idEstudiante
FROM MATERIASPORESTUDIANTE;

-- PREREQUISITOSMATERIAS
CREATE VIEW prerequisitosmateriasE AS
SELECT idMateria, idMateriaRequisito
FROM PREREQUISITOSMATERIAS;

-- PROGRAMASPORESTUDIANTES
CREATE VIEW programasporestudiantesE AS
SELECT idPrograma, idEstudiante
FROM PROGRAMASPORESTUDIANTES;

-- CICLO 2

-- CANCELACIONES
CREATE VIEW cancelacionesE AS
SELECT idCancelacion, fecha, motivo, estado, idMateria
FROM CANCELACIONES;

-- NOTIFICACIONES
CREATE VIEW notificacionesE AS
SELECT idNotificacion, mensaje, fecha, estado
FROM NOTIFICACIONES;