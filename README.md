#  LiftSafe Database - Sistema de Inspección de Ascensores

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![Version](https://img.shields.io/badge/Version-1.0-green)

Base de datos completa para el sistema de gestión de inspecciones de ascensores, cumpliendo con la normativa **NTC 5926-1:2012**.

##  Tabla de Contenidos
- [ Estructura de la Base de Datos](#-estructura-de-la-base-de-datos)
- [ Cómo Usar Esta Base de Datos](#-cómo-usar-esta-base-de-datos)
- [ Datos de Prueba](#-datos-de-prueba)
- [ Consultas para el Reporte de Inspectores](#-consultas-para-el-reporte-de-inspectores)
- [ Requisitos](#-requisitos)
- [ Contacto](#-contacto)

##  Estructura de la Base de Datos

### Tablas Principales

| Tabla | Descripción |
|-------|-------------|
| `usuario` | Gestión de usuarios y roles (6 inspectores activos) |
| `rol` | Roles del sistema (Administrador, Inspector, Cliente, etc.) |
| `ascensor` | Registro de ascensores (20+ ascensores) |
| `solicitud` | Solicitudes de inspección |
| `programacion` | Programación de inspecciones |
| `inspeccion` | Ejecución de inspecciones |
| `checklist_categoria` | Categorías del checklist (20 categorías) |
| `checklist_item` | Ítems del checklist (20 ítems) |
| `detalle_checklist` | Resultados de inspección |
| `informe` | Informes generados |
| `fotografia` | Evidencias fotográficas |
| `auditoria` | Registro de actividades |

##  Cómo Usar Esta Base de Datos

### 1. Importar la Base de Datos

#### Opción 1: MySQL Workbench
```sql
-- Crear la base de datos
CREATE DATABASE liftsafe_db;
USE liftsafe_db;

-- Ejecutar el archivo SQL
-- Ve a File → Run SQL Script → Selecciona liftsafe_db_completa.sql
