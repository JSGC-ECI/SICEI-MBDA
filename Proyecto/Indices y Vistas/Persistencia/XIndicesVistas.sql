-- Eliminación de vistas

-- CICLO 1

DROP VIEW profesoresPorMaterias;
DROP VIEW menosEs;
DROP VIEW PromedioXCen;
DROP VIEW NotasXMat;

-- CICLO 2



-- Eliminación de índices

--CICLO 1

-- Eliminación de índices para la tabla PREINSCRIPCIONES
DROP INDEX idx_preinscripciones_estado;
DROP INDEX idx_preinscripciones_idEstudiante;
DROP INDEX idx_preinscripciones_idMateria;

-- Eliminación de índices para la tabla AREAS
DROP INDEX idx_areas_idDepartamento;
DROP INDEX idx_areas_idDirector;

-- Eliminación de índices para la tabla MATERIAS
DROP INDEX idx_materias_idArea;
DROP INDEX idx_materias_idCentroDeEstudios;
DROP INDEX idx_materias_idNucleoDeFormacion;

-- Eliminación de índices para la tabla PREREQUISITOSMATERIAS
DROP INDEX idx_prerequisitosmaterias_idMateriaRequisito;

-- Eliminación de índices para la tabla CENTROSDEESTUDIOS
DROP INDEX idx_centrosdeestudios_idDirector;
DROP INDEX idx_centrosdeestudios_idProgramaAcademico;

-- Eliminación de índices para la tabla NOTAS
DROP INDEX idx_notas_idMateria;
DROP INDEX idx_notas_idEstudiante;

-- Eliminación de índices para la tabla PROGRAMASACADEMICOS
DROP INDEX idx_programasacademicos_duracionSemestres;

-- Eliminación de índices para la tabla PROGRAMASPORESTUDIANTES
DROP INDEX idx_programasporestudiantes_idEstudiante;

--CICLO 2

-- Eliminación de índices para la tabla CANCELACIONES
DROP INDEX idx_cancelaciones_idMateria;
DROP INDEX idx_cancelaciones_idNotificacion;
DROP INDEX idx_cancelaciones_idEstudiante;

-- Eliminación de índices para la tabla NOTIFICACIONES
DROP INDEX idx_notificaciones_estado;