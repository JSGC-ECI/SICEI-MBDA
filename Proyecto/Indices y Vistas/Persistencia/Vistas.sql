-- CICLO 1

-- Profesores por materias
CREATE VIEW profesoresPorMaterias AS
SELECT m.nombre AS nombreMateria, m.idMateria, p.nombre AS nombreProfesor
FROM materias m
         JOIN grupos g ON m.idMateria = g.idMateria
         JOIN profesores p ON g.idProfesor = p.idUsuario;

-- Materias que tienen menos estudiantes
CREATE VIEW menosEs AS
SELECT m.nombre, COUNT(mpe.idEstudiante) AS NumeroEstudiantes
FROM materias m
         LEFT JOIN materiasporestudiante mpe ON m.idMateria = mpe.idMateria
GROUP BY m.idMateria, m.nombre
ORDER BY NumeroEstudiantes;

-- Promedio de notas por centro de estudios
CREATE OR REPLACE VIEW PromedioXCen AS
SELECT c.nombre, AVG(n.valor) AS promedio_valor
FROM notas n
         JOIN materias m ON n.idMateria = m.idMateria
         JOIN centrosdeestudios c ON m.idCentroDeEstudios = c.idCentroEstudios
GROUP BY c.nombre;

-- Notas por materia
CREATE VIEW NotasXMat AS
SELECT n.idNota, n.tipoDeEvaluacion, m.nombre, n.valor
FROM notas n
         JOIN materias m ON n.idMateria = m.idMateria;

-- CICLO 2
