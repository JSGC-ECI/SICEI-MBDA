-- Poblar CENTROSDEESTUDIOS
INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT001', 'Centro de Estudios de Vías y Transporte', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT002', 'Centro de Estudios Ambientales', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT003', 'Centro de Estudios Geotécnicos', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT004', 'Hidráulicos', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT005', 'en Estructuras, Materiales y Construcción', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT006', 'en Gestión y Optimización de Operaciones', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT007', 'en Sistemas de Gestión', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT008', 'en Gestión de Tecnología e Innovación', 'DIR001', 'PROG001');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT009', 'Oikonomía', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT010', 'en Ciencias Exactas', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT011', 'en Gerencia y Transformación Empresarial', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT012', 'Unidad de Proyectos', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT013', 'en Biomédica y Biotecnología', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT014', 'en Energía', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT015', 'en Electrónica', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT016', 'en Diseño de Elementos y Sistemas Mecánicos', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT017', 'en Procesos para Fabricación de Elementos Mecánicos', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT018', 'en Sistemas Térmicos y Mecánicos', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT019', 'en Gestión y Arquitectura de Datos, Tecnología y Ciberseguridad', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT020', 'en Ingeniería de Software y Ciencias de la Computación', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT021', 'en datos tecnologia y sociedad', '', '');

INSERT INTO CENTROSDEESTUDIOS (idCentroEstudios, nombre, idDirector, idProgramaAcademico)
VALUES ('CENT022', 'en Fundamentos de la Computación', '', '');

-- PROGRAMASACADEMICOS
INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Civil');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Ambiental');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Estadística');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Eléctrica');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería de Sistemas');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Industrial');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Electrónica');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Economía');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Administración de Empresas');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Matemáticas');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Mecánica');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería Biomédica');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería en Biotecnología');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería de Inteligencia Artificial');

INSERT INTO PROGRAMASACADEMICOS (idPrograma, nombre)
VALUES ('', 'Ingeniería de Ciberseguridad');

-- DIRECTORES
INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Maritza Cecilia Villamizar Ropero', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Yuly Andrea Sanchez Londoño', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Lina Ximena Garzon Avila', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Hector Alfonso Rodriguez Diaz', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Nancy Torres Castellanos', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Hugo Rene Sarmiento Espinosa', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Luz Angelica Rodriguez Bello', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Adriana Esguerra Arce', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Hector Jaime Martinez Covaleda', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Yesid Esteban Clavijo Penagos', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Juan Carlos Illera Correal', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Martha Edith Rolon Ramirez', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Luis Eduardo Rodriguez Cheu', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Hugo Ivan Forero Bernal', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Alexander Perez Ruiz', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Nubia Edith Cardenas Zabala', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Carlos Andres Perez Tristancho', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Juan Antonio Acosta Gempeler', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Claudia Patricia Castañeda Bermudez', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Rodrigo Humberto Gualtero Martinez', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

INSERT INTO DIRECTORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaNombramiento, nivelJerarquico, informesGenerados, presupuestoAsignados)
VALUES ('DIR001', 'Wilmer Edicson Garzon Alfonso', '', '', '', '', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), '', '', 0);

-- DEPARTAMENTOS
INSERT INTO DEPARTAMENTOS (idDepartamento, nombre, idDirector)
VALUES ('HUMA', 'Humanidades e Idiomas', '');

INSERT INTO DEPARTAMENTOS (idDepartamento, nombre, idDirector)
VALUES ('FISI', 'Ciencias Naturales', '');

INSERT INTO DEPARTAMENTOS (idDepartamento, nombre, idDirector)
VALUES ('MATE', 'Matemáticas', '');

-- AREAS
INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Comunicación en español', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Ciudadanía', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Comunicación en inglés', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Formación Humanista', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Geometria', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Algebra lineal', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Análisis y calculo', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Estadistica y probabilidad', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Fisica', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Quimica', '', '');

INSERT INTO AREAS (idArea, nombre, idDepartamento, idDirector)
VALUES ('AREA001', 'Expresion grafica', '', '');

-- NUCLEOSDEFORMACION
INSERT INTO NUCLEOSDEFORMACION (idNucleoFormacion, nombre)
VALUES ('NUCF001', 'Común institucional');

INSERT INTO NUCLEOSDEFORMACION (idNucleoFormacion, nombre)
VALUES ('NUCF002', 'Común por campo del conocimiento');

