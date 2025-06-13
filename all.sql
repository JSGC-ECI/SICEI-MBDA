-- Archivo de prueba para que GitHub reconozca PL/SQL como lenguaje principal

-- 1. Procedimiento de ejemplo
CREATE OR REPLACE PROCEDURE insertar_usuario (
    p_id IN VARCHAR2,
    p_nombre IN VARCHAR2
) IS
BEGIN
    INSERT INTO usuarios (idUsuario, nombre)
    VALUES (p_id, p_nombre);
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Error al insertar usuario');
END;
/

-- 2. Función de ejemplo
CREATE OR REPLACE FUNCTION contar_usuarios RETURN NUMBER IS
    total NUMBER;
BEGIN
    SELECT COUNT(*) INTO total FROM usuarios;
    RETURN total;
END;
/

-- 3. Trigger para establecer la fecha de creación
CREATE OR REPLACE TRIGGER trg_fecha_usuario
BEFORE INSERT ON usuarios
FOR EACH ROW
BEGIN
    :NEW.fechaRegistro := SYSDATE;
END;
/

-- 4. Bloque anónimo
BEGIN
    DBMS_OUTPUT.PUT_LINE('Ejecutando bloque PL/SQL');
END;
/

-- 5. Otro procedimiento con lógica condicional
CREATE OR REPLACE PROCEDURE actualizar_correo (
    p_id IN VARCHAR2,
    p_correo IN VARCHAR2
) IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM usuarios WHERE idUsuario = p_id;
    
    IF v_count = 1 THEN
        UPDATE usuarios SET correo = p_correo WHERE idUsuario = p_id;
    ELSE
        RAISE_APPLICATION_ERROR(-20002, 'Usuario no encontrado');
    END IF;
END;
/

-- Fin del archivo de prueba PL/SQL
