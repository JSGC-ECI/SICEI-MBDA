# 📌 Sistema de Gestión Educativa

> ⚠️ Estado: ***EN DESARROLLO*** Versión académica

Sistema de información desarrollado para la gestión académica de estudiantes, materias y prerrequisitos en programas de pregrado. Permite visualizar el avance académico y validar inscripciones.

---

## 👥 Autores


LAURA CATALINA HERRERA CORREA y MARIA IRMA DIAZ ROZO
- [JUAN SEBASTIÁN GUAYAZÁN CLAVIJO](https://github.com/JuanSebastianGuayazanClavijoECI) → <juan.guayazan-c@mail.escuelaing.edu.co>
- ​​[MARIANELLA POLO PEÑA](https://github.com/Nella1414) → ​<marianella.polo-p@mail.escuelaing.edu.co>

Modelos y Bases de Datos (ISIS MBDA-2 y MBDA-201)     
Decanatura Ingeniería de Sistemas → Centro de Estudios de Ingeniería de Software   
Ingeniería de Sistemas e Ingeniería Estadística       
Escuela Colombiana de Ingeniería Julio Garavito   
2025-1 

---

## 🧠 Índice

- 📌 [Nombre del Proyecto](#-sistema-de-gestión-educativa)
- 👥 [Autores](#-autores)
- 🚀 [Características](#-características)
- ⚙️ [Tecnologías](#️-tecnologías)
- 📦 [Instalación y Requisitos](#-instalación-y-requisitos)
- ▶️ [Uso](#️-uso)
- 🧪 [Pruebas](#-pruebas)
- 📁 [Estructura del Proyecto](#-estructura-del-proyecto)
- 📌 [TODOs / Funcionalidades Futuras](#-todos--funcionalidades-futuras)
- 📊 [Estadísticas del Repositorio](#-estadísticas-del-repositorio)
- 📄 [Licencia](#-licencia)

---

## 🚀 Características

- ✅ Consulta del avance académico del estudiante.
- ✅ Registro de materias, áreas, núcleos de formación y notas.
- ✅ Verificación automática de prerrequisitos.

---

## ⚙️ Tecnologías

- Lenguaje(s): `SQL`, `XML`
- Herramientas: `Oracle SQL Developer`, `Astah`
- Dependencias: Ninguna externa

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

## ▶️ Uso

> \[!NOTE]
> Ejecutar primero los scripts de creación de tablas antes de correr las consultas.

> \[!WARNING]
> Si usas `RESTRICT` al revocar privilegios, asegúrate que no existan dependencias activas.

> \[!TIP]
> Las vistas materializadas pueden mejorar el rendimiento, pero deben actualizarse periódicamente.

> \[!IMPORTANT]
> El XML debe validarse contra su DTD antes de ejecutar consultas XQuery.

---

## 🧪 Pruebas

```SQL
-- Ejecutar  y/o adicionar scripts dispuestos en las carpetas Pruebas
```

---

## 📁 Estructura del Proyecto

```
📦 SICEI-MBDA          
┣ 📂 Estructura y Restricciones Declarativas          
┃ ┣ 📂 Persistencia
┃ ┃ ┣ 📜 Tablas.sql            # Creación de tablas
┃ ┃ ┣ 📜 Atributos.sql         # Definición de restricciones para un único atributos (TIpos)
┃ ┃ ┣ 📜 Primarias.sql         # Definición de claves primarias
┃ ┃ ┣ 📜 Unicas.sql            # Definición de claves únicas
┃ ┃ ┣ 📜 Foraneas.sql          # Definición de claves foraneas
┃ ┃ ┣ 📜 XTablas.sql           # Eliminación de tablas
┃ ┃ ┣ 📜 Consultas.sql         # Consulta SQL
┃ ┣ 📂 Pruebas
┃ ┃ ┣ 📜 PoblarOK.sql          # Ingreso de datos correctos. (Sin automatización)
┃ ┃ ┣ 📜 PoblarNoOK.sql        # Intento de ingreso de datos erroneos protegidos por los tipos de datos, definición de nulidades y claves primarias, únicas y foraneas.
┗ ┗ ┣ 📜 XPoblar.sql           # Eliminación de datos
┣ 📂 Restricciones y Automatización
┃ ┣ 📂 Persistencia
┃ ┃ ┣ 📜 Tuplas.sql            # Definición de las restricciones que implican más de un atributo
┃ ┃ ┣ 📜 Acciones.sql          # Definición de las acciones de referencia
┃ ┃ ┣ 📜 Disparadores.sql      # Definición de disparadores
┃ ┗ ┣ 📜 XDisparadores.sql     # Eliminación de disparadores
┃ ┣ 📂 Pruebas
┃ ┃ ┣ 📜 TuplasOK.sql          # Ingreso de datos correctos con respecto a la restricciones de tuplas
┃ ┃ ┣ 📜 TuplasNoOK.sql        # Intento de ingreso de datos incorrectos con respecto a las restricciones de tupla
┃ ┃ ┣ 📜 AccionesOK.sql        # Casos que prueban las acciones de referencia
┃ ┃ ┣ 📜 DisparadoresOK.sql    # Ingreso de datos usando la automatización definida en los disparadores
┗ ┗ ┣ 📜 DisparadoresNoO.sql   # Intento de ingreso de datos erroneos protegidos por las restricciones de los disparadores
┣ 📂 Índices y Vistas
┃ ┣ 📂 Persistencia
┃ ┃ ┣ 📜 Indices.sql          # Definición de índices
┃ ┃ ┣ 📜 Vistas.sql           # Definición de vistas
┃ ┃ ┣ 📜 XIndicesVistas.sql   # Eliminación de vistas e indices
┃ ┣ 📂 Pruebas
┗ ┗ ┣ 📜 IndicesVistasOK.sql  # Consultas que requieren los indices y las vistas definidos
┣ 📂 Componentes
┃ ┣ 📂 Persistencia
┃ ┃ ┣ 📜 CRUDE.sql            # Especificación de los paquetes de componentes
┃ ┃ ┣ 📜 CRUDI.sql            # Implementación de los paquetes 
┃ ┃ ┣ 📜 XCRUD.sql            # Eliminación de los paquetes
┃ ┣ 📂 Pruebas
┃ ┃ ┣ 📜 CRUDOK.sql           # Ingreso de datos correctos usando los procedimientos de los paquetes
┗ ┗ ┣ 📜 CRUDNoOK.sql         # Intento de ingreso de datos erroneos protegidos por los procedimientos
┣ 📂 Seguridad
┃ ┣ 📂 Persistencia.sql
┃ ┃ ┣ 📜 ActoresE.sql         # Especificación de los paquetes de actores
┃ ┃ ┣ 📜 ActoresI.sql         # Implementación de dichos paquetes
┃ ┃ ┣ 📜 Seguridad.sql        # Definición de roles y permisos
┃ ┗ ┣ 📜 XSeguridad.sql       # Eliminación de paquetes de actores, roles y permisos
┃ ┣ 📂 Pruebas
┗   ┣ 📜 SeguridadOK.sql      # Ingreso de datos correctos usando los procedimientos de los paquetes
┣ 📂 Pruebas
┃ ┣ 📂 Pruebas
┗   ┣ 📜 Pruebas.sql          # Historias complementarias
┣ 📜 SIECI.asta          
┣ 📜 README.md
```

👉 [Modelo Entidad-Relación](https://github.com/JuanSebastianGuayazanClavijoECI/SICEI-MBDA/blob/main/SIECI.asta)

---

## 📌 TODOs / Funcionalidades Futuras

* [ ] Implementar interfaz gráfica para consultas
* [ ] Agregar validación por semestre
* [ ] Automatizar matrículas y horarios

---

## 📊 Estadísticas del Repositorio

![Lenguaje principal](https://img.shields.io/github/languages/top/JSGC-ECI/SICEI-MBDA?style=flat-square)
![Tamaño del repositorio](https://img.shields.io/github/repo-size/JSGC-ECI/SICEI-MBDA?style=flat-square)
![Stars](https://img.shields.io/github/stars/JSGC-ECI/SICEI-MBDA?style=flat-square)
![Forks](https://img.shields.io/github/forks/JSGC-ECI/SICEI-MBDA?style=flat-square)
![Issues abiertas](https://img.shields.io/github/issues/JSGC-ECI/SICEI-MBDA?style=flat-square)

---

## 📄 Licencia

Este proyecto está licenciado bajo propósitos académicos y educativos. Puedes consultar el archivo [LICENSE](./LICENSE) para más información.

---
