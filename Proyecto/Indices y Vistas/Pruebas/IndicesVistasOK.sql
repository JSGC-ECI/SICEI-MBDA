-- Consultas que requieren índices

-- Índice en `estado` de la tabla `PREINSCRIPCIONES`
SELECT *
FROM PREINSCRIPCIONES
WHERE estado = 'Aprobado';

-- Índice en `idEstudiante` de la tabla `NOTAS`
SELECT *
FROM NOTAS
WHERE idEstudiante = 'ESTU1000093986';

-- Índice en `idMateria` de la tabla `CANCELACIONES`
SELECT *
FROM CANCELACIONES
WHERE idMateria = 'MBDA';

-- Índice en `duracionSemestres` de la tabla `PROGRAMASACADEMICOS`
SELECT *
FROM PROGRAMASACADEMICOS
WHERE duracionSemestres = 8;

-- Índice en `idDirector` de la tabla `CENTROSDEESTUDIOS`
SELECT *
FROM CENTROSDEESTUDIOS
WHERE idDirector = 'DIRE1000000563';

-- Consultas que requieren vistas

-- 1. Vista `profesoresPorMaterias`
SELECT *
FROM profesoresPorMaterias
WHERE nombre = 'Modelos y Bases de Datos';

-- 2. Vista `PromedioXCen`
SELECT *
FROM PromedioXCen
WHERE idCentroEstudios = 'CENT1';

-- 3. Vista `NotasXMat`
SELECT *
FROM NotasXMat
WHERE idMateria = 'PREM';

-- 4. Vista `menosEs`
SELECT *
FROM menosEs
WHERE NumeroEstudiantes < 10;