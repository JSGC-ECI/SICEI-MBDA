CREATE OR REPLACE PACKAGE PKG_DIRECTOR
IS
    PROCEDURE adicionarCentro(p_idCentro IN NUMBER, p_nombreCentro IN VARCHAR2);
    PROCEDURE consultarCentro(p_idCentro IN NUMBER);
    PROCEDURE modificarCentro(p_idCentro IN NUMBER, p_nombreCentro IN VARCHAR2);
    PROCEDURE eliminarCentro(p_idCentro IN NUMBER);
    PROCEDURE actualizarMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2);
    PROCEDURE pnCancelacion(p_idCancelacion IN NUMBER);
    PROCEDURE imCancelacion(p_idCancelacion IN NUMBER, p_motivo IN VARCHAR2);
    PROCEDURE arCancelacion(p_idCancelacion IN NUMBER, p_estado IN VARCHAR2);
    PROCEDURE adicionarEstudiante(p_idEstudiante IN NUMBER, p_nombreEstudiante IN VARCHAR2);
    PROCEDURE consultarEstudiante(p_idEstudiante IN NUMBER);
    PROCEDURE modificarEstudiante(p_idEstudiante IN NUMBER, p_nombreEstudiante IN VARCHAR2);
    PROCEDURE eliminarEstudiante(p_idEstudiante IN NUMBER);
    PROCEDURE pnProfesor(p_idProfesor IN NUMBER);
    PROCEDURE imProfesor(p_idProfesor IN NUMBER, p_nombreProfesor IN VARCHAR2);
    PROCEDURE arProfesor(p_idProfesor IN NUMBER, p_estado IN VARCHAR2);
END PKG_DIRECTOR;
/

CREATE OR REPLACE PACKAGE PKG_PROFESOR
IS
    PROCEDURE pnCancelacion(p_idCancelacion IN NUMBER);
    PROCEDURE imCancelacion(p_idCancelacion IN NUMBER, p_motivo IN VARCHAR2);
    PROCEDURE arCancelacion(p_idCancelacion IN NUMBER, p_estado IN VARCHAR2);
    PROCEDURE adicionarNota(p_idNota IN NUMBER, p_valorNota IN NUMBER, p_idEstudiante IN NUMBER);
    PROCEDURE consultarNota(p_idNota IN NUMBER);
    PROCEDURE anNota(p_idNota IN NUMBER, p_motivo IN VARCHAR2);
    PROCEDURE imNota(p_idNota IN NUMBER, p_valorNota IN NUMBER);
END PKG_PROFESOR;
/

CREATE OR REPLACE PACKAGE PKG_VICERRECTORIA
IS
    PROCEDURE adicionarPrograma(p_idPrograma IN NUMBER, p_nombrePrograma IN VARCHAR2);
    PROCEDURE consultarPrograma(p_idPrograma IN NUMBER);
    PROCEDURE modificarPrograma(p_idPrograma IN NUMBER, p_nombrePrograma IN VARCHAR2);
    PROCEDURE eliminarPrograma(p_idPrograma IN NUMBER);
    PROCEDURE adicionarMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2);
    PROCEDURE consultarMateria(p_idMateria IN NUMBER);
    PROCEDURE modificarMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2);
    PROCEDURE eliminarMateria(p_idMateria IN NUMBER);
END PKG_VICERRECTORIA;
/

CREATE OR REPLACE PACKAGE PKG_ESTUDIANTE
IS
    PROCEDURE pnMateria(p_idMateria IN NUMBER);
    PROCEDURE imMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2);
    PROCEDURE arMateria(p_idMateria IN NUMBER, p_estado IN VARCHAR2);
    PROCEDURE pnCancelacion(p_idCancelacion IN NUMBER);
    PROCEDURE imCancelacion(p_idCancelacion IN NUMBER, p_motivo IN VARCHAR2);
    PROCEDURE arCancelacion(p_idCancelacion IN NUMBER, p_estado IN VARCHAR2);
    PROCEDURE pnCProfesor(p_idProfesor IN NUMBER);
    PROCEDURE imProfesor(p_idProfesor IN NUMBER, p_nombreProfesor IN VARCHAR2);
    PROCEDURE arProfesor(p_idProfesor IN NUMBER, p_estado IN VARCHAR2);
END PKG_ESTUDIANTE;
/
