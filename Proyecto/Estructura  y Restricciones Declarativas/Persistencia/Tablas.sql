CREATE TABLE USUARIOS(
    idUsuario VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    correo VARCHAR2(50),
    contraseña VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(10),
    direccion VARCHAR2(100) NOT NULL,
    fechaRegistro TIMESTAMP NOT NULL
);

CREATE TABLE DIRECTORES(
    idUsuario VARCHAR2(25) NOT NULL,
    fechaNombramiento TIMESTAMP NOT NULL,
    nivelJerarquico VARCHAR2(10) NOT NULL,
    informesGenerados VARCHAR2(25) NOT NULL,
    presupuestoAsignados number(10,2) NOT NULL
);

CREATE TABLE COORDINADORES(
    idUsuario VARCHAR2(25) NOT NULL,
    proyectoACargo VARCHAR2(35) NOT NULL,
    fechaNombramiento TIMESTAMP NOT NULL,
    areaEspecializacion VARCHAR2(35) NOT NULL,
    recursosAsignados number(10,2) NOT NULL
);

CREATE TABLE PROFESORES (
    idUsuario VARCHAR2(25) NOT NULL,
    titulo VARCHAR2(50) NOT NULL,
    experienciaAnios INT NOT NULL,
    tipoContrato VARCHAR2(10) NOT NULL
);

CREATE TABLE ESTUDIANTES (
    idUsuario VARCHAR2(25) NOT NULL,
    fechaIngreso TIMESTAMP NOT NULL,
    documentoIdentidad VARCHAR2(25) NOT NULL,
    idCancelacion VARCHAR2(25) NOT NULL
);

CREATE TABLE MATERIASPORESTUDIANTE (
    idEstudiante VARCHAR2(25) NOT NULL,
    idMateria VARCHAR2(25) NOT NULL,
    materia VARCHAR2(100) NOT NULL
);

CREATE TABLE DEPARTAMENTOS (
    idDepartamento VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35),
    idDirector VARCHAR2(25) NOT NULL
);

CREATE TABLE GRUPOS (
    idGrupo VARCHAR2(25) NOT NULL,
    numero INT,
    cupoMaximo INT NOT NULL,
    horario VARCHAR2(20) NOT NULL,
    idMateria VARCHAR2(25) NOT NULL,
    idProfesor VARCHAR2(25) NOT NULL
);

CREATE TABLE PREINSCRIPCIONES (
    idPreinscripcion VARCHAR2(25) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    estado VARCHAR2(10) NOT NULL,
    idEstudiante VARCHAR2(25) NOT NULL,
    idMateria VARCHAR2(25) NOT NULL
);

CREATE TABLE CANCELACIONES (
    idCancelacion VARCHAR2(25) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    motivo VARCHAR2(100),
    estado VARCHAR2(10) NOT NULL,
    asesoria CHAR(1) NOT NULL,
    idMateria VARCHAR2(25) NOT NULL,
    idNotificacion VARCHAR2(25) NOT NULL
);

CREATE TABLE AREAS (
    idArea VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35),
    idDepartamento VARCHAR2(25) NOT NULL,
    idCoordinador VARCHAR2(25) NOT NULL
);

CREATE TABLE MATERIAS (
    idMateria VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(100),
    creditos INT NOT NULL,
    horasTeoricas INT NOT NULL,
    horasPracticas INT NOT NULL,
    nivel VARCHAR2(10) NOT NULL,
    modalidad VARCHAR2(10) NOT NULL,
    idArea VARCHAR2(25) NOT NULL,
    idCentroDeEstudios VARCHAR2(25) NOT NULL,
    idNucleoDeFormacion VARCHAR2(25) NOT NULL,
    idEstudiante VARCHAR2(25) NOT NULL
);

CREATE TABLE NOTIFICACIONES (
    idNotificacion VARCHAR2(25) NOT NULL,
    mensaje VARCHAR2(100) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    estado VARCHAR2(10) NOT NULL
);

CREATE TABLE PREREQUISITOSMATERIAS (
    idMateria VARCHAR2(25) NOT NULL,
    idMateriaRequisito VARCHAR2(25) NOT NULL
);

CREATE TABLE CENTROSDEESTUDIOS (
    idCentroEstudios VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35),
    idDirector VARCHAR2(25) NOT NULL,
    idProgramaAcademico VARCHAR2(25) NOT NULL
);

CREATE TABLE NUCLEOSDEFORMACION (
    idNucleoFormacion VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35)
);

CREATE TABLE NOTAS (
    idNota VARCHAR2(25) NOT NULL,
    valor NUMBER(5,2) NOT NULL,
    fechaRegistro TIMESTAMP NOT NULL,
    tipoDeEvaluacion VARCHAR2(15) NOT NULL,
    idMateria VARCHAR2(25) NOT NULL,
    idEstudiante VARCHAR2(25) NOT NULL
);

CREATE TABLE PROGRAMASACADEMICOS (
    idPrograma VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35),
    duracionSemestres NUMBER(5,0) NOT NULL
);

CREATE TABLE PROGRAMASPORESTUDIANTES (
    idPrograma VARCHAR2(25) NOT NULL,
    idEstudiante VARCHAR2(25) NOT NULL,
    programa VARCHAR2(50) NOT NULL
);