# 📌 Sistema de Gestión Educativa

> ⚠️ Estado del proyecto: **En desarrollo** Versión académica

Sistema de información desarrollado para la gestión académica de estudiantes, materias y prerrequisitos en programas de pregrado. Permite visualizar el avance académico y validar inscripciones.

[Archivos](https://pruebacorreoescuelaingeduco-my.sharepoint.com/:f:/g/personal/juan_guayazan-c_mail_escuelaing_edu_co/Etv4lqBIz-pJsi63lNPS-cAB3F7-KDzZXC_FTU3enMVlxw?e=YaTw2x)

---

## 👥 Autores


LAURA CATALINA HERRERA CORREA y MARIA IRMA DIAZ ROZO
- [JUAN SEBASTIÁN GUAYAZÁN CLAVIJO](https://github.com/JuanSebastianGuayazanClavijoECI) → <juan.guayazan-c@mail.escuelaing.edu.co>
- ​​[MARIANELLA POLO PEÑA](https://github.com/Nella1414) → ​<marianella.polo-p@mail.escuelaing.edu.co>

Modelos y Bases de Datos (ISIS MBDA-2 y MBDA-201)     
Decanatura Ingeniería de Sistemas → Centro de Estudios de Ingeniería de Software   
Ingeniería de Sistemas   
Escuela Colombiana de Ingeniería Julio Garavito   
2025-1 

---

## 🧠 Índice

- [📌 Nombre del Proyecto](#-sicei-mbda-sistema-de-gestión-educativa)
- [🚀 Características](#🚀-características)
- [⚙️ Tecnologías](#⚙️-tecnologías)
- [📦 Instalación](#📦-instalación)
- [▶️ Uso](#▶️-uso)
- [🧪 Pruebas](#🧪-pruebas)
- [📁 Estructura del Proyecto](#📁-estructura-del-proyecto)
- [📌 TODOs / Funcionalidades Futuras](#📌-todos--funcionalidades-futuras)
- [👥 Autores](#👥-autores)
- [📄 Licencia](#📄-licencia)

---

## 🚀 Características

- ✅ Consulta del avance académico del estudiante.
- ✅ Registro de materias, áreas, núcleos de formación y notas.
- ✅ Verificación automática de prerrequisitos.
- ✅ Restricciones con `CHECK`, `REGEXP_LIKE`, claves foráneas y triggers.
- ✅ Compatible con Oracle SQL Developer y DataGrip.

---

## ⚙️ Tecnologías

- Lenguaje(s): `SQL`
- Herramientas: `Oracle SQL Developer`, `DataGrip`, `Astah`
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

Ejecutar en el orden dispuesto en Estructura del Proyecto

---

## 🧪 Pruebas

```bash
# Validar inserción correcta de datos
ejecutar PoblarOK.sql

# Validar restricciones automáticas
ejecutar PoblarNoOK.sql
```

---

## 📁 Estructura del Proyecto

```
📦 SICEI-MBDA          
┣ 📂 Estructura y Restricciones Declarativas          
  ┣ 📂 Persistencia
    ┣ 📜 Tablas.sql            # Creación de tablas
    ┣ 📜 Atributos.sql         # Definición de restricciones para un único atributos (TIpos)
    ┣ 📜 Primarias.sql         # Definición de claves primarias
    ┣ 📜 Unicas.sql            # Definición de claves únicas
    ┣ 📜 Foraneas.sql          # Definición de claves foraneas
    ┣ 📜 XTablas.sql           # Eliminación de tablas
    ┣ 📜 Consultas.sql         # Consulta SQL
  ┣ 📂 Pruebas
    ┣ 📜 PoblarOK.sql          # Ingreso de datos correctos. (Sin automatización)
    ┣ 📜 PoblarNoOK.sql        # Intento de ingreso de datos erroneos protegidos por los tipos de datos, definición de nulidades y claves primarias, únicas y foraneas.
    ┣ 📜 XPoblar.sql           # Eliminación de datos
┣ 📂 Restricciones y Automatización
  ┣ 📂 Persistencia
    ┣ 📜 Tuplas.sql            # Definición de las restricciones que implican más de un atributo
    ┣ 📜 Acciones.sql          # Definición de las acciones de referencia
    ┣ 📜 Disparadores.sql      # Definición de disparadores
    ┣ 📜 XDisparadores.sql     # Eliminación de disparadores
  ┣ 📂 Pruebas
    ┣ 📜 TuplasOK.sql          # Ingreso de datos correctos con respecto a la restricciones de tuplas
    ┣ 📜 TuplasNoOK.sql        # Intento de ingreso de datos incorrectos con respecto a las restricciones de tupla
    ┣ 📜 AccionesOK.sql        # Casos que prueban las acciones de referencia
    ┣ 📜 DisparadoresOK.sql    # Ingreso de datos usando la automatización definida en los disparadores
    ┣ 📜 DisparadoresNoO.sql   # Intento de ingreso de datos erroneos protegidos por las restricciones de los disparadores
┣ 📂 Índices y Vistas
  ┣ 📂 Persistencia
    ┣ 📜 Indices.sql          # Definición de índices
    ┣ 📜 Vistas.sql           # Definición de vistas
    ┣ 📜 XIndicesVistas.sql   # Eliminación de vistas e indices
  ┣ 📂 Pruebas
    ┣ 📜 IndicesVistasOK.sql  # Consultas que requieren los indices y las vistas definidos
┣ 📂 Componentes
  ┣ 📂 Persistencia
    ┣ 📜 CRUDE.sql            # Especificación de los paquetes de componentes
    ┣ 📜 CRUDI.sql            # Implementación de los paquetes 
    ┣ 📜 XCRUD.sql            # Eliminación de los paquetes
  ┣ 📂 Pruebas
    ┣ 📜 CRUDOK.sql           # Ingreso de datos correctos usando los procedimientos de los paquetes
    ┣ 📜 CRUDNoOK.sql         # Intento de ingreso de datos erroneos protegidos por los procedimientos
┣ 📂 Seguridad
  ┣ 📂 Persistencia.sql
    ┣ 📜 ActoresE.sql         # Especificación de los paquetes de actores
    ┣ 📜 ActoresI.sql         # Implementación de dichos paquetes
    ┣ 📜 Seguridad.sql        # Definición de roles y permisos
    ┣ 📜 XSeguridad.sql       # Eliminación de paquetes de actores, roles y permisos
  ┣ 📂 Pruebas
    ┣ 📜 SeguridadOK.sql      # Ingreso de datos correctos usando los procedimientos de los paquetes
┣ 📂 Pruebas
  ┣ 📂 Pruebas
    ┣ 📜 Pruebas.sql          # Historias complementarias
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

## 📄 Licencia

Este proyecto está licenciado bajo propósitos académicos y educativos. Puedes consultar el archivo [LICENSE](./LICENSE) para más información.

---
