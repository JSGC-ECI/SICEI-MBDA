# 📘 Sistema de Gestión Educativa

> ⚠️ Estado del proyecto: **EN DESARROLLO**

[Archivos](https://pruebacorreoescuelaingeduco-my.sharepoint.com/:f:/g/personal/juan_guayazan-c_mail_escuelaing_edu_co/Etv4lqBIz-pJsi63lNPS-cAB3F7-KDzZXC_FTU3enMVlxw?e=YaTw2x)

LAURA CATALINA HERRERA CORREA y MARIA IRMA DIAZ ROZO
- [JUAN SEBASTIÁN GUAYAZÁN CLAVIJO](https://github.com/JuanSebastianGuayazanClavijoECI) → <juan.guayazan-c@mail.escuelaing.edu.co>
- ​​[MARIANELLA POLO PEÑA](https://github.com/Nella1414) → ​<marianella.polo-p@mail.escuelaing.edu.co>

Modelos y Bases de Datos (ISIS MBDA-2 y MBDA-201)     
Decanatura Ingeniería de Sistemas → Centro de Estudios de Ingeniería de Software   
Ingeniería de Sistemas   
Escuela Colombiana de Ingeniería Julio Garavito   
2025-1  

---

## 🎯 Objetivos

- 📚 Diseñar e implementar una base de datos relacional orientada a la gestión académica.
- 🧠 Desarrollar consultas SQL para:
  - Visualizar promedios.
  - Identificar materias inscritas.
  - Verificar cumplimiento de prerrequisitos.
- 🛠️ Proporcionar herramientas que ayuden al estudiante a tomar decisiones informadas sobre su carga académica.
- 📈 Visualizar el avance académico y jerarquía del plan de estudios.

---

## 📝 Descripción

Muchos estudiantes carecen de una forma clara y eficiente para visualizar su progreso académico a través del tiempo, lo que conlleva errores en la inscripción de materias y dificultades en la planificación a futuro.

Este sistema permite:

- Registrar materias, notas y niveles jerárquicos del plan de estudios.
- Consultar avances académicos y rendimiento.
- Facilitar la toma de decisiones académicas con base en datos estructurados.

---

## 🧩 Estructura del Proyecto

El repositorio está estructurado por carpetas que representan los distintos aspectos funcionales del sistema. Cada carpeta incluye su componente de persistencia (definición SQL) y pruebas asociadas.

|                                       | Persistencia                                                                                                                                                                                           | Pruebas                                                                                                              |
| ------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| **Estructura y Restricciones Declarativas** | - `Tablas` Creación de tablas<br>- `Atributos` Definición de restricciones para un único atributos (TIpos)<br>- `Primarias` Definición de claves primaria<br>- `Unicas` Definición de claves únicas<br>- `Foraneas` Definición de claves foraneas<br>- `XTablas` Eliminación de tablas<br> - `Consultas` Consulta SQL | - `PoblarOK` Ingreso de datos correctos. (Sin automatización)<br>- `PoblarNoOK` Intento de ingreso de datos erroneos protegidos por los tipos de datos, definición de nulidades y claves primarias, únicas y foraneas.<br>- `XPoblar` Eliminación de datos |
| **Restricciones y Automatización**          | - `Tuplas` Definición de las restricciones que implican más de un atributo<br>- `Acciones` Definición de las acciones de referencia<br>- `Disparadores` Definición de disparadores<br>- `XDisparadores` Eliminación de disparadores                                    | - `TuplasOK` Ingreso de datos correctos con respecto a la restricciones de tuplas <br>- `TuplasNoOK`Intento de ingreso de datos incorrectos con respecto a las restricciones de tupla <br>- `AccionesOK` Casos que prueban las acciones de referencia <br>- `DisparadoresOK` Ingreso de datos usando la automatización definida en los disparadores <br>- `DisparadoresNoOK` Intento de ingreso de datos erroneos protegidos por las restricciones de los disparadores.                                         |
| **Índices y Vistas**                        | - `Índices` Definición de índices<br>- `Vistas` Definición de vistas <br>- `XÍndicesVistas` Eliminación de vistas e índices                                                                  | - `IndicesVistasOK` Consultas que requieren los indices y las vistas definidos                                                                              |
| **Componentes**            | - `CRUDE` Especificación de los paquetes de componentes <br>- `CRUDI` Implementación de los paquetes <br>- `XCRUD` Eliminación de los paquetes                                                                                           | - `CRUDOK` Ingreso de datos correctos usando los procedimientos de los paquetes<br>- `CRUDNoOK` Intento de ingreso de datos erroneos protegidos por los procedimientos                                                                   |
| **Seguridad**                               | - `ActoresE` Especificación de los paquetes de actores <br>- `ActoresI` Implementación de dichos paquetes <br>- `Seguridad` Definición de roles y permisos <br>- `XSeguridad` Eliminación de paquetes de actores, roles y permisos.                                           | - `SeguridadOK` Ingreso de datos correctos usando los procedimientos de los paquetes                                                                              |
| **Pruebas**                                 | - `Pruebas` Historias complementarias                                                                                                                       |                                                                                                                                |


👉 Puedes consultar el [modelo entidad-relación](https://github.com/JuanSebastianGuayazanClavijoECI/SICEI-MBDA/blob/main/SIECI.asta) del sistema

---


## 🏛️ Organización

**ECINotes**  
Una iniciativa estudiantil orientada a digitalizar, organizar y analizar los resultados académicos para ayudar a los estudiantes en su vida universitaria.

---

## 📦 Instalación y Requisitos

### Clonar el repositorio
```bash
git clone https://github.com/JuanSebastianGuayazanClavijoECI/SICEI-MBDA.git
````

### Requisitos

* Oracle Database o entorno SQL compatible
* Oracle SQL Developer / DataGrip / DBeaver
* Scripts ejecutables en formato `.sql`

### Instalación

1. Crear una base de datos vacía.
2. Ejecutar los scripts en orden

---

## 📌 Licencia

Este proyecto fue desarrollado con fines académicos y de aprendizaje. Puedes usarlo, modificarlo o ampliarlo con propósitos educativos.