INSERT INTO NUCLEOSDEFORMACION (idNucleoFormacion, nombre)
VALUES ('NUCF003', 'Básico profesional');

INSERT INTO NUCLEOSDEFORMACION (idNucleoFormacion, nombre)
VALUES ('NUCF004', 'Profesional específica');

-- Poblar MATERIAS
INSERT INTO MATERIAS (idMateria, nombre, creditos, horasTeoricas, horasPracticas, nivel, modalidad, idArea, idCentroDeEstudios, idNucleoDeFormacion, idEstudiante)
VALUES ('', '', 0, 0, 0, '', '', '', '', '', '');

-- Poblar ESTUDIANTES
INSERT INTO ESTUDIANTES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaIngreso, documentoIdentidad, idCancelacion, estadoAcademico)
VALUES  ('1000093986', 'Marianella Polo Peña', 'marianella.polo-p@mail.escuelaing.edu.co', 'password123', '1029220411', 'Calle 123', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), '', '', '');

INSERT INTO ESTUDIANTES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, fechaIngreso, documentoIdentidad, idCancelacion, estadoAcademico)
VALUES  ('1000096208', 'Juan Sebastián Guayazán Clavijo', 'juan.guayazan-c@mail.escuelaing.edu.co', 'password321', '1025523810', 'Calle 321', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), '', '', '');

-- NOTAS
INSERT INTO NOTAS (idNota, tipoDeEvaluacion, valor, idMateria, idEstudiante)
VALUES ('NOTA001', '', 0, '', '');

-- Poblar CANCELACIONES
INSERT INTO CANCELACIONES (idCancelacion, fecha, motivo, estado, asesoria, idMateria, idNotificacion)
VALUES ('CANC001', TO_DATE('2023-01-15', 'YYYY-MM-DD'), '', '', '', '', '');

-- MATERIASPORESTUDIANTE
INSERT INTO MATERIASPORESTUDIANTE (idMateria, idEstudiante)
VALUES ('', '');

--  PREREQUISITOSMATERIAS
INSERT INTO PREREQUISITOSMATERIAS (idMateria, idMateriaRequisito)
VALUES ('', '');

-- NOTIFICACIONES con tres registros
INSERT INTO NOTIFICACIONES (idNotificacion, mensaje, fecha, estado)
VALUES ('NOTI001', '', TO_DATE('2023-01-10', 'YYYY-MM-DD'), '');

-- PROGRAMASPORESTUDIANTES
INSERT INTO PROGRAMASPORESTUDIANTES (idPrograma, idEstudiante)
VALUES ('', '');

-- Poblar PROFESORES con un registro válido
INSERT INTO PROFESORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, titulo, experienciaAnos, tipoContrato)
VALUES ('', 'Daniela Sepulveda Alzate', '', 'securePass123', '', 'Calle 45 #10-20', TO_DATE('2023-01-01', 'YYYY-MM-DD'), '', 0, '');

INSERT INTO PROFESORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, titulo, experienciaAnos, tipoContrato)
VALUES ('', 'Laura Catalina Herrera Correa', '', 'securePass123', '', 'Calle 45 #10-20', TO_DATE('2023-01-01', 'YYYY-MM-DD'), '', 0, '');

INSERT INTO PROFESORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, titulo, experienciaAnos, tipoContrato)
VALUES ('', 'Orlando Antonio Gelves', '', 'securePass123', '', 'Calle 45 #10-20', TO_DATE('2023-01-01', 'YYYY-MM-DD'), '', 0, '');

INSERT INTO PROFESORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, titulo, experienciaAnos, tipoContrato)
VALUES ('', 'Carlos Andres Medina Rivas', '', 'securePass123', '', 'Calle 45 #10-20', TO_DATE('2023-01-01', 'YYYY-MM-DD'), '', 0, '');

INSERT INTO PROFESORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, titulo, experienciaAnos, tipoContrato)
VALUES ('', 'Alejandra Goenaga', '', 'securePass123', '', 'Calle 45 #10-20', TO_DATE('2023-01-01', 'YYYY-MM-DD'), '', 0, '');

INSERT INTO PROFESORES (idUsuario, nombre, correo, contrasena, telefono, direccion, fechaRegistro, titulo, experienciaAnos, tipoContrato)
VALUES ('', 'María Irma Díaz RozoMaría Irma Díaz Rozo', '', 'securePass123', '', 'Calle 45 #10-20', TO_DATE('2023-01-01', 'YYYY-MM-DD'), '', 0, '');