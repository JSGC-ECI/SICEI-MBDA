-- RESTRICCIONES DE TUPLAS - SISTEMA DE GESTIÓN ACADÉMICA

-- Las horas prácticas y teóricas deben sumar al menos el número de créditos
ALTER TABLE MATERIAS
ADD CONSTRAINT ck_suma_horas_materias
CHECK (horasTeoricas + horasPracticas >= creditos);

-- La fecha de nombramiento de un director no puede ser anterior a la fecha de registro
ALTER TABLE DIRECTORES
ADD CONSTRAINT ck_fecha_nombramiento
CHECK (fechaNombramiento >= fechaRegistro);

-- La fecha de ingreso de un estudiante no puede ser anterior a la fecha de registro
ALTER TABLE ESTUDIANTES
ADD CONSTRAINT ck_fecha_ingreso
CHECK (fechaIngreso >= fechaRegistro);

-- Un profesor con contrato de cátedra no puede tener más de 5 años de experiencia
ALTER TABLE PROFESORES
ADD CONSTRAINT ck_experiencia_tipo_contrato
CHECK (NOT (tipoContrato = 'Catedra' AND experienciaAnos > 5));

-- Si una cancelación requiere asesoría, debe tener un motivo registrado
ALTER TABLE CANCELACIONES
ADD CONSTRAINT ck_asesoria_motivo
CHECK (asesoria = 'N' OR (asesoria = 'S' AND motivo IS NOT NULL));

-- El nivel de una materia debe ser coherente con los créditos
-- Las materias de nivel superior (>= 7) deben tener al menos 3 créditos
ALTER TABLE MATERIAS
ADD CONSTRAINT ck_nivel_creditos
CHECK (nivel < 7 OR creditos >= 3);

-- En un grupo el cupo máximo debe ser proporcional a las horas de clase
-- Asumiendo que el horario tiene formato "hh:mm - hh:mm", podemos calcular la duración
-- y establecer que el cupo máximo no debe exceder 25 estudiantes por hora
ALTER TABLE GRUPOS
ADD CONSTRAINT ck_cupo_duracion
CHECK (
  (horario IN ('07:00 - 08:30', '08:30 - 10:00', '10:00 - 11:30', '11:30 - 13:00',
              '13:00 - 14:30', '14:30 - 16:00', '16:00 - 17:30', '17:30 - 19:00')
   AND cupoMaximo <= 40) -- 1.5 horas (~ 40 estudiantes máximo)
  OR
  (horario IN ('07:00 - 10:00', '08:30 - 11:30', '10:00 - 13:00', '11:30 - 14:30',
              '13:00 - 16:00', '14:30 - 17:30', '16:00 - 19:00')
   AND cupoMaximo <= 70) -- 3 horas (~ 70 estudiantes máximo)
  OR
  (horario NOT IN ('07:00 - 08:30', '08:30 - 10:00', '10:00 - 11:30', '11:30 - 13:00',
                  '13:00 - 14:30', '14:30 - 16:00', '16:00 - 17:30', '17:30 - 19:00',
                  '07:00 - 10:00', '08:30 - 11:30', '10:00 - 13:00', '11:30 - 14:30',
                  '13:00 - 16:00', '14:30 - 17:30', '16:00 - 19:00')
   AND cupoMaximo <= 30) -- Default para otros casos
);

-- Una materia no puede ser prerrequisito de sí misma
ALTER TABLE PREREQUISITOSMATERIAS
ADD CONSTRAINT ck_no_auto_requisito
CHECK (idMateria != idMateriaRequisito);

-- La cantidad de créditos debe ser coherente con las horas totales (teóricas + prácticas)
ALTER TABLE MATERIAS
ADD CONSTRAINT ck_creditos_horas_totales
CHECK (creditos * 2 <= horasTeoricas + horasPracticas);

-- Las materias con modalidad "Virtual" deben tener más horas teóricas que prácticas
ALTER TABLE MATERIAS
ADD CONSTRAINT ck_modalidad_horas
CHECK (modalidad != 'Virtual' OR horasTeoricas > horasPracticas);

-- El presupuesto asignado a un director debe ser proporcional a su nivel jerárquico
ALTER TABLE DIRECTORES
ADD CONSTRAINT ck_presupuesto_nivel
CHECK (
  (nivelJerarquico = '1' AND presupuestoAsignados <= 100000)
  OR
  (nivelJerarquico = '2' AND presupuestoAsignados <= 500000)
  OR
  (nivelJerarquico = '3' AND presupuestoAsignados <= 1000000)
  OR
  (nivelJerarquico NOT IN ('1', '2', '3') AND presupuestoAsignados <= 50000)
);