CREATE DOMAIN TContrato AS VARCHAR(10) CONSTRAINT
CHECK (VALUE IN ('Planta', 'Catedra'));

CREATE DOMAIN TCorreo AS VARCHAR(100) CONSTRAINT
CHECK (
    VALUE LIKE '%@escuelaing.edu.co' OR
    VALUE LIKE '%@mail.escuelaing.edu.co'
);

CREATE DOMAIN TDireccion AS VARCHAR(255) CONSTRAINT
CHECK (VALUE ~* '^(Calle|Carrera|Avenida|Transversal|Diagonal|Circular).*');

CREATE DOMAIN TEstado AS VARCHAR(15) CONSTRAINT
CHECK (VALUE IN ('Enviado', 'No enviado'));

CREATE DOMAIN TEstadoA AS VARCHAR(15) CONSTRAINT
CHECK (VALUE IN ('En proceso', 'Rechazada', 'Aprobada'));

CREATE DOMAIN TEval AS VARCHAR(15) CONSTRAINT
CHECK (VALUE IN ('Parcial', 'Quiz', 'Actividad', 'Trabajo', 'Examen Final', 'Exposición'));

CREATE DOMAIN THora AS VARCHAR(20) CONSTRAINT
CHECK (VALUE IN (
    '07:00 - 08:30', '08:30 - 10:00', '10:00 - 11:30', '11:30 - 13:00', 
    '13:00 - 14:30', '14:30 - 16:00', '16:00 - 17:30', '17:30 - 19:00',
    '07:00 - 10:00', '08:30 - 11:30', '10:00 - 13:00', '11:30 - 14:30',
    '13:00 - 16:00', '14:30 - 17:30', '16:00 - 19:00'
));

CREATE DOMAIN TId AS VARCHAR(10) CONSTRAINT
CHECK (REGEXP_LIKE(VALUE, '^[A-Z]{4}[0-9]*$'));

CREATE DOMAIN TModalidad AS VARCHAR(10) CONSTRAINT
CHECK (VALUE IN ('Presencial', 'Virtual', 'Hibrida'));

CREATE DOMAIN TMoneda AS DECIMAL(10,2) CONSTRAINT
CHECK (VALUE > 0 AND VALUE < 100000000);

CREATE DOMAIN TNivel AS NUMBER(1,0) CONSTRAINT
CHECK (VALUE IN (1, 2, 3));
