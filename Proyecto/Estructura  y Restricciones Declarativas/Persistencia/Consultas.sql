


-- CICLO 1

-- Consultar profesores por materias

SELECT m.nombre, m.idMateria, p.nombre
FROM materias m
         JOIN grupos g ON m.idMateria = g.idMateria
         JOIN profesores p ON g.idProfesor = p.idUsuario;

-- Consultar materias que tienen tienen menos estudiantes

SELECT m.nombre, COUNT(mpe.idEstudiante) AS NumeroEstudiantes
FROM materias m
         LEFT JOIN materiasporestudiante mpe ON m.idMateria = mpe.idMateria
GROUP BY m.idMateria, m.nombre
ORDER BY NumeroEstudiantes;

-- Consultar el promedio de notas por centro de estudios

SELECT c.nombre, AVG(n.valor)
FROM notas n
         JOIN materias m ON n.idMateria = m.idMateria
         JOIN centrosdeestudios c ON m.idCentroDeEstudios = c.idCentroEstudios
GROUP BY c.nombre;

-- Consultar notas por materia

SELECT n.idNota, n.tipoDeEvaluacion, m.nombre, n.valor
FROM notas n
         JOIN materias m ON n.idMateria = m.idMateria;

-- CICLO 2

-- Consultar materia de la cual se ha realizado mas solicitud de cancelaciones

SELECT m.nombre, m.idMateria, COUNT(c.idCancelacion) AS NumeroDeCancelaciones
FROM materias m
         JOIN cancelaciones c ON m.idMateria = c.idMateria
GROUP BY m.idMateria, m.nombre
ORDER BY NumeroDeCancelaciones DESC
FETCH FIRST 1 ROWS ONLY;

-- Consultar cancelaciones aceptadas

SELECT m.nombre, c.idCancelacion, c.estado
FROM cancelaciones c
         JOIN materias m ON c.idMateria = m.idMateria
WHERE c.estado = 'Aceptada';