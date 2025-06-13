-- CICLO 1

-- Consultar profesores por materias

SELECT m.nombre, m.idMateria, p.nombre
FROM materias m
         JOIN grupos g ON m.idMateria = g.idMateria
         JOIN profesores p ON g.idProfesor = p.idUsuario;

-- Consultar materias que tienen menos estudiantes

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

-- Consultar materia de la cual se ha realizado más solicitud de cancelaciones

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


-- Fragmento PL/SQL que carga y consulta XML académico usando XMLTYPE, XMLQuery y dbms_xmlgen

DECLARE
    v_xml XMLTYPE := XMLTYPE(q'~<?xml version="1.0" encoding="UTF-8"?>
<sistema_academico>
  <directores>
    <director id_usuario="DIRE1000000563">
      <nombre>Nancy Torres Castellanos</nombre>
      <correo>nancy.torres@escuelaing.edu.co</correo>
      <telefono>3158765432</telefono>
      <direccion>Carrera 106 #35-48</direccion>
      <fecha_registro>2020-04-20</fecha_registro>
      <fecha_nombramiento>2022-06-15</fecha_nombramiento>
      <nivel_jerarquico>1</nivel_jerarquico>
      <informes_generados>Informe de gestión académica 2024</informes_generados>
      <presupuesto>95000.00</presupuesto>
    </director>
  </directores>
</sistema_academico>~');

    v_result CLOB;
BEGIN
    -- Mostrar parte del contenido del XML
    DBMS_OUTPUT.PUT_LINE('XML cargado correctamente.');

    -- Ejemplo de consulta XPath desde el XML en PL/SQL
    SELECT XMLQuery('/sistema_academico/directores/director/nombre/text()'
                    PASSING v_xml
                    RETURNING CONTENT)
    INTO v_result
    FROM dual;

    DBMS_OUTPUT.PUT_LINE('Nombre del director: ' || v_result);
END;
/
