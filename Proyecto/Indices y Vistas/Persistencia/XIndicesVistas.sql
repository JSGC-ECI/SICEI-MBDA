-- Eliminación de vistas

-- CICLO 1

DROP VIEW directoresE;
DROP VIEW departamentosE;
DROP VIEW areasE;
DROP VIEW nucleosdeformacionE;
DROP VIEW materiasE;
DROP VIEW estudiantesE;
DROP VIEW notasE;
DROP VIEW materiasporestudianteE;
DROP VIEW prerequisitosmateriasE;
DROP VIEW programasporestudiantesE;

-- CICLO 2

DROP VIEW cancelacionesE;
DROP VIEW notificacionesE;

-- Eliminación de índices

-- CICLO 1

DROP INDEX idx_directores_nombre;
DROP INDEX idx_directores_correo;
DROP INDEX idx_departamentos_nombre;
DROP INDEX idx_departamentos_idDirector;
DROP INDEX idx_areas_nombre;
DROP INDEX idx_areas_idDepartamento;
DROP INDEX idx_nucleos_nombre;
DROP INDEX idx_materias_nombre;
DROP INDEX idx_materias_idArea;
DROP INDEX idx_materias_idCentroDeEstudios;
DROP INDEX idx_estudiantes_nombre;
DROP INDEX idx_estudiantes_correo;
DROP INDEX idx_notas_idMateria;
DROP INDEX idx_notas_idEstudiante;
DROP INDEX idx_materias_estudiante_idMateria;
DROP INDEX idx_materias_estudiante_idEstudiante;
DROP INDEX idx_prerequisitos_idMateria;
DROP INDEX idx_prerequisitos_idMateriaRequisito;
DROP INDEX idx_programas_estudiantes_idPrograma;
DROP INDEX idx_programas_estudiantes_idEstudiante;

-- CICLO 2

DROP INDEX idx_cancelaciones_fecha;
DROP INDEX idx_cancelaciones_idMateria;
DROP INDEX idx_notificaciones_fecha;
DROP INDEX idx_notificaciones_estado;