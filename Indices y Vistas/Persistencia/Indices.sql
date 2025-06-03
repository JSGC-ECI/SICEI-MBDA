-- Índices para la tabla PREINSCRIPCIONES
CREATE INDEX idx_preinscripciones_estado ON PREINSCRIPCIONES(estado);
CREATE INDEX idx_preinscripciones_idEstudiante ON PREINSCRIPCIONES(idEstudiante);
CREATE INDEX idx_preinscripciones_idMateria ON PREINSCRIPCIONES(idMateria);

-- Índices para la tabla AREAS
CREATE INDEX idx_areas_idDepartamento ON AREAS(idDepartamento);
CREATE INDEX idx_areas_idDirector ON AREAS(idDirector);

-- Índices para la tabla MATERIAS
CREATE INDEX idx_materias_idArea ON MATERIAS(idArea);
CREATE INDEX idx_materias_idCentroDeEstudios ON MATERIAS(idCentroDeEstudios);
CREATE INDEX idx_materias_idNucleoDeFormacion ON MATERIAS(idNucleoDeFormacion);

-- Índices para la tabla PREREQUISITOSMATERIAS
CREATE INDEX idx_prerequisitosmaterias_idMateriaRequisito ON PREREQUISITOSMATERIAS(idMateriaRequisito);

-- Índices para la tabla CENTROSDEESTUDIOS
CREATE INDEX idx_centrosdeestudios_idDirector ON CENTROSDEESTUDIOS(idDirector);
CREATE INDEX idx_centrosdeestudios_idProgramaAcademico ON CENTROSDEESTUDIOS(idProgramaAcademico);

-- Índices para la tabla NOTAS
CREATE INDEX idx_notas_idMateria ON NOTAS(idMateria);
CREATE INDEX idx_notas_idEstudiante ON NOTAS(idEstudiante);

-- Índices para la tabla PROGRAMASACADEMICOS
CREATE INDEX idx_programasacademicos_duracionSemestres ON PROGRAMASACADEMICOS(duracionSemestres);

-- Índices para la tabla PROGRAMASPORESTUDIANTES
CREATE INDEX idx_programasporestudiantes_idEstudiante ON PROGRAMASPORESTUDIANTES(idEstudiante);

-- CICLO 2

-- Índices para la tabla CANCELACIONES
CREATE INDEX idx_cancelaciones_idMateria ON CANCELACIONES(idMateria);
CREATE INDEX idx_cancelaciones_idNotificacion ON CANCELACIONES(idNotificacion);
CREATE INDEX idx_cancelaciones_idEstudiante ON CANCELACIONES(idEstudiante);

-- Índices para la tabla NOTIFICACIONES
CREATE INDEX idx_notificaciones_estado ON NOTIFICACIONES(estado);