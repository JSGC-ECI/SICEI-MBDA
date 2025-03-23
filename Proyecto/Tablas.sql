CREATE TABLE USUARIO(
    idUsuario TId NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    correo TCORREO NOT NULL,
    contraseña VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(10) NOT NULL,
    direccion TDIRECCION NOT NULL,
    fechaRegistro TIMESTAMP NOT NULL
);

CREATE TABLE DIRECTOR(
    idUsuario TId NOT NULL,
    fechaNombramiento TIMESTAMP NOT NULL,
    nivelJerarquico TNIVEL NOT NULL,
    informesGenerados TID NOT NULL,
    recursosAsignados TMONEDA NOT NULL
);

CREATE TABLE COORDINADOR(
    idUsuario TId NOT NULL,
    proyectoACargo VARCHAR2(35) NOT NULL,
    fechaNombramiento TIMESTAMP NOT NULL,
    areaEspecializacion VARCHAR2(35) NOT NULL,
    recursosAsignados TMONEDA NOT NULL
);

CREATE TABLE PROFESOR(
    idUsuario TId NOT NULL,
    titulo VARCHAR2(50) NOT NULL,
    experienciaAnios INT NOT NULL,
    tipoContrato TCONTRATO NOT NULL
);

CREATE TABLE ESTUDIANTE (
    idUsuario TId NOT NULL,
    fechaIngreso TIMESTAMP NOT NULL,
    documentoIdentidad VARCHAR2(12) NOT NULL,
    idCancelacion TID
);

CREATE TABLE MATERIASPORESTUDIANTE (
    idEstudiante TId NOT NULL,
    idMateria TID NOT NULL,
    materia VARCHAR2(100) NOT NULL
);

CREATE TABLE DEPARTAMENTO (
    idDepartamento TId NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    idDirector TID NOT NULL
);

CREATE TABLE GRUPO (
    idGrupo TId NOT NULL,
    numero INT NOT NULL,
    idMateria TID NOT NULL,
    idProfesor TID NOT NULL
);

CREATE TABLE PREINSCRIPCION (
    idPreinscripcion TId NOT NULL,
    fecha TIMESTAMP NOT NULL,
    estado TESTADO NOT NULL,
    idEstudiante TID NOT NULL,
    idMateria TID NOT NULL
);

CREATE TABLE CANCELACION (
    idCancelacion TId NOT NULL,
    fecha TIMESTAMP NOT NULL,
    motivo VARCHAR2(100),
    estado TESTADO NOT NULL,
    asesoria BOOL NOT NULL,
    idMateria TID NOT NULL,
    idNotificacion TID NOT NULL
);

CREATE TABLE AREA (
    idArea TId NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    idDepartamento TID NOT NULL,
    idCoordinador TID NOT NULL
);

CREATE TABLE MATERIA (
    idMateria TId NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    creditos INT NOT NULL,
    horasTeoricas INT NOT NULL,
    horasPracticas INT NOT NULL,
    nivel TNIVEL NOT NULL,
    promedio NUMBER(5,2) NOT NULL,
    idArea TID NOT NULL,
    idCentroDeEstudios TID NOT NULL,
    idNucleoDeFormacion TID NOT NULL
);

CREATE TABLE NOTIFICACION (
    idNotificacion TId NOT NULL,
    mensaje VARCHAR2(100) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    estado TESTADO NOT NULL
);

CREATE TABLE CENTRODEESTUDIOS (
    idCentroEstudios TId NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    idDirector TID NOT NULL,
    idProgramaAcademico TID NOT NULL
);

CREATE TABLE NUCLEODEFORMACION (
    idNucleoFormacion TId NOT NULL,
    nombre VARCHAR2(35) NOT NULL
);

CREATE TABLE NOTA (
    idNota TId NOT NULL,
    valor NUMBER(5,2) NOT NULL,
    fechaRegistro TIMESTAMP NOT NULL,
    idMateria TID NOT NULL,
    idEstudiante TID NOT NULL
);

CREATE TABLE PROGRAMAACADEMICO (
    idPrograma TId NOT NULL,
    nombre VARCHAR2(35) NOT NULL,
    duracionSemestres NUMBER(5,0) NOT NULL
);

CREATE TABLE PROGRAMASPORESTUDIANTES (
    idPrograma TId NOT NULL,
    idEstudiante TId NOT NULL
);