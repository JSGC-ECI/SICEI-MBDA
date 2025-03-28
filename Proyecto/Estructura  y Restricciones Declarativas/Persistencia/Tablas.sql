CREATE TABLE USUARIO(
    idUsuario VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    correo VARCHAR2(50) NOT NULL,
    contraseña VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(10) NOT NULL,
    direccion VARCHAR2(100) NOT NULL,
    fechaRegistro TIMESTAMP NOT NULL
);

CREATE TABLE DIRECTOR(
    idUsuario VARCHAR2(25) NOT NULL,
    fechaNombramiento TIMESTAMP NOT NULL,
    nivelJerarquico VARCHAR2(10) NOT NULL,
    informesGenerados VARCHAR2(25) NOT NULL,
    recursosAsignados number(10,2) NOT NULL
);

CREATE TABLE COORDINADOR(
    idUsuario VARCHAR2(25) NOT NULL,
    proyectoACargo VARCHAR2(35) NOT NULL,
    fechaNombramiento TIMESTAMP NOT NULL,
    areaEspecializacion VARCHAR2(35) NOT NULL,
    recursosAsignados number(10,2) NOT NULL
);

CREATE TABLE PROFESOR(
    idUsuario VARCHAR2(25) NOT NULL,
    titulo VARCHAR2(50) NOT NULL,
    experienciaAnios INT NOT NULL,
    tipoContrato TCONTRATO NOT NULL
);

CREATE TABLE ESTUDIANTE (
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

CREATE TABLE DEPARTAMENTO (
    idDepartamento VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    idDirector VARCHAR2(25) NOT NULL
);

CREATE TABLE GRUPO (
    idGrupo VARCHAR2(25) NOT NULL,
    numero INT NOT NULL,
    idMateria VARCHAR2(25) NOT NULL,
    idProfesor VARCHAR2(25) NOT NULL
);

CREATE TABLE PREINSCRIPCION (
    idPreinscripcion VARCHAR2(25) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    estado VARCHAR2(10) NOT NULL,
    idEstudiante VARCHAR2(25) NOT NULL,
    idMateria VARCHAR2(25) NOT NULL
);

CREATE TABLE CANCELACION (
    idCancelacion VARCHAR2(25) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    motivo VARCHAR2(100),
    estado VARCHAR2(10) NOT NULL,
    asesoria BOOLEAN NOT NULL,
    idMateria VARCHAR2(25) NOT NULL,
    idNotificacion VARCHAR2(25) NOT NULL
);

CREATE TABLE AREA (
    idArea VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    idDepartamento VARCHAR2(25) NOT NULL,
    idCoordinador VARCHAR2(25) NOT NULL
);

CREATE TABLE MATERIA (
    idMateria VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    creditos INT NOT NULL,
    horasTeoricas INT NOT NULL,
    horasPracticas INT NOT NULL,
    nivel VARCHAR2(10) NOT NULL,
    promedio NUMBER(5,2) NOT NULL,
    idArea VARCHAR2(25) NOT NULL,
    idCentroDeEstudios VARCHAR2(25) NOT NULL,
    idNucleoDeFormacion VARCHAR2(25) NOT NULL
);

CREATE TABLE NOTIFICACION (
    idNotificacion VARCHAR2(25) NOT NULL,
    mensaje VARCHAR2(100) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    estado VARCHAR2(10) NOT NULL
);

CREATE TABLE CENTRODEESTUDIOS (
    idCentroEstudios VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    idDirector VARCHAR2(25) NOT NULL,
    idProgramaAcademico VARCHAR2(25) NOT NULL
);

CREATE TABLE NUCLEODEFORMACION (
    idNucleoFormacion VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35) NOT NULL
);

CREATE TABLE NOTA (
    idNota VARCHAR2(25) NOT NULL,
    valor NUMBER(5,2) NOT NULL,
    fechaRegistro TIMESTAMP NOT NULL,
    idMateria VARCHAR2(25) NOT NULL,
    idEstudiante VARCHAR2(25) NOT NULL
);

CREATE TABLE PROGRAMAACADEMICO (
    idPrograma VARCHAR2(25) NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    duracionSemestres NUMBER(5,0) NOT NULL
);

CREATE TABLE PROGRAMASPORESTUDIANTES (
    idPrograma VARCHAR2(25) NOT NULL,
    idEstudiante VARCHAR2(25) NOT NULL
);