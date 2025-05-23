CREATE OR REPLACE PACKAGE BODY PKG_DIRECTOR
IS
    PROCEDURE adicionarCentro(p_idCentro IN NUMBER, p_nombreCentro IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para adicionar un centro
        NULL;
    END adicionarCentro;

    PROCEDURE consultarCentro(p_idCentro IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para consultar un centro
        NULL;
    END consultarCentro;

    PROCEDURE modificarCentro(p_idCentro IN NUMBER, p_nombreCentro IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para modificar un centro
        NULL;
    END modificarCentro;

    PROCEDURE eliminarCentro(p_idCentro IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para eliminar un centro
        NULL;
    END eliminarCentro;

    PROCEDURE actualizarMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para actualizar una materia
        NULL;
    END actualizarMateria;

    PROCEDURE pnCancelacion(p_idCancelacion IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para pnCancelacion
        NULL;
    END pnCancelacion;

    PROCEDURE imCancelacion(p_idCancelacion IN NUMBER, p_motivo IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para imCancelacion
        NULL;
    END imCancelacion;

    PROCEDURE arCancelacion(p_idCancelacion IN NUMBER, p_estado IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para arCancelacion
        NULL;
    END arCancelacion;

    PROCEDURE adicionarEstudiante(p_idEstudiante IN NUMBER, p_nombreEstudiante IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para adicionar un estudiante
        NULL;
    END adicionarEstudiante;

    PROCEDURE consultarEstudiante(p_idEstudiante IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para consultar un estudiante
        NULL;
    END consultarEstudiante;

    PROCEDURE modificarEstudiante(p_idEstudiante IN NUMBER, p_nombreEstudiante IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para modificar un estudiante
        NULL;
    END modificarEstudiante;

    PROCEDURE eliminarEstudiante(p_idEstudiante IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para eliminar un estudiante
        NULL;
    END eliminarEstudiante;

    PROCEDURE pnProfesor(p_idProfesor IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para pnProfesor
        NULL;
    END pnProfesor;

    PROCEDURE imProfesor(p_idProfesor IN NUMBER, p_nombreProfesor IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para imProfesor
        NULL;
    END imProfesor;

    PROCEDURE arProfesor(p_idProfesor IN NUMBER, p_estado IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para arProfesor
        NULL;
    END arProfesor;

END PKG_DIRECTOR;
/
CREATE OR REPLACE PACKAGE BODY PKG_PROFESOR
IS
    PROCEDURE pnCancelacion(p_idCancelacion IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para pnCancelacion
        NULL;
    END pnCancelacion;

    PROCEDURE imCancelacion(p_idCancelacion IN NUMBER, p_motivo IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para imCancelacion
        NULL;
    END imCancelacion;

    PROCEDURE arCancelacion(p_idCancelacion IN NUMBER, p_estado IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para arCancelacion
        NULL;
    END arCancelacion;

    PROCEDURE adicionarNota(p_idNota IN NUMBER, p_valorNota IN NUMBER, p_idEstudiante IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para adicionar una nota
        NULL;
    END adicionarNota;

    PROCEDURE consultarNota(p_idNota IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para consultar una nota
        NULL;
    END consultarNota;

    PROCEDURE anNota(p_idNota IN NUMBER, p_motivo IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para anular una nota
        NULL;
    END anNota;

    PROCEDURE imNota(p_idNota IN NUMBER, p_valorNota IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para modificar una nota
        NULL;
    END imNota;

END PKG_PROFESOR;
/

CREATE OR REPLACE PACKAGE BODY PKG_ESTUDIANTE
IS
    PROCEDURE pnMateria(p_idMateria IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para pnMateria
        NULL;
    END pnMateria;

    PROCEDURE imMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para imMateria
        NULL;
    END imMateria;

    PROCEDURE arMateria(p_idMateria IN NUMBER, p_estado IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para arMateria
        NULL;
    END arMateria;

    PROCEDURE pnCancelacion(p_idCancelacion IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para pnCancelacion
        NULL;
    END pnCancelacion;

    PROCEDURE imCancelacion(p_idCancelacion IN NUMBER, p_motivo IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para imCancelacion
        NULL;
    END imCancelacion;

    PROCEDURE arCancelacion(p_idCancelacion IN NUMBER, p_estado IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para arCancelacion
        NULL;
    END arCancelacion;

    PROCEDURE pnCProfesor(p_idProfesor IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para pnCProfesor
        NULL;
    END pnCProfesor;

    PROCEDURE imProfesor(p_idProfesor IN NUMBER, p_nombreProfesor IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para imProfesor
        NULL;
    END imProfesor;

    PROCEDURE arProfesor(p_idProfesor IN NUMBER, p_estado IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para arProfesor
        NULL;
    END arProfesor;

END PKG_ESTUDIANTE;
/

CREATE OR REPLACE PACKAGE BODY PKG_VICERRECTORIA
IS
    PROCEDURE adicionarPrograma(p_idPrograma IN NUMBER, p_nombrePrograma IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para adicionar un programa
        NULL;
    END adicionarPrograma;

    PROCEDURE consultarPrograma(p_idPrograma IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para consultar un programa
        NULL;
    END consultarPrograma;

    PROCEDURE modificarPrograma(p_idPrograma IN NUMBER, p_nombrePrograma IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para modificar un programa
        NULL;
    END modificarPrograma;

    PROCEDURE eliminarPrograma(p_idPrograma IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para eliminar un programa
        NULL;
    END eliminarPrograma;

    PROCEDURE adicionarMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para adicionar una materia
        NULL;
    END adicionarMateria;

    PROCEDURE consultarMateria(p_idMateria IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para consultar una materia
        NULL;
    END consultarMateria;

    PROCEDURE modificarMateria(p_idMateria IN NUMBER, p_nombreMateria IN VARCHAR2)
    IS
    BEGIN
        -- Implementación de la lógica para modificar una materia
        NULL;
    END modificarMateria;

    PROCEDURE eliminarMateria(p_idMateria IN NUMBER)
    IS
    BEGIN
        -- Implementación de la lógica para eliminar una materia
        NULL;
    END eliminarMateria;

END PKG_VICERRECTORIA;
/


