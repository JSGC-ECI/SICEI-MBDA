-- DIRECTORES
CREATE INDEX idx_directores_nombre ON DIRECTORES (nombre);
CREATE INDEX idx_directores_correo ON DIRECTORES (correo);

-- DEPARTAMENTOS
CREATE INDEX idx_departamentos_nombre ON DEPARTAMENTOS (nombre);
CREATE INDEX idx_departamentos_idDirector ON DEPARTAMENTOS (idDirector);

-- AREAS
CREATE INDEX idx_areas_nombre ON AREAS (nombre);
CREATE INDEX idx_areas_idDepartamento ON AREAS (idDepartamento);

-- NUCLEOSDEFORMACION
CREATE INDEX idx_nucleos_nombre ON NUCLEOSDEFORMACION (nombre);

-- MATERIAS
CREATE INDEX idx_materias_nombre ON MATERIAS (nombre);
CREATE INDEX idx_materias_idArea ON MATERIAS (idArea);
CREATE INDEX idx_materias_idCentroDeEstudios ON MATERIAS (idCentroDeEstudios);

-- ESTUDIANTES
CREATE INDEX idx_estudiantes_nombre ON ESTUDIANTES (nombre);
CREATE INDEX idx_estudiantes_correo ON ESTUDIANTES (correo);

-- NOTAS
CREATE INDEX idx_notas_idMateria ON NOTAS (idMateria);
CREATE INDEX idx_notas_idEstudiante ON NOTAS (idEstudiante);

-- CANCELACIONES
CREATE INDEX idx_cancelaciones_fecha ON CANCELACIONES (fecha);
CREATE INDEX idx_cancelaciones_idMateria ON CANCELACIONES (idMateria);

-- MATERIASPORESTUDIANTE
CREATE INDEX idx_materias_estudiante_idMateria ON MATERIASPORESTUDIANTE (idMateria);
CREATE INDEX idx_materias_estudiante_idEstudiante ON MATERIASPORESTUDIANTE (idEstudiante);

-- PREREQUISITOSMATERIAS
CREATE INDEX idx_prerequisitos_idMateria ON PREREQUISITOSMATERIAS (idMateria);
CREATE INDEX idx_prerequisitos_idMateriaRequisito ON PREREQUISITOSMATERIAS (idMateriaRequisito);

-- NOTIFICACIONES
CREATE INDEX idx_notificaciones_fecha ON NOTIFICACIONES (fecha);
CREATE INDEX idx_notificaciones_estado ON NOTIFICACIONES (estado);

-- PROGRAMASPORESTUDIANTES
CREATE INDEX idx_programas_estudiantes_idPrograma ON PROGRAMASPORESTUDIANTES (idPrograma);
CREATE INDEX idx_programas_estudiantes_idEstudiante ON PROGRAMASPORESTUDIANTES (idEstudiante);  