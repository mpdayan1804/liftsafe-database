-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2026 a las 11:51:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `liftsafe_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ascensor`
--

CREATE TABLE `ascensor` (
  `id_ascensor` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL COMMENT 'Usuario con rol Cliente',
  `codigo_interno` varchar(50) NOT NULL COMMENT 'Código único de identificación',
  `marca` varchar(80) NOT NULL,
  `modelo` varchar(80) NOT NULL,
  `numero_serie` varchar(80) NOT NULL,
  `tipo_ascensor` varchar(50) NOT NULL COMMENT 'Pasajeros, Carga, Montacamillas, etc.',
  `capacidad_kg` int(11) NOT NULL,
  `capacidad_personas` int(11) DEFAULT NULL,
  `numero_pisos` int(11) NOT NULL,
  `velocidad_ms` double DEFAULT NULL,
  `ubicacion_exacta` varchar(200) NOT NULL COMMENT 'Torre, piso, sector',
  `direccion_completa` varchar(250) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `fecha_instalacion` date DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `ultima_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ascensor`
--

INSERT INTO `ascensor` (`id_ascensor`, `id_cliente`, `codigo_interno`, `marca`, `modelo`, `numero_serie`, `tipo_ascensor`, `capacidad_kg`, `capacidad_personas`, `numero_pisos`, `velocidad_ms`, `ubicacion_exacta`, `direccion_completa`, `ciudad`, `estado`, `fecha_instalacion`, `fecha_registro`, `ultima_modificacion`) VALUES
(1, 11, 'ASC-001', 'Schindler', '5500', 'OT-2020-001', 'Electrico', 750, 10, 12, 2, 'Torre A - Lobby', 'Calle 123 #45-67', 'Bogota', 'Activo', '2022-06-15', '2026-03-08 20:49:47', '2026-03-27 02:19:11'),
(2, 11, 'ASC-002', 'Schindler', '3300 MRL', 'SC-2019-002', 'Pasajeros', 630, 8, 10, 1, 'Torre B - Costado norte', 'Calle 120 #15-88', 'Bogotá', 'Activo', '2019-07-20', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(3, 12, 'ASC-003', 'KONE', 'MonoSpace', 'KN-2021-003', 'Pasajeros', 1000, 13, 15, 1.75, 'Edificio principal lobby', 'Carrera 11 #93-40', 'Bogotá', 'Activo', '2021-01-10', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(4, 12, 'ASC-004', 'ThyssenKrupp', 'Evolution', 'TK-2018-004', 'Carga', 2000, 0, 8, 0.5, 'Sótano - zona de cargue', 'Carrera 11 #93-40', 'Bogotá', 'Activo', '2018-11-05', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(5, 13, 'ASC-005', 'Mitsubishi', 'NEXIEZ-MRL', 'MT-2022-005', 'Pasajeros', 800, 11, 14, 1.6, 'Bloque 1 - acceso principal', 'Calle 85 #13-22', 'Bogotá', 'Activo', '2022-04-18', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(6, 13, 'ASC-006', 'Otis', 'GeN2-Comfort', 'OT-2020-006', 'Pasajeros', 630, 8, 14, 1, 'Bloque 2 - ala sur', 'Calle 85 #13-22', 'Bogotá', 'Inactivo', '2020-09-30', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(7, 14, 'ASC-007', 'Schindler', '5500', 'SC-2021-007', 'Pasajeros', 1000, 13, 20, 2, 'Torre Norte - núcleo', 'Carrera 9 #150-60', 'Bogotá', 'Activo', '2021-06-14', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(8, 14, 'ASC-008', 'KONE', 'EcoSpace', 'KN-2019-008', 'Pasajeros', 750, 10, 20, 1.75, 'Torre Sur - núcleo', 'Carrera 9 #150-60', 'Bogotá', 'Activo', '2019-03-22', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(9, 15, 'ASC-009', 'Fujitec', 'GLVF-II', 'FJ-2020-009', 'Pasajeros', 800, 11, 16, 1.5, 'Bloque residencial A', 'Calle 170 #8-40', 'Bogotá', 'Activo', '2020-12-01', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(10, 15, 'ASC-010', 'Hyundai', 'NEXEN-MRL', 'HY-2018-010', 'Montacamillas', 300, 4, 8, 0.4, 'Zona médica - camillas', 'Calle 170 #8-40', 'Bogotá', 'Activo', '2018-05-17', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(11, 16, 'ASC-011', 'Otis', 'Gen2-Life', 'OT-2023-011', 'Pasajeros', 630, 8, 12, 1, 'Lobby principal', 'Carrera 14 #60-55', 'Bogotá', 'Activo', '2023-02-28', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(12, 16, 'ASC-012', 'ThyssenKrupp', 'Synergy', 'TK-2021-012', 'Carga', 3000, 0, 6, 0.3, 'Zona comercial - cargue', 'Carrera 14 #60-55', 'Bogotá', 'Activo', '2021-08-10', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(13, 17, 'ASC-013', 'KONE', 'TranSys', 'KN-2022-013', 'Pasajeros', 1000, 13, 18, 1.75, 'Torre Río - acceso este', 'Calle 110 #20-30', 'Bogotá', 'Activo', '2022-07-05', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(14, 17, 'ASC-014', 'Schindler', '6300', 'SC-2020-014', 'Pasajeros', 800, 11, 18, 1.6, 'Torre Río - acceso oeste', 'Calle 110 #20-30', 'Bogotá', 'Activo', '2020-11-19', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(15, 18, 'ASC-015', 'Mitsubishi', 'ELENESSA', 'MT-2019-015', 'Pasajeros', 750, 10, 10, 1.5, 'Conjunto - bloque central', 'Carrera 70 #45-20', 'Bogotá', 'Activo', '2019-04-07', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(16, 18, 'ASC-016', 'Fujitec', 'GLVF-II', 'FJ-2023-016', 'Pasajeros', 630, 8, 10, 1, 'Conjunto - bloque norte', 'Carrera 70 #45-20', 'Bogotá', 'Inactivo', '2023-01-15', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(17, 19, 'ASC-017', 'Hyundai', 'LUXEN', 'HY-2021-017', 'Pasajeros', 1000, 13, 22, 2, 'Parque Central - Torre 1', 'Calle 50 #30-45', 'Bogotá', 'Activo', '2021-10-08', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(18, 19, 'ASC-018', 'Otis', 'Gen2-MRL', 'OT-2022-018', 'Pasajeros', 800, 11, 22, 1.75, 'Parque Central - Torre 2', 'Calle 50 #30-45', 'Bogotá', 'Activo', '2022-03-21', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(19, 20, 'ASC-019', 'KONE', 'MonoSpace', 'KN-2020-019', 'Pasajeros', 750, 10, 17, 1.5, 'Valle PH - Torre Principal', 'Carrera 80 #25-90', 'Bogotá', 'Activo', '2020-06-30', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(20, 20, 'ASC-020', 'Schindler', '3300 MRL', 'SC-2018-020', 'Carga', 1500, 0, 5, 0.4, 'Valle PH - Zona servicios', 'Carrera 80 #25-90', 'Bogotá', 'Activo', '2018-08-12', '2026-03-08 20:49:47', '2026-03-08 20:49:47'),
(25, 35, 'ASC-TN-101', 'Schindler', '5500 MRL', 'SCH-2023-001234', 'Pasajeros', 1000, 13, 22, 2, 'Torre Norte - Núcleo', 'Carrera 9 #150-60, Bogotá', 'Bogotá', 'Activo', '2023-06-15', '2026-04-06 12:43:16', '2026-04-06 12:43:16'),
(26, 11, 'ASC-099', 'Otis', 'Gen2', 'OT-2025-099', 'Pasajeros', 750, 10, 8, 1.2, 'Torre C - Lobby', 'Calle 120 #15-88', 'Bogotá', 'Activo', '2025-01-10', '2026-04-09 02:03:07', '2026-04-09 02:03:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id_auditoria` bigint(20) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL COMMENT 'Usuario que ejecutó la acción',
  `tabla_afectada` varchar(50) NOT NULL,
  `operacion` varchar(20) NOT NULL,
  `id_registro` int(11) DEFAULT NULL COMMENT 'ID del registro afectado',
  `datos_anteriores` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Valores antes del cambio' CHECK (json_valid(`datos_anteriores`)),
  `datos_nuevos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Valores después del cambio' CHECK (json_valid(`datos_nuevos`)),
  `ip_origen` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `fecha_evento` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id_auditoria`, `id_usuario`, `tabla_afectada`, `operacion`, `id_registro`, `datos_anteriores`, `datos_nuevos`, `ip_origen`, `user_agent`, `fecha_evento`) VALUES
(1, 1, 'usuario', 'LOGIN', 1, NULL, '{\"session\":\"iniciada\"}', '192.168.1.10', 'Mozilla/5.0 Windows Chrome/120', '2025-01-10 13:00:00'),
(2, 1, 'rol', 'INSERT', 1, NULL, '{\"nombre_rol\":\"Administrador\"}', '192.168.1.10', 'Mozilla/5.0 Windows Chrome/120', '2025-01-10 13:05:00'),
(3, 1, 'usuario', 'INSERT', 2, NULL, '{\"nombre\":\"Laura Andrea Gomez\",\"rol\":\"Director Tecnico\"}', '192.168.1.10', 'Mozilla/5.0 Windows Chrome/120', '2025-01-11 13:30:00'),
(4, 1, 'usuario', 'INSERT', 4, NULL, '{\"nombre\":\"Andres Felipe Martinez\",\"rol\":\"Inspector\"}', '192.168.1.10', 'Mozilla/5.0 Windows Chrome/120', '2025-01-13 12:45:00'),
(5, 3, 'ascensor', 'INSERT', 1, NULL, '{\"codigo\":\"ASC-001\",\"marca\":\"Otis\",\"cliente_id\":11}', '192.168.1.30', 'Mozilla/5.0 Windows Chrome/120', '2025-01-20 14:15:00'),
(6, 3, 'solicitud', 'INSERT', 1, NULL, '{\"tipo_servicio\":\"Inspeccion Periodica\",\"estado\":\"Programada\",\"ascensor_id\":1}', '192.168.1.30', 'Mozilla/5.0 Windows Chrome/120', '2025-01-15 15:00:00'),
(7, 3, 'programacion', 'INSERT', 1, NULL, '{\"fecha_programada\":\"2025-01-25\",\"inspector_id\":4,\"estado\":\"Programada\"}', '192.168.1.30', 'Mozilla/5.0 Windows Chrome/120', '2025-01-16 16:00:00'),
(8, 5, 'usuario', 'LOGIN', 5, NULL, '{\"session\":\"iniciada\"}', '192.168.1.50', 'Mozilla/5.0 Android Chrome/120', '2025-01-22 14:00:00'),
(9, 5, 'inspeccion', 'INSERT', 2, NULL, '{\"estado\":\"Borrador\",\"ascensor_id\":2,\"inspector_id\":5}', '192.168.1.50', 'Mozilla/5.0 Android Chrome/120', '2025-01-22 14:05:00'),
(10, 5, 'inspeccion', 'UPDATE', 2, '{\"estado\":\"Borrador\"}', '{\"estado\":\"Aprobada\",\"fecha_fin\":\"2025-01-22 10:55:00\"}', '192.168.1.50', 'Mozilla/5.0 Android Chrome/120', '2025-01-22 15:55:00'),
(11, 5, 'informe', 'INSERT', 2, NULL, '{\"numero_informe\":\"INF-2025-002\",\"estado\":\"Borrador\"}', '192.168.1.50', 'Mozilla/5.0 Android Chrome/120', '2025-01-22 16:00:00'),
(12, 3, 'informe', 'UPDATE', 2, '{\"estado\":\"Borrador\"}', '{\"estado\":\"Aprobado\",\"fecha_aprobacion\":\"2025-01-23 14:00:00\"}', '192.168.1.30', 'Mozilla/5.0 Windows Chrome/120', '2025-01-23 19:00:00'),
(13, 4, 'usuario', 'LOGIN', 4, NULL, '{\"session\":\"iniciada\"}', '192.168.1.40', 'Mozilla/5.0 Android Chrome/120', '2025-01-24 12:00:00'),
(14, 4, 'inspeccion', 'INSERT', 4, NULL, '{\"estado\":\"Borrador\",\"ascensor_id\":4,\"inspector_id\":4}', '192.168.1.40', 'Mozilla/5.0 Android Chrome/120', '2025-01-24 12:05:00'),
(15, 4, 'detalle_checklist', 'INSERT', 9, NULL, '{\"resultado\":\"No Cumple\",\"item_id\":9,\"inspeccion_id\":4}', '192.168.1.40', 'Mozilla/5.0 Android Chrome/120', '2025-01-24 12:45:00'),
(16, 2, 'informe', 'UPDATE', 4, '{\"estado\":\"Borrador\"}', '{\"estado\":\"Aprobado con observaciones\",\"id_revisor\":2}', '192.168.1.20', 'Mozilla/5.0 Windows Chrome/120', '2025-01-25 15:00:00'),
(17, 8, 'usuario', 'LOGIN', 8, NULL, '{\"session\":\"iniciada\"}', '192.168.1.80', 'Mozilla/5.0 Android Chrome/120', '2025-02-05 11:30:00'),
(18, 8, 'inspeccion', 'INSERT', 10, NULL, '{\"estado\":\"Borrador\",\"ascensor_id\":10,\"inspector_id\":8}', '192.168.1.80', 'Mozilla/5.0 Android Chrome/120', '2025-02-05 11:35:00'),
(19, 8, 'inspeccion', 'UPDATE', 10, '{\"estado\":\"Borrador\"}', '{\"estado\":\"Aprobada\",\"fecha_fin\":\"2025-02-05 07:55:00\"}', '192.168.1.80', 'Mozilla/5.0 Android Chrome/120', '2025-02-05 12:55:00'),
(20, 8, 'usuario', 'LOGOUT', 8, '{\"session\":\"activa\"}', '{\"session\":\"cerrada\"}', '192.168.1.80', 'Mozilla/5.0 Android Chrome/120', '2025-02-05 13:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `checklist_categoria`
--

CREATE TABLE `checklist_categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(150) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `orden_visualizacion` int(11) NOT NULL DEFAULT 0,
  `norma_referencia` varchar(100) DEFAULT NULL COMMENT 'NTC 5926-1:2012',
  `activo` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `checklist_categoria`
--

INSERT INTO `checklist_categoria` (`id_categoria`, `nombre_categoria`, `descripcion`, `orden_visualizacion`, `norma_referencia`, `activo`) VALUES
(1, 'Cuarto de Máquinas', 'Verificación de condiciones del cuarto de máquinas: acceso, ventilación, iluminación, equipos y seguridad eléctrica.', 1, 'NTC 5926-1:2012 Sección 6.3', b'1'),
(2, 'Foso del Ascensor', 'Inspección del foso: dimensiones, iluminación, drenaje, dispositivos de parada y estado general.', 2, 'NTC 5926-1:2012 Sección 5.7', b'1'),
(3, 'Cabina', 'Revisión de la cabina: dimensiones, iluminación, ventilación, comunicación de emergencia y capacidad.', 3, 'NTC 5926-1:2012 Sección 8.1', b'1'),
(4, 'Puertas de Cabina y Rellano', 'Control de puertas: funcionamiento, enclavamientos, contactos eléctricos, velocidad de cierre y reapertura.', 4, 'NTC 5926-1:2012 Sección 7.1', b'1'),
(5, 'Sistema de Tracción y Suspensión', 'Evaluación de cables, poleas, contrapeso, tambor y mecanismo de tracción principal.', 5, 'NTC 5926-1:2012 Sección 9.1', b'1'),
(6, 'Dispositivos de Seguridad', 'Verificación de limitador de velocidad, amortiguadores, paracaídas, freno y enclavamientos de seguridad.', 6, 'NTC 5926-1:2012 Sección 10.1', b'1'),
(7, 'Instalación Eléctrica', 'Revisión del tablero eléctrico, cableado, toma de tierra, protecciones y circuitos de seguridad.', 7, 'NTC 5926-1:2012 Sección 13.1', b'1'),
(8, 'Documentación Técnica y Legal', 'Verificación de licencias, manuales, planos, libro de mantenimiento y certificados vigentes.', 8, 'NTC 5926-1:2012 Sección 4.1', b'1'),
(9, 'Guías y Estructuras de Soporte', 'Inspección de guías de cabina y contrapeso, soportes, fijaciones y alineación general.', 9, 'NTC 5926-1:2012 Sección 11.1', b'1'),
(10, 'Sistema Hidráulico', 'Revisión del grupo hidráulico, tuberías, válvulas, cilindro y nivel de aceite en ascensores hidráulicos.', 10, 'NTC 5926-1:2012 Sección 14.1', b'1'),
(11, 'Iluminación y Señalización', 'Verificación de iluminación en cabina, rellanos, foso y cuarto de máquinas, así como señalización de emergencia.', 11, 'NTC 5926-1:2012 Sección 12.3', b'1'),
(12, 'Sistema de Comunicación y Alarma', 'Revisión del intercomunicador, alarma sonora, botón de emergencia y sistema de llamada en cabina.', 12, 'NTC 5926-1:2012 Sección 8.4', b'1'),
(13, 'Contrapeso y Amortiguadores', 'Inspección del contrapeso, sus guías, fijaciones y los amortiguadores de cabina y contrapeso en el foso.', 13, 'NTC 5926-1:2012 Sección 10.4', b'1'),
(14, 'Recinto y Accesos del Ascensor', 'Verificación del recinto, huecos, accesos de emergencia, trampillas y puertas de inspección.', 14, 'NTC 5926-1:2012 Sección 5.2', b'1'),
(15, 'Cuadro de Maniobra y Control', 'Revisión del cuadro de maniobra, tarjetas electrónicas, relés, contactores y lógica de control.', 15, 'NTC 5926-1:2012 Sección 13.4', b'1'),
(16, 'Frenos y Sistema de Parada', 'Verificación del freno electromagnético, sistema de parada de emergencia y retención bajo carga nominal.', 16, 'NTC 5926-1:2012 Sección 10.2', b'1'),
(17, 'Velocidad y Rendimiento', 'Medición de velocidad nominal, aceleración, desaceleración y comportamiento en marcha normal y de emergencia.', 17, 'NTC 5926-1:2012 Sección 9.3', b'1'),
(18, 'Protecciones Mecánicas', 'Inspección de guardas, cubiertas de poleas, protecciones de maquinaria giratoria y dispositivos anti-atrapamiento.', 18, 'NTC 5926-1:2012 Sección 6.5', b'1'),
(19, 'Nivelación y Confort', 'Evaluación de la precisión de nivelación en todos los pisos, vibraciones, ruido y confort en el recorrido.', 19, 'NTC 5926-1:2012 Sección 9.4', b'1'),
(20, 'Mantenimiento Preventivo', 'Revisión del cumplimiento del plan de mantenimiento preventivo, lubricación, ajustes y reemplazos programados.', 20, 'NTC 5926-1:2012 Sección 4.3', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `checklist_item`
--

CREATE TABLE `checklist_item` (
  `id_item` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL COMMENT 'Categoría a la que pertenece',
  `codigo_item` varchar(20) NOT NULL COMMENT 'Ej: CM-01, CAB-03',
  `descripcion` text NOT NULL,
  `criterio_cumplimiento` text DEFAULT NULL COMMENT 'Descripción de qué se considera cumplimiento',
  `nivel_criticidad` varchar(255) NOT NULL,
  `obligatorio` bit(1) DEFAULT NULL,
  `orden_visualizacion` int(11) NOT NULL DEFAULT 0,
  `activo` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `checklist_item`
--

INSERT INTO `checklist_item` (`id_item`, `id_categoria`, `codigo_item`, `descripcion`, `criterio_cumplimiento`, `nivel_criticidad`, `obligatorio`, `orden_visualizacion`, `activo`) VALUES
(1, 1, 'CM-01', 'Acceso exclusivo y señalizado al cuarto de máquinas', 'La puerta debe ser de acceso restringido, con señal de peligro eléctrico y aviso de acceso solo a personal autorizado.', 'Alto', b'1', 1, b'1'),
(2, 2, 'FO-01', 'Iluminación permanente mínima de 50 lux en el foso', 'El foso debe contar con iluminación eléctrica permanente de mínimo 50 lux, con interruptor accesible desde el acceso.', 'Medio', b'1', 1, b'1'),
(3, 3, 'CAB-01', 'Dispositivo de comunicación de emergencia bidireccional en cabina', 'Debe existir intercomunicador operativo que permita comunicación bidireccional entre cabina y puesto de vigilancia.', 'Crítico', b'1', 1, b'1'),
(4, 4, 'PU-01', 'Enclavamiento mecánico y eléctrico de puertas de rellano', 'Todas las puertas de rellano deben contar con enclavamiento que impida su apertura con la cabina fuera del nivel.', 'Crítico', b'1', 1, b'1'),
(5, 5, 'TR-01', 'Estado de cables de tracción sin hilos rotos ni corrosión', 'Los cables no deben presentar hilos rotos, corrosión superficial mayor al 30% ni deformaciones visibles.', 'Crítico', b'1', 1, b'1'),
(6, 6, 'SEG-01', 'Limitador de velocidad operativo y con sello de calibración vigente', 'El limitador debe activarse a la velocidad de disparo establecida. Debe contar con sello de calibración vigente.', 'Crítico', b'1', 1, b'1'),
(7, 7, 'EL-01', 'Tablero eléctrico con protecciones y etiquetado correcto', 'Todos los circuitos deben estar identificados, con protecciones adecuadas y sin conexiones improvisadas.', 'Alto', b'1', 1, b'1'),
(8, 8, 'DOC-01', 'Licencia de operación del ascensor vigente', 'El ascensor debe contar con licencia o permiso de operación vigente emitido por la autoridad competente.', 'Crítico', b'1', 1, b'1'),
(9, 9, 'GUI-01', 'Guías de cabina y contrapeso alineadas y sin deformaciones', 'Las guías deben estar correctamente alineadas, fijas a la estructura, sin torceduras ni corrosión excesiva.', 'Alto', b'1', 1, b'1'),
(10, 10, 'HID-01', 'Nivel de aceite del grupo hidráulico dentro del rango permitido', 'El nivel de aceite debe estar entre las marcas mínima y máxima del depósito. Sin fugas en tuberías ni cilindro.', 'Alto', b'1', 1, b'1'),
(11, 11, 'ILU-01', 'Iluminación de emergencia autónoma operativa en cabina', 'La luz de emergencia debe activarse automáticamente al corte de energía y mantenerse encendida mínimo 1 hora.', 'Crítico', b'1', 1, b'1'),
(12, 12, 'COM-01', 'Alarma sonora de emergencia operativa desde cabina', 'El botón de alarma debe activar una señal sonora audible desde el exterior. Prueba de funcionamiento obligatoria.', 'Crítico', b'1', 1, b'1'),
(13, 13, 'CNT-01', 'Amortiguadores de cabina y contrapeso en buen estado', 'Los amortiguadores deben estar íntegros, sin corrosión, deformaciones ni fugas de aceite en los hidráulicos.', 'Crítico', b'1', 1, b'1'),
(14, 14, 'REC-01', 'Recinto del ascensor cerrado y sin accesos no autorizados', 'El recinto debe estar completamente cerrado. No deben existir aberturas no previstas en el diseño original.', 'Alto', b'1', 1, b'1'),
(15, 15, 'MAN-01', 'Cuadro de maniobra accesible y con identificación de circuitos', 'El cuadro debe estar cerrado con llave, con todos sus circuitos identificados y sin componentes sueltos o quemados.', 'Alto', b'1', 1, b'1'),
(16, 16, 'FRE-01', 'Freno electromagnético con acción eficaz bajo carga nominal', 'El freno debe detener y mantener la cabina con carga nominal sin deslizamiento al cortarse la corriente eléctrica.', 'Crítico', b'1', 1, b'1'),
(17, 17, 'VEL-01', 'Velocidad nominal dentro del rango permitido por diseño', 'La velocidad medida en recorrido nominal no debe superar en más del 5% la velocidad nominal declarada por el fabricante.', 'Alto', b'1', 1, b'1'),
(18, 18, 'PRO-01', 'Guardas de polea de tracción y desvío instaladas y fijas', 'Todas las poleas deben contar con guardas de protección fijas que impidan el contacto accidental con partes móviles.', 'Alto', b'1', 1, b'1'),
(19, 19, 'NIV-01', 'Precisión de nivelación máximo ±10 mm en todos los pisos', 'Al detenerse en cada piso, la diferencia entre el nivel de la cabina y el rellano no debe superar ±10 mm.', 'Alto', b'1', 1, b'1'),
(20, 20, 'MNT-01', 'Plan de mantenimiento preventivo ejecutado y documentado', 'Deben existir registros firmados de todas las actividades de mantenimiento preventivo según el plan del fabricante.', 'Medio', b'1', 1, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_checklist`
--

CREATE TABLE `detalle_checklist` (
  `id_detalle` int(11) NOT NULL,
  `id_inspeccion` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `resultado` varchar(20) NOT NULL COMMENT 'Cumple, No Cumple, No Aplica',
  `observacion` varchar(500) DEFAULT NULL COMMENT 'Detalle del hallazgo',
  `accion_requerida` text DEFAULT NULL COMMENT 'Corrección o mejora sugerida',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_checklist`
--

INSERT INTO `detalle_checklist` (`id_detalle`, `id_inspeccion`, `id_item`, `resultado`, `observacion`, `accion_requerida`, `fecha_registro`) VALUES
(1, 2, 1, 'Cumple', 'Puerta del cuarto de máquinas con cerradura, señal de peligro eléctrico y aviso de acceso restringido visible.', NULL, '2026-03-08 23:38:44'),
(2, 2, 2, 'Cumple', 'Iluminación del foso operativa. Interruptor ubicado en la parte superior de la escalera de acceso. Medición: 65 lux.', NULL, '2026-03-08 23:38:44'),
(3, 2, 3, 'Cumple', 'Intercomunicador bidireccional operativo. Se realizó prueba de llamada hacia portería con respuesta inmediata.', NULL, '2026-03-08 23:38:44'),
(4, 2, 4, 'Cumple', 'Enclavamientos mecánicos y eléctricos verificados en los 10 pisos. Ninguna puerta abrió con cabina fuera del nivel.', NULL, '2026-03-08 23:38:44'),
(5, 2, 5, 'Cumple', 'Cables de tracción sin hilos rotos. Lubricación adecuada y uniforme. Sin corrosión visible en ningún ramal.', NULL, '2026-03-08 23:38:44'),
(6, 4, 6, 'Cumple', 'Limitador de velocidad con sello de calibración vigente hasta noviembre 2025. Prueba de disparo exitosa.', NULL, '2026-03-08 23:38:44'),
(7, 4, 7, 'Cumple', 'Tablero eléctrico con todos los circuitos identificados. Protecciones termomagnéticas en buen estado. Sin conexiones improvisadas.', NULL, '2026-03-08 23:38:44'),
(8, 4, 8, 'Cumple', 'Licencia de operación vigente. Copia disponible en cuarto de máquinas y en poder del administrador del edificio.', NULL, '2026-03-08 23:38:44'),
(9, 4, 9, 'No Cumple', 'Guías de contrapeso presentan oxidación superficial en tramo entre pisos 3 y 5. No afecta funcionamiento actual pero requiere atención.', 'Aplicar tratamiento anticorrosivo y lubricación en guías afectadas. Plazo recomendado: 15 días.', '2026-03-08 23:38:44'),
(10, 4, 10, 'No Cumple', 'Se evidenció fuga de aceite menor en la tubería de retorno del grupo hidráulico. Mancha de aceite en piso del foso.', 'Reemplazar empaque de tubería de retorno. Limpiar derrame. Plazo: inmediato antes de próxima operación.', '2026-03-08 23:38:44'),
(11, 5, 11, 'Cumple', 'Luz de emergencia autónoma probada. Se activó correctamente al simular corte de energía. Autonomía estimada mayor a 1 hora.', NULL, '2026-03-08 23:38:44'),
(12, 5, 12, 'Cumple', 'Alarma sonora de emergencia operativa. Botón en cabina activa señal audible en portería y cuarto de máquinas.', NULL, '2026-03-08 23:38:44'),
(13, 5, 13, 'Cumple', 'Amortiguadores hidráulicos de cabina y contrapeso en buen estado. Sin fugas, sin deformaciones. Nivel de aceite correcto.', NULL, '2026-03-08 23:38:44'),
(14, 5, 14, 'Cumple', 'Recinto del ascensor completamente cerrado. Sin aberturas no autorizadas en paredes ni puertas del hueco.', NULL, '2026-03-08 23:38:44'),
(15, 5, 15, 'No Cumple', 'Cuadro de maniobra presenta relé auxiliar con conector flojo en tarjeta de control. Posible causa de paradas intermitentes reportadas.', 'Asegurar conector del relé auxiliar y verificar continuidad. Revisar historial de fallas. Plazo: antes de finalizar inspección.', '2026-03-08 23:38:44'),
(16, 10, 16, 'Cumple', 'Freno electromagnético verificado bajo carga nominal de 300 kg. Sin deslizamiento al cortar corriente. Acción eficaz confirmada.', NULL, '2026-03-08 23:38:44'),
(17, 10, 17, 'Cumple', 'Velocidad medida en recorrido nominal: 0.38 m/s. Velocidad nominal declarada: 0.40 m/s. Diferencia del 5%, dentro del rango.', NULL, '2026-03-08 23:38:44'),
(18, 10, 18, 'Cumple', 'Guardas de polea de tracción y polea de desvío instaladas y fijas. No presentan daños ni desplazamientos.', NULL, '2026-03-08 23:38:44'),
(19, 10, 19, 'Cumple', 'Nivelación verificada en los 8 pisos. Diferencia máxima registrada de 6 mm en piso 4. Dentro del límite de ±10 mm.', NULL, '2026-03-08 23:38:44'),
(20, 10, 20, 'No Cumple', 'Registro de mantenimiento desactualizado. Última anotación con fecha de hace 4 meses. Falta registro de intervención de agosto.', 'Actualizar el libro de mantenimiento con todas las intervenciones realizadas. Responsable: empresa de mantenimiento contratada. Plazo: 5 días.', '2026-03-08 23:38:44'),
(22, 28, 1, 'Cumple', 'Puerta con cerradura, señal de peligro eléctrico visible', NULL, '2026-04-06 13:00:03'),
(23, 28, 4, 'No Cumple', 'Intercomunicador no funciona, no hay respuesta desde portería', 'Reparar o reemplazar el sistema de comunicación antes de 15 días', '2026-04-06 13:00:03'),
(24, 28, 5, 'Cumple', 'Cables sin hilos rotos, lubricación adecuada', NULL, '2026-04-06 13:00:03'),
(25, 28, 16, 'Cumple', 'Freno probado bajo carga nominal, sin deslizamiento', NULL, '2026-04-06 13:00:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotografia`
--

CREATE TABLE `fotografia` (
  `id_foto` int(11) NOT NULL,
  `id_informe` int(11) NOT NULL COMMENT 'Informe al que pertenece la fotografía',
  `id_item` int(11) DEFAULT NULL COMMENT 'Item del checklist asociado (opcional)',
  `nombre_archivo` varchar(255) NOT NULL,
  `ruta_archivo` varchar(500) NOT NULL COMMENT 'URL o path del archivo',
  `tamano_kb` int(11) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `tipo_evidencia` varchar(255) DEFAULT NULL,
  `fecha_captura` datetime NOT NULL,
  `latitud` decimal(10,8) DEFAULT NULL COMMENT 'Geolocalización',
  `longitud` decimal(11,8) DEFAULT NULL,
  `sincronizado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fotografia`
--

INSERT INTO `fotografia` (`id_foto`, `id_informe`, `id_item`, `nombre_archivo`, `ruta_archivo`, `tamano_kb`, `descripcion`, `tipo_evidencia`, `fecha_captura`, `latitud`, `longitud`, `sincronizado`) VALUES
(1, 2, 1, 'asc2_cuarto_maquinas.jpg', '/fotos/2025/INF-002/asc2_cuarto_maquinas.jpg', 1240, 'Vista general del cuarto de maquinas. Puerta con cerradura y senalizacion visible.', 'Contexto', '2025-01-22 09:10:00', 4.68520000, -74.05480000, b'1'),
(2, 2, 3, 'asc2_cabina_intercomunicador.jpg', '/fotos/2025/INF-002/asc2_cabina_intercomunicador.jpg', 980, 'Panel de cabina con boton de alarma e intercomunicador operativo.', 'Detalle tecnico', '2025-01-22 09:25:00', 4.68520000, -74.05480000, b'1'),
(3, 2, 5, 'asc2_cables_traccion.jpg', '/fotos/2025/INF-002/asc2_cables_traccion.jpg', 1480, 'Cables de traccion sin hilos rotos. Lubricacion uniforme verificada visualmente.', 'Detalle tecnico', '2025-01-22 10:00:00', 4.68520000, -74.05480000, b'1'),
(4, 4, 9, 'asc4_guias_oxidacion.jpg', '/fotos/2025/INF-004/asc4_guias_oxidacion.jpg', 1650, 'Oxidacion superficial en guias de contrapeso tramo pisos 3 a 5. Hallazgo documentado.', 'Hallazgo', '2025-01-24 07:20:00', 4.69010000, -74.04920000, b'1'),
(5, 4, 10, 'asc4_foso_fuga_aceite.jpg', '/fotos/2025/INF-004/asc4_foso_fuga_aceite.jpg', 1820, 'Cables nuevos instalados', 'Hallazgo', '2025-01-24 07:35:00', 4.69010000, -74.04920000, b'1'),
(6, 4, 6, 'asc4_limitador_sello.jpg', '/fotos/2025/INF-004/asc4_limitador_sello.jpg', 1120, 'Limitador de velocidad con sello de calibracion vigente hasta noviembre 2025.', 'Detalle tecnico', '2025-01-24 08:00:00', 4.69010000, -74.04920000, b'1'),
(7, 4, NULL, 'asc4_vista_foso_general.jpg', '/fotos/2025/INF-004/asc4_vista_foso_general.jpg', 1380, 'Vista general del foso del ascensor de carga. Estado general documentado.', 'Contexto', '2025-01-24 08:20:00', 4.69010000, -74.04920000, b'1'),
(8, 5, 15, 'asc5_cuadro_rele_flojo.jpg', '/fotos/2025/INF-005/asc5_cuadro_rele_flojo.jpg', 1560, 'Rele auxiliar con conector flojo en tarjeta de control. Causa de paradas intermitentes.', 'Hallazgo', '2025-02-05 11:30:00', 4.67340000, -74.05610000, b'0'),
(9, 5, 11, 'asc5_luz_emergencia.jpg', '/fotos/2025/INF-005/asc5_luz_emergencia.jpg', 890, 'Prueba de luz de emergencia autonoma. Activacion correcta al simular corte de energia.', 'Detalle tecnico', '2025-02-05 10:20:00', 4.67340000, -74.05610000, b'0'),
(10, 10, NULL, 'asc10_guias_desgaste.jpg', '/fotos/2025/INF-010/asc10_guias_desgaste.jpg', 1740, 'Desgaste en zapatas de guia de cabina. Causa identificada del ruido reportado por usuarios.', 'Hallazgo', '2025-02-05 06:50:00', 4.65780000, -74.09230000, b'1'),
(11, 10, NULL, 'asc10_zapatas_nuevas.jpg', '/fotos/2025/INF-010/asc10_zapatas_nuevas.jpg', 1390, 'Zapatas de guia nuevas instaladas in situ. Montacamillas operativo tras la intervencion.', 'Detalle tecnico', '2025-02-05 07:30:00', 4.65780000, -74.09230000, b'1'),
(12, 10, 20, 'asc10_libro_mant.jpg', '/fotos/2025/INF-010/asc10_libro_mant.jpg', 760, 'Cables de traccion en perfecto estado', 'Hallazgo', '2025-02-05 07:45:00', 4.65780000, -74.09230000, b'1'),
(13, 10, 16, 'asc10_freno_prueba.jpg', '/fotos/2025/INF-010/asc10_freno_prueba.jpg', 1230, 'Prueba de freno electromagnetico bajo carga nominal 300 kg. Resultado satisfactorio.', 'Detalle tecnico', '2025-02-05 07:10:00', 4.65780000, -74.09230000, b'1'),
(14, 12, 5, 'asc12_cables_nuevos.jpg', '/fotos/2025/INF-012/asc12_cables_nuevos.jpg', 1610, 'Cables de traccion nuevos instalados. Tension y lubricacion verificadas visualmente.', 'Detalle tecnico', '2025-02-14 07:20:00', 4.69010000, -74.04920000, b'0'),
(15, 12, NULL, 'asc12_cuarto_maq_gral.jpg', '/fotos/2025/INF-012/asc12_cuarto_maq_gral.jpg', 1180, 'Vista general cuarto de maquinas post-mantenimiento. Orden y limpieza adecuados.', 'Contexto', '2025-02-14 07:40:00', 4.69010000, -74.04920000, b'0'),
(16, 20, NULL, 'asc20_sensor_pesaje.jpg', '/fotos/2025/INF-020/asc20_sensor_pesaje.jpg', 1450, 'Sensor de pesaje descalibrado identificado. Intervencion de calibracion documentada.', 'Hallazgo', '2025-02-27 06:15:00', 4.66780000, -74.11230000, b'1'),
(17, 20, NULL, 'asc20_prueba_carga.jpg', '/fotos/2025/INF-020/asc20_prueba_carga.jpg', 1870, 'Prueba de carga estatica con 1500 kg. Resultado satisfactorio. Capacidad nominal verificada.', 'Detalle tecnico', '2025-02-27 07:00:00', 4.66780000, -74.11230000, b'1'),
(18, 20, NULL, 'asc20_foso_general.jpg', '/fotos/2025/INF-020/asc20_foso_general.jpg', 1320, 'Vista general foso ascensor de servicios. Sin danos estructurales ni derrames.', 'Contexto', '2025-02-27 06:30:00', 4.66780000, -74.11230000, b'1'),
(19, 20, NULL, 'asc20_cabina_interna.jpg', '/fotos/2025/INF-020/asc20_cabina_interna.jpg', 1095, 'Interior de cabina de servicios. Sin danos en paredes, piso ni techo tras prueba de carga.', 'Contexto', '2025-02-27 07:15:00', 4.66780000, -74.11230000, b'1'),
(21, 8, NULL, 'motor.jpg', '/fotos/motor.jpg', NULL, 'Motor en buen estado', NULL, '2026-04-05 13:34:25', NULL, NULL, NULL),
(22, 27, 1, 'CM-01_puerta_maquinas.jpg', '/fotos/2026/INF-2026-028/CM-01_puerta_maquinas.jpg', NULL, 'Puerta del cuarto de máquinas con cerradura', 'Detalle técnico', '2026-04-06 08:03:22', NULL, NULL, b'1'),
(23, 27, 4, 'CAB-01_intercomunicador_fallo.jpg', '/fotos/2026/INF-2026-028/CAB-01_intercomunicador_fallo.jpg', NULL, 'Intercomunicador sin funcionamiento', 'Hallazgo', '2026-04-06 08:03:22', NULL, NULL, b'1'),
(24, 27, NULL, 'edificio_general.jpg', '/fotos/2026/INF-2026-028/edificio_general.jpg', NULL, 'Vista general del edificio', 'Contexto', '2026-04-06 08:03:22', NULL, NULL, b'1'),
(25, 7, NULL, 'freno_emergencia.jpg', '/foto/freno_emergencia.jpg', NULL, 'Freno electromagnetico operativo', NULL, '2026-04-08 14:18:49', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe`
--

CREATE TABLE `informe` (
  `id_informe` int(11) NOT NULL,
  `id_inspeccion` int(11) NOT NULL,
  `numero_informe` varchar(50) NOT NULL COMMENT 'Código único del informe',
  `fecha_generacion` datetime DEFAULT NULL,
  `fecha_revision` datetime DEFAULT NULL,
  `fecha_aprobacion` datetime DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `id_revisor` int(11) DEFAULT NULL COMMENT 'Coordinador o Director Técnico',
  `observaciones_revision` text DEFAULT NULL,
  `ruta_pdf` varchar(500) DEFAULT NULL COMMENT 'Ubicación del PDF generado',
  `hash_documento` varchar(64) DEFAULT NULL COMMENT 'SHA-256 para integridad',
  `conclusion_general` text DEFAULT NULL,
  `concepto_tecnico` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `informe`
--

INSERT INTO `informe` (`id_informe`, `id_inspeccion`, `numero_informe`, `fecha_generacion`, `fecha_revision`, `fecha_aprobacion`, `estado`, `id_revisor`, `observaciones_revision`, `ruta_pdf`, `hash_documento`, `conclusion_general`, `concepto_tecnico`, `fecha_creacion`) VALUES
(1, 1, 'INF-2025-001', '2025-01-25 12:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-001_borrador.pdf', NULL, 'Informe en elaboración. Inspección programada pendiente de ejecución.', NULL, '2026-03-09 04:03:38'),
(2, 2, 'INF-2025-002', '2025-01-22 11:30:00', '2025-01-23 09:00:00', '2025-01-23 14:00:00', 'Aprobado', 3, 'Informe completo y bien diligenciado. Checklist sin inconsistencias. Firmas validadas.', '/informes/2025/INF-2025-002_aprobado.pdf', 'a3f1b2c4d5e6f7890123456789abcdef0123456789abcdef0123456789abcdef', 'Ascensor Schindler 3300 MRL en Torre B cumple con todos los requisitos de la NTC 5926-1. Sin hallazgos críticos. Documentación técnica vigente.', 'Aprobado', '2026-03-09 04:03:38'),
(3, 3, 'INF-2025-003', '2025-02-01 12:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-003_borrador.pdf', NULL, 'Informe en elaboración. Inspección anual KONE MonoSpace pendiente de ejecución.', NULL, '2026-03-09 04:03:38'),
(4, 4, 'INF-2025-004', '2025-01-24 09:30:00', '2025-01-24 15:00:00', '2025-01-25 10:00:00', 'Aprobado', 2, 'Informe de inspección extraordinaria revisado y aprobado. Corrección de falla documentada correctamente. Se adjuntan evidencias fotográficas.', '/informes/2025/INF-2025-004_aprobado.pdf', 'b4e2c3d6f8a9012345678901bcdef0123456789abcdef0123456789abcdef01', 'Ascensor ThyssenKrupp Evolution de carga presenta historial de falla en frenos corregida. Sistema de frenado verificado y aprobado. Se recomienda inspección de seguimiento en 3 meses.', 'Aprobado con observaciones', '2026-03-09 04:03:38'),
(5, 5, 'INF-2025-005', '2025-02-05 14:00:00', NULL, NULL, 'Pendiente Revisión', 7, NULL, '/informes/2025/INF-2025-005_pendiente.pdf', NULL, 'Inspección parcialmente ejecutada. Cuarto de máquinas y cabina revisados sin novedades. Pendiente revisión de puertas y foso para completar informe.', NULL, '2026-03-09 04:03:38'),
(6, 6, 'INF-2025-006', '2025-01-30 10:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-006_borrador.pdf', NULL, 'Inspección cancelada por baja temporal del ascensor. Informe no procede hasta que el ascensor sea reactivado y habilitado para inspección.', NULL, '2026-03-09 04:03:38'),
(7, 7, 'INF-2025-007', '2025-02-08 12:00:00', NULL, NULL, 'Borrador', 7, NULL, '/informes/2025/INF-2025-007_borrador.pdf', NULL, 'Informe en elaboración. Inspección periódica anual Torres del Norte edificio 20 pisos pendiente de ejecución.', NULL, '2026-03-09 04:03:38'),
(8, 8, 'INF-2025-008', '2025-02-15 12:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-008_borrador.pdf', NULL, 'Informe de inspección inicial pendiente. Ascensor KONE EcoSpace Torre Sur incorporado recientemente al contrato de mantenimiento.', NULL, '2026-03-09 04:03:38'),
(9, 9, 'INF-2025-009', '2025-02-12 12:00:00', NULL, NULL, 'Borrador', 7, NULL, '/informes/2025/INF-2025-009_borrador.pdf', NULL, 'Informe en elaboración. Inspección semestral Bloque Residencial A pendiente de ejecución.', NULL, '2026-03-09 04:03:38'),
(10, 10, 'INF-2025-010', '2025-02-05 08:30:00', '2025-02-05 16:00:00', '2025-02-06 09:00:00', 'Aprobado', 2, 'Informe extraordinario bien sustentado. Causa del ruido identificada y corregida. Evidencia fotográfica adjunta. Prueba de funcionamiento validada.', '/informes/2025/INF-2025-010_aprobado.pdf', 'c5f3d4e7a0b1234567890234cdef0123456789abcdef0123456789abcdef0234', 'Montacamillas Hyundai NEXEN-MRL presenta corrección exitosa de desgaste en guías. Equipo operativo en condiciones seguras. Sin restricciones de uso.', 'Aprobado', '2026-03-09 04:03:38'),
(11, 11, 'INF-2025-011', '2025-02-18 12:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-011_borrador.pdf', NULL, 'Informe pendiente. Certificado de inspección vencido - ejecución urgente requerida antes del cierre de mes.', NULL, '2026-03-09 04:03:38'),
(12, 12, 'INF-2025-012', '2025-02-14 10:00:00', NULL, NULL, 'Pendiente Revisión', 7, NULL, '/informes/2025/INF-2025-012_pendiente.pdf', NULL, 'Post-mantenimiento en curso. Cables de tracción nuevos instalados. Cuarto de máquinas verificado. Pendiente prueba de carga para cierre de informe.', NULL, '2026-03-09 04:03:38'),
(13, 13, 'INF-2025-013', '2025-02-20 12:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-013_borrador.pdf', NULL, 'Informe en elaboración. Inspección de alta prioridad por vencimiento de licencia. Ejecución programada para el 20 de febrero.', NULL, '2026-03-09 04:03:38'),
(14, 14, 'INF-2025-014', '2025-02-25 12:00:00', NULL, NULL, 'Borrador', 7, NULL, '/informes/2025/INF-2025-014_borrador.pdf', NULL, 'Informe semestral Torres del Río torre oeste pendiente de ejecución. Sin novedades reportadas por operador.', NULL, '2026-03-09 04:03:38'),
(15, 15, 'INF-2025-015', '2025-03-01 12:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-015_borrador.pdf', NULL, 'Informe de inspección inicial Conjunto Primavera. Nuevo cliente. Documentación técnica completa recibida y validada en pre-inspección.', NULL, '2026-03-09 04:03:38'),
(16, 16, 'INF-2025-016', '2025-02-19 10:00:00', NULL, NULL, 'Borrador', 7, NULL, '/informes/2025/INF-2025-016_borrador.pdf', NULL, 'Inspección post-mantenimiento no ejecutada. Mantenimiento correctivo del proveedor externo sin finalizar. Informe en espera de reprogramación.', NULL, '2026-03-09 04:03:38'),
(17, 17, 'INF-2025-017', '2025-03-03 12:00:00', NULL, NULL, 'Borrador', 2, NULL, '/informes/2025/INF-2025-017_borrador.pdf', NULL, 'Inspección anual Torre 1 Parque Central pendiente. Histórico de inspecciones satisfactorio. Sin alertas previas registradas.', NULL, '2026-03-09 04:03:38'),
(18, 18, 'INF-2025-018', '2025-03-05 12:00:00', NULL, NULL, 'Borrador', 3, NULL, '/informes/2025/INF-2025-018_borrador.pdf', NULL, 'Inspección anual Torre 2 Parque Central pendiente. Coordinada con la inspección de Torre 1 para optimizar desplazamiento del inspector.', NULL, '2026-03-09 04:03:38'),
(19, 19, 'INF-2025-019', '2025-03-06 12:00:00', NULL, NULL, 'Borrador', 7, NULL, '/informes/2025/INF-2025-019_borrador.pdf', NULL, 'Informe requerido por curaduría urbana. Plazo definido por entidad. Inspección KONE MonoSpace Torres del Valle programada con alta prioridad.', NULL, '2026-03-09 04:03:38'),
(20, 20, 'INF-2025-020', '2025-02-27 08:00:00', '2025-02-27 14:00:00', '2025-02-28 09:00:00', 'Aprobado', 2, 'Informe extraordinario revisado. Diagnóstico de sobrecarga bien documentado. Calibración del sensor verificada. Resultados de prueba de carga adjuntos.', '/informes/2025/INF-2025-020_aprobado.pdf', 'd6a4e5f8b2c3456789012345def0123456789abcdef0123456789abcdef0345', 'Ascensor Schindler 3300 MRL de servicios Torres del Valle operativo tras calibración de sensor de pesaje. Capacidad nominal de 1500 kg verificada mediante prueba estática y dinámica. Sin restricciones de operación.', 'Aprobado', '2026-03-09 04:03:38'),
(27, 28, 'INF-2026-028', '2026-04-06 07:56:57', NULL, '2026-04-06 08:05:04', 'Aprobado', NULL, NULL, NULL, NULL, 'Ascensor operativo con observaciones. Se requiere reparación del intercomunicador.', 'Aprobado con observaciones', '2026-04-06 12:56:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspeccion`
--

CREATE TABLE `inspeccion` (
  `id_inspeccion` int(11) NOT NULL,
  `id_programacion` int(11) NOT NULL,
  `id_ascensor` int(11) NOT NULL,
  `id_inspector` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `duracion_minutos` int(11) DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `firma_inspector` text DEFAULT NULL COMMENT 'Firma digital base64',
  `fecha_firma_inspector` datetime DEFAULT NULL,
  `firma_cliente` text DEFAULT NULL COMMENT 'Firma digital base64',
  `fecha_firma_cliente` datetime DEFAULT NULL,
  `sincronizado` bit(1) DEFAULT NULL,
  `fecha_sincronizacion` timestamp NULL DEFAULT NULL,
  `observaciones_generales` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `ultima_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inspeccion`
--

INSERT INTO `inspeccion` (`id_inspeccion`, `id_programacion`, `id_ascensor`, `id_inspector`, `id_solicitud`, `fecha_inicio`, `fecha_fin`, `duracion_minutos`, `estado`, `firma_inspector`, `fecha_firma_inspector`, `firma_cliente`, `fecha_firma_cliente`, `sincronizado`, `fecha_sincronizacion`, `observaciones_generales`, `fecha_creacion`, `ultima_modificacion`) VALUES
(1, 1, 1, 4, 1, '2025-01-25 08:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección semestral pendiente de ejecución - ascensor en operación normal', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(2, 2, 2, 5, 2, '2025-01-22 09:05:00', '2025-01-22 10:55:00', 110, 'Aprobada', 'firma_base64_insp_daniela_asc2', '2025-01-22 11:00:00', 'firma_base64_cliente_11_asc2', '2025-01-22 11:10:00', b'1', '2025-01-22 16:15:00', 'Inspección inicial satisfactoria. Ascensor en buen estado general. Documentación al día. Se recomienda mantenimiento preventivo en 6 meses', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(3, 3, 3, 6, 3, '2025-02-01 08:30:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección anual reglamentaria pendiente - edificio cumple normativa vigente NTC 5926-1', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(4, 4, 4, 4, 4, '2025-01-24 07:05:00', '2025-01-24 08:50:00', 105, 'Aprobada', 'firma_base64_insp_andres_asc4', '2025-01-24 08:55:00', 'firma_base64_cliente_12_asc4', '2025-01-24 09:05:00', b'1', '2025-01-24 14:10:00', 'Se verificó falla en sistema de frenado de carga. Falla corregida por técnico antes de inspección. Se valida funcionamiento correcto. Requiere revisión de frenos en próximo mantenimiento', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(5, 5, 5, 5, 5, '2025-02-05 10:00:00', NULL, NULL, 'En Proceso', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección en curso - revisión de cuarto de máquinas y cabina completada, pendiente revisión de puertas y foso', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(6, 6, 6, 6, 6, '2025-01-30 08:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección no ejecutada - ascensor dado de baja temporal por decisión del cliente', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(7, 7, 7, 8, 7, '2025-02-08 07:30:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Revisión anual obligatoria edificio 20 pisos - pendiente ejecución en fecha acordada', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(8, 8, 8, 4, 8, '2025-02-15 09:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Primera inspección de ingreso al contrato - documentación técnica recibida y revisada', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(9, 9, 9, 5, 9, '2025-02-12 08:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección semestral bloque residencial A - ascensor reportado sin novedades por el operador', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(10, 10, 10, 8, 10, '2025-02-05 06:35:00', '2025-02-05 07:55:00', 80, 'Aprobada', 'firma_base64_insp_sergio_asc10', '2025-02-05 08:00:00', 'firma_base64_cliente_15_asc10', '2025-02-05 08:10:00', b'1', '2025-02-05 13:15:00', 'Ruido inusual originado por desgaste en guías de cabina. Se reemplazaron zapatas de guía in situ. Montacamillas opera correctamente tras intervención. Sin riesgo para usuarios', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(11, 11, 11, 6, 11, '2025-02-18 10:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Certificado de inspección vencido - urgente ejecución antes del 28 de febrero', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(12, 12, 12, 4, 12, '2025-02-14 07:05:00', NULL, NULL, 'En Proceso', NULL, NULL, NULL, NULL, b'0', NULL, 'Verificación de cables de tracción recién instalados en curso - cuarto de máquinas revisado, pendiente prueba de carga', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(13, 13, 13, 8, 13, '2025-02-20 07:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Vencimiento de licencia de operación inminente - prioridad alta asignada por coordinación', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(14, 14, 14, 5, 14, '2025-02-25 09:30:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección semestral torre oeste - ascensor reporta operación estable por parte del administrador', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(15, 15, 15, 6, 15, '2025-03-01 08:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Primera inspección de ingreso - nuevo cliente Conjunto Primavera. Documentación técnica recibida completa', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(16, 16, 16, 4, 16, '2025-02-19 08:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección no ejecutada - mantenimiento correctivo no finalizado por proveedor externo', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(17, 17, 17, 8, 17, '2025-03-03 08:30:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección anual Torre 1 Parque Central - última inspección aprobada hace 11 meses', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(18, 18, 18, 5, 18, '2025-03-05 09:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Inspección anual Torre 2 Parque Central - coordinada junto con inspección de Torre 1', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(19, 19, 19, 6, 19, '2025-03-06 07:00:00', NULL, NULL, 'Borrador', NULL, NULL, NULL, NULL, b'0', NULL, 'Requerimiento formal de la curaduría urbana - inspección obligatoria con plazo definido', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(20, 20, 20, 8, 20, '2025-02-27 06:05:00', '2025-02-27 07:25:00', 80, 'Aprobada', 'firma_base64_insp_sergio_asc20', '2025-02-27 07:30:00', 'firma_base64_cliente_20_asc20', '2025-02-27 07:40:00', b'1', '2025-02-27 12:45:00', 'Sobrecarga detectada por sensor de pesaje. Sensor calibrado y ajustado. Prueba de carga realizada con resultado satisfactorio. Capacidad nominal de 1500 kg verificada. Sin daños estructurales en cabina ni contrapeso', '2026-03-08 22:14:22', '2026-03-08 22:14:22'),
(28, 24, 25, 4, 22, '2026-04-06 07:54:39', '2026-04-06 08:04:22', 135, 'Finalizada', NULL, NULL, NULL, NULL, b'1', NULL, 'Ascensor en operación normal. Edificio de 22 pisos.', '2026-04-06 12:54:39', '2026-04-06 13:04:22'),
(29, 24, 25, 4, 22, '2026-04-09 08:00:00', NULL, NULL, 'Pendiente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-09 08:05:57', '2026-04-09 08:05:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--

CREATE TABLE `observacion` (
  `id_observacion` int(11) NOT NULL,
  `id_informe` int(11) NOT NULL,
  `tipo_observacion` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `nivel_riesgo` varchar(255) NOT NULL,
  `requiere_atencion_inmediata` bit(1) DEFAULT NULL,
  `fecha_limite_recomendada` date DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `observacion`
--

INSERT INTO `observacion` (`id_observacion`, `id_informe`, `tipo_observacion`, `descripcion`, `nivel_riesgo`, `requiere_atencion_inmediata`, `fecha_limite_recomendada`, `fecha_registro`) VALUES
(1, 2, 'Recomendacion', 'Se recomienda realizar mantenimiento preventivo en los proximos 6 meses para mantener el estado optimo del ascensor.', 'Bajo', b'0', '2025-07-22', '2026-03-09 04:05:22'),
(2, 2, 'Nota tecnica', 'Lubricacion de cables en buen estado. Se sugiere revision de lubricacion en siguiente mantenimiento programado.', 'Bajo', b'0', '2025-06-01', '2026-03-09 04:05:22'),
(3, 4, 'Hallazgo', 'Guias de contrapeso presentan oxidacion superficial en tramo entre pisos 3 y 5. Requiere tratamiento anticorrosivo urgente.', 'Alto', b'0', '2025-02-08', '2026-03-09 04:05:22'),
(4, 4, 'Hallazgo', 'Fuga de aceite menor detectada en tuberia de retorno del grupo hidraulico. Derrame en piso del foso documentado fotograficamente.', 'Alto', b'1', '2025-01-25', '2026-03-09 04:05:22'),
(5, 4, 'Recomendacion', 'Se recomienda inspeccion de seguimiento en 3 meses para verificar correccion de no conformidades documentadas en este informe.', 'Medio', b'0', '2025-04-25', '2026-03-09 04:05:22'),
(6, 5, 'Hallazgo', 'Rele auxiliar con conector flojo en tarjeta de control del cuadro de maniobra. Posible causa de paradas intermitentes reportadas por usuarios.', 'Alto', b'1', '2025-02-05', '2026-03-09 04:05:22'),
(7, 5, 'Nota tecnica', 'Inspeccion parcialmente ejecutada. Pendiente revision de puertas y foso para completar evaluacion total del equipo.', 'Medio', b'0', '2025-02-15', '2026-03-09 04:05:22'),
(8, 10, 'Hallazgo', 'Desgaste en guias de cabina identificado como causa del ruido inusual reportado. Zapatas de guia reemplazadas in situ durante la inspeccion.', 'Medio', b'0', NULL, '2026-03-09 04:05:22'),
(9, 10, 'Hallazgo', 'Registro de mantenimiento desactualizado. Falta anotacion de intervencion de agosto. Libro de mantenimiento incompleto.', 'Medio', b'0', '2025-02-10', '2026-03-09 04:05:22'),
(10, 10, 'Recomendacion', 'Se recomienda que la empresa de mantenimiento actualice el libro con todas las intervenciones realizadas en los ultimos 6 meses.', 'Bajo', b'0', '2025-02-10', '2026-03-09 04:05:22'),
(11, 12, 'Nota tecnica', 'Cables de traccion nuevos instalados correctamente. Tension y lubricacion verificadas. Pendiente prueba de carga para certificar operacion.', 'Medio', b'0', '2025-02-20', '2026-03-09 04:05:22'),
(12, 12, 'Recomendacion', 'Se recomienda realizar prueba de carga al 100% de capacidad nominal antes de emitir concepto tecnico definitivo del post-mantenimiento.', 'Medio', b'0', '2025-02-20', '2026-03-09 04:05:22'),
(13, 20, 'Hallazgo', 'Sensor de pesaje presentaba descalibracion que generaba activacion erronea de alarma de sobrecarga con carga dentro de rango nominal.', 'Alto', b'1', '2025-02-27', '2026-03-09 04:05:22'),
(14, 20, 'Nota tecnica', 'Calibracion del sensor de pesaje realizada in situ. Prueba estatica con 1500 kg y dinamica con recorrido completo exitosas.', 'Medio', b'0', NULL, '2026-03-09 04:05:22'),
(15, 20, 'Recomendacion', 'Se recomienda verificacion del sensor en proximo mantenimiento preventivo para confirmar estabilidad de calibracion a largo plazo.', 'Bajo', b'0', '2025-05-27', '2026-03-09 04:05:22'),
(16, 1, 'Nota tecnica', 'Inspeccion semestral programada. Ascensor Otis Gen2-MRL Torre A reportado sin novedades por el operador del edificio.', 'Bajo', b'0', NULL, '2026-03-09 04:05:22'),
(17, 3, 'Nota tecnica', 'Inspeccion anual KONE MonoSpace pendiente. Documentacion tecnica vigente. Sin alertas previas registradas en historial.', 'Bajo', b'0', NULL, '2026-03-09 04:05:22'),
(18, 7, 'Nota tecnica', 'Inspeccion periodica Torres del Norte programada. Edificio de 20 pisos con historial de inspecciones satisfactorio.', 'Bajo', b'0', NULL, '2026-03-09 04:05:22'),
(19, 11, 'Hallazgo', 'Certificado de inspeccion vencido. Operacion del ascensor en situacion de incumplimiento normativo hasta obtencion de nuevo certificado.', 'Critico', b'1', '2025-02-28', '2026-03-09 04:05:22'),
(20, 13, 'Hallazgo', 'Licencia de operacion proxima a vencer. Requerimiento de la curaduria urbana con plazo definido para presentacion de informe.', 'Alto', b'1', '2025-02-20', '2026-03-09 04:05:22'),
(21, 19, 'Hallazgo', 'Inspeccion requerida formalmente por curaduria urbana. Incumplimiento podria generar sancion administrativa al propietario del edificio.', 'Critico', b'1', '2025-03-06', '2026-03-09 04:05:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion`
--

CREATE TABLE `programacion` (
  `id_programacion` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `id_inspector` int(11) NOT NULL COMMENT 'Usuario con rol Inspector',
  `fecha_programada` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin_estimada` time DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `motivo_cancelacion` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programacion`
--

INSERT INTO `programacion` (`id_programacion`, `id_solicitud`, `id_inspector`, `fecha_programada`, `hora_inicio`, `hora_fin_estimada`, `estado`, `motivo_cancelacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 1, 4, '2025-01-25', '08:00:00', '10:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(2, 2, 5, '2025-01-22', '09:00:00', '11:00:00', 'Finalizada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(3, 3, 6, '2025-02-01', '08:30:00', '10:30:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(4, 4, 4, '2025-01-24', '07:00:00', '09:00:00', 'Finalizada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(5, 5, 5, '2025-02-05', '10:00:00', '12:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(6, 6, 6, '2025-01-30', '08:00:00', '09:30:00', 'Cancelada', 'Ascensor dado de baja temporal - sin autorización para inspección', '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(7, 7, 8, '2025-02-08', '07:30:00', '09:30:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(8, 8, 4, '2025-02-15', '09:00:00', '11:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(9, 9, 5, '2025-02-12', '08:00:00', '10:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(10, 10, 8, '2025-02-05', '06:30:00', '08:00:00', 'Finalizada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(11, 11, 6, '2025-02-18', '10:00:00', '12:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(12, 12, 4, '2025-02-14', '07:00:00', '08:30:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(13, 13, 8, '2025-02-20', '07:00:00', '09:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(14, 14, 5, '2025-02-25', '09:30:00', '11:30:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(15, 15, 6, '2025-03-01', '08:00:00', '10:30:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(16, 16, 4, '2025-02-19', '08:00:00', '09:30:00', 'Cancelada', 'Pendiente resolución de mantenimiento correctivo por parte del proveedor', '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(17, 17, 8, '2025-03-03', '08:30:00', '10:30:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(18, 18, 5, '2025-03-05', '09:00:00', '11:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(19, 19, 6, '2025-03-06', '07:00:00', '09:00:00', 'Programada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(20, 20, 8, '2025-02-27', '06:00:00', '07:30:00', 'Finalizada', NULL, '2026-03-08 22:12:27', '2026-03-08 22:12:27'),
(24, 22, 4, '2026-04-06', '08:00:00', '10:30:00', 'Programada', NULL, '2026-04-06 12:50:13', '2026-04-06 12:50:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL COMMENT 'Administrador, Director Técnico, Coordinador, Inspector, Asesor, Cliente',
  `descripcion` varchar(200) DEFAULT NULL COMMENT 'Descripción de permisos del rol',
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`, `descripcion`, `fecha_creacion`) VALUES
(1, 'Administrador', 'Acceso total al sistema, gestión de usuarios y configuración', '2025-01-10 13:00:00'),
(2, 'Director Técnico', 'Aprueba informes, supervisa inspectores y coordina operaciones', '2025-01-10 13:00:00'),
(3, 'Coordinador', 'Programa inspecciones, asigna inspectores y revisa informes', '2025-01-10 13:00:00'),
(4, 'Inspector', 'Ejecuta inspecciones en campo, diligencia checklist y firma informes', '2025-01-10 13:00:00'),
(5, 'Asesor', 'Gestión comercial, atención al cliente y seguimiento de contratos', '2025-01-10 13:00:00'),
(6, 'Cliente', 'Consulta estado de sus ascensores e informes de inspección', '2025-01-10 13:00:00'),
(8, 'RolEditadoExitoso', 'Este rol fue editado correctamente', '2026-04-01 02:54:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id_solicitud` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_ascensor` int(11) NOT NULL,
  `tipo_servicio` varchar(100) NOT NULL COMMENT 'Inspección Inicial, Periódica, Extraordinaria, Post-mantenimiento',
  `prioridad` varchar(255) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `fecha_deseada` date DEFAULT NULL COMMENT 'Fecha preferida por el cliente',
  `estado` varchar(255) NOT NULL,
  `observaciones` text DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`id_solicitud`, `id_cliente`, `id_ascensor`, `tipo_servicio`, `prioridad`, `fecha_solicitud`, `fecha_deseada`, `estado`, `observaciones`, `fecha_registro`) VALUES
(1, 11, 1, 'Inspección Periódica', 'Media', '2025-01-15', '2025-01-25', 'Programada', 'Inspección semestral reglamentaria NTC 5926-1', '2026-03-08 20:49:53'),
(2, 11, 2, 'Inspección Inicial', 'Alta', '2025-01-16', '2025-01-22', 'Finalizada', 'Primera inspección tras renovación de contrato', '2026-03-08 20:49:53'),
(3, 12, 3, 'Inspección Periódica', 'Media', '2025-01-20', '2025-02-01', 'Programada', 'Inspección anual reglamentaria', '2026-03-08 20:49:53'),
(4, 12, 4, 'Inspección Extraordinaria', 'Alta', '2025-01-21', '2025-01-24', 'Finalizada', 'Falla reportada en sistema de frenado de carga', '2026-03-08 20:49:53'),
(5, 13, 5, 'Inspección Periódica', 'Media', '2025-01-25', '2025-02-05', 'Pendiente', 'Inspección semestral programada', '2026-03-08 20:49:53'),
(6, 13, 6, 'Post-mantenimiento', 'Alta', '2025-01-26', '2025-01-30', 'Cancelada', 'Cancelada - ascensor dado de baja temporalmente', '2026-03-08 20:49:53'),
(7, 14, 7, 'Inspección Periódica', 'Media', '2025-01-28', '2025-02-08', 'Programada', 'Revisión anual obligatoria edificio 20 pisos', '2026-03-08 20:49:53'),
(8, 14, 8, 'Inspección Inicial', 'Baja', '2025-01-29', '2025-02-15', 'Pendiente', 'Nueva incorporación al contrato de mantenimiento', '2026-03-08 20:49:53'),
(9, 15, 9, 'Inspección Periódica', 'Media', '2025-02-01', '2025-02-12', 'Programada', 'Inspección semestral bloque residencial', '2026-03-08 20:49:53'),
(10, 15, 10, 'Inspección Extraordinaria', 'Alta', '2025-02-02', '2025-02-05', 'Finalizada', 'Ruido inusual reportado por usuarios del montacamillas', '2026-03-08 20:49:53'),
(11, 16, 11, 'Inspección Periódica', 'Media', '2025-02-05', '2025-02-18', 'Pendiente', 'Vencimiento de certificado de inspección', '2026-03-08 20:49:53'),
(12, 16, 12, 'Post-mantenimiento', 'Media', '2025-02-06', '2025-02-14', 'Programada', 'Verificación tras cambio de cables de tracción', '2026-03-08 20:49:53'),
(13, 17, 13, 'Inspección Periódica', 'Alta', '2025-02-10', '2025-02-20', 'Programada', 'Inspección urgente - vencimiento de licencia', '2026-03-08 20:49:53'),
(14, 17, 14, 'Inspección Periódica', 'Media', '2025-02-11', '2025-02-25', 'Pendiente', 'Inspección semestral torre oeste', '2026-03-08 20:49:53'),
(15, 18, 15, 'Inspección Inicial', 'Baja', '2025-02-14', '2025-03-01', 'Pendiente', 'Primer contrato con la empresa - inspección de ingreso', '2026-03-08 20:49:53'),
(16, 18, 16, 'Post-mantenimiento', 'Alta', '2025-02-15', '2025-02-19', 'Cancelada', 'Cancelada - pendiente resolución de mantenimiento', '2026-03-08 20:49:53'),
(17, 19, 17, 'Inspección Periódica', 'Media', '2025-02-18', '2025-03-03', 'Programada', 'Inspección anual Torre 1', '2026-03-08 20:49:53'),
(18, 19, 18, 'Inspección Periódica', 'Media', '2025-02-19', '2025-03-05', 'Pendiente', 'Inspección anual Torre 2', '2026-03-08 20:49:53'),
(19, 20, 19, 'Inspección Periódica', 'Alta', '2025-02-22', '2025-03-06', 'Programada', 'Requerimiento de la curaduría urbana', '2026-03-08 20:49:53'),
(20, 20, 20, 'Inspección Extraordinaria', 'Alta', '2025-02-23', '2025-02-27', 'Finalizada', 'Reporte de sobrecarga en ascensor de servicios', '2026-03-08 20:49:53'),
(22, 35, 25, 'Inspección Periódica', 'Alta', '2026-04-06', '2026-04-06', 'Aprobada', 'Inspección anual reglamentaria según NTC 5926-1', '2026-04-06 12:47:42'),
(23, 11, 1, 'Inspección Periódica', 'Alta', '2026-04-09', '2026-04-30', 'Pendiente', 'Revisión anual', '2026-04-09 08:02:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `nombre_completo` varchar(150) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `contrasena` varchar(255) NOT NULL COMMENT 'Hash bcrypt',
  `telefono` varchar(255) DEFAULT NULL,
  `documento_identidad` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `ultima_sesion` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_rol`, `nombre_completo`, `correo`, `contrasena`, `telefono`, `documento_identidad`, `razon_social`, `nit`, `direccion`, `estado`, `fecha_registro`, `ultima_sesion`) VALUES
(1, 1, 'Juan Carlos Pérez', 'juan.perez@elevatec.com', 'hash_admin_123', '3004567891', '1023456789', 'Elevatec Inspecciones SAS', '901234567-1', 'Calle 45 #12-34 Bogotá', 'activo', '2025-01-10 13:00:00', '2025-03-01 14:10:00'),
(2, 2, 'Laura Andrea Gómez', 'laura.gomez@elevatec.com', 'hash_dirtec_123', '3015678943', '1034567890', 'Elevatec Inspecciones SAS', '901234567-1', 'Carrera 15 #88-20 Bogotá', 'activo', '2025-01-11 13:30:00', '2025-03-02 15:15:00'),
(3, 3, 'Carlos Andrés Ramírez', 'carlos.ramirez@elevatec.com', 'hash_coord_123', '3026789451', '1045678901', 'Elevatec Inspecciones SAS', '901234567-1', 'Calle 72 #10-55 Bogotá', 'activo', '2025-01-12 14:00:00', '2025-03-02 16:00:00'),
(4, 4, 'Andrés Felipe Martínez', 'andres.martinez@elevatec.com', 'hash_insp_123', '3007891234', '1056789012', 'Elevatec Inspecciones SAS', '901234567-1', 'Calle 100 #20-30 Bogotá', 'activo', '2025-01-13 12:45:00', '2025-03-01 13:40:00'),
(5, 4, 'Daniela Torres Rojas', 'daniela.torres@elevatec.com', 'hash_insp_456', '3012345678', '1067890123', 'Elevatec Inspecciones SAS', '901234567-1', 'Carrera 50 #40-12 Medellín', 'activo', '2025-01-14 13:10:00', '2025-03-02 14:25:00'),
(6, 4, 'Felipe Santiago Castro', 'felipe.castro@elevatec.com', 'hash_insp_789', '3023456789', '1078901234', 'Elevatec Inspecciones SAS', '901234567-1', 'Calle 33 #15-90 Cali', 'activo', '2025-01-15 13:30:00', '2025-03-01 19:10:00'),
(7, 3, 'Natalia Herrera López', 'natalia.herrera@elevatec.com', 'hash_coord_456', '3104567890', '1089012345', 'Elevatec Inspecciones SAS', '901234567-1', 'Carrera 7 #120-33 Bogotá', 'activo', '2025-01-16 14:15:00', '2025-03-02 20:40:00'),
(8, 4, 'Sergio Alejandro Vargas', 'sergio.vargas@elevatec.com', 'hash_insp_321', '3115678901', '1090123456', 'Elevatec Inspecciones SAS', '901234567-1', 'Calle 80 #25-40 Bogotá', 'activo', '2025-01-17 12:50:00', '2025-03-02 13:10:00'),
(9, 5, 'Paola Rojas Méndez', 'paola.rojas@elevatec.com', 'hash_asesor_123', '3126789012', '1101234567', 'Elevatec Inspecciones SAS', '901234567-1', 'Calle 60 #30-12 Bucaramanga', 'activo', '2025-01-18 15:00:00', '2025-03-01 21:20:00'),
(10, 5, 'Miguel Ángel Salazar', 'miguel.salazar@elevatec.com', 'hash_asesor_456', '3137890123', '1112345678', 'Elevatec Inspecciones SAS', '901234567-1', 'Carrera 19 #45-67 Bogotá', 'activo', '2025-01-19 15:30:00', '2025-03-02 17:00:00'),
(11, 6, 'Camila Fernanda Mendoza', 'camila.mendoza@torresaltas.com', 'hash_cliente_123', '3148901234', '1123456789', 'Torres Altas PH', '900456789-2', 'Calle 120 #15-88 Bogotá', 'activo', '2025-01-20 14:00:00', '2025-02-28 16:30:00'),
(12, 6, 'Ricardo Suárez Gómez', 'ricardo.suarez@ascensoresplus.com', 'hash_cliente_456', '3159012345', '1134567890', 'Ascensores Plus SAS', '900567890-3', 'Carrera 11 #93-40 Bogotá', 'activo', '2025-01-21 14:10:00', '2025-03-01 15:45:00'),
(13, 6, 'Patricia León Vargas', 'patricia.leon@edificiolago.com', 'hash_cliente_789', '3160123456', '1145678901', 'Edificio Lago Azul', '900678901-4', 'Calle 85 #13-22 Bogotá', 'activo', '2025-01-22 14:20:00', '2025-02-27 20:10:00'),
(14, 6, 'Diego Fernando Navarro', 'diego.navarro@torresdelnorte.com', 'hash_cliente_321', '3171234567', '1156789012', 'Torres del Norte PH', '900789012-5', 'Carrera 9 #150-60 Bogotá', 'activo', '2025-01-23 14:30:00', '2025-03-01 13:50:00'),
(15, 6, 'Sandra Milena Pineda', 'sandra.pineda@residencialsol.com', 'hash_cliente_654', '3182345678', '1167890123', 'Residencial Sol Naciente', '900890123-6', 'Calle 170 #8-40 Bogotá', 'activo', '2025-01-24 14:40:00', '2025-02-26 22:20:00'),
(16, 6, 'Jorge Alberto Cárdenas', 'jorge.cardenas@edificiocentral.com', 'hash_cliente_987', '3193456789', '1178901234', 'Edificio Central Plaza', '900901234-7', 'Carrera 14 #60-55 Bogotá', 'activo', '2025-01-25 15:00:00', '2025-02-28 14:15:00'),
(17, 6, 'Valentina Ortiz Delgado', 'valentina.ortiz@torresdelrio.com', 'hash_cliente_741', '3204567891', '1189012345', 'Torres del Río PH', '901012345-8', 'Calle 110 #20-30 Bogotá', 'activo', '2025-01-26 15:20:00', '2025-03-01 18:00:00'),
(18, 6, 'Oscar Javier Castillo', 'oscar.castillo@conjuntoprimavera.com', 'hash_cliente_852', '3215678902', '1190123456', 'Conjunto Primavera', '901123456-9', 'Carrera 70 #45-20 Medellín', 'activo', '2025-01-27 15:40:00', '2025-02-25 16:10:00'),
(19, 6, 'Andrea Beltrán Ríos', 'andrea.beltran@edificioparque.com', 'hash_cliente_963', '3226789013', '1201234567', 'Edificio Parque Central', '901234567-0', 'Calle 50 #30-45 Cali', 'activo', '2025-01-28 16:00:00', '2025-03-01 19:45:00'),
(20, 6, 'Mauricio Galindo Torres', 'mauricio.galindo@torresdelvalle.com', 'hash_cliente_159', '3237890124', '1212345678', 'Torres del Valle PH', '901345678-1', 'Carrera 80 #25-90 Barranquilla', 'activo', '2025-01-29 16:20:00', '2025-02-27 21:00:00'),
(21, 1, 'Leanne Graham', 'Sincere@april.biz', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(22, 1, 'Ervin Howell', 'Shanna@melissa.tv', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(23, 1, 'Clementine Bauch', 'Nathan@yesenia.net', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(24, 1, 'Patricia Lebsack', 'Julianne.OConner@kory.org', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(25, 1, 'Chelsey Dietrich', 'Lucio_Hettinger@annie.ca', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(26, 1, 'Mrs. Dennis Schulist', 'Karley_Dach@jasper.info', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(27, 1, 'Kurtis Weissnat', 'Telly.Hoeger@billy.biz', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(28, 1, 'Nicholas Runolfsdottir V', 'Sherwood@rosamond.me', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(29, 1, 'Glenna Reichert', 'Chaim_McDermott@dana.io', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(30, 1, 'Clementina DuBuque', 'Rey.Padberg@karina.biz', 'externa123', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 01:24:01', NULL),
(31, 1, 'María González', 'maria@email.com', '12345678', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-20 02:30:57', NULL),
(32, 1, 'Usuario Prueba', 'prueba@liftsafe.com', '12345678', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-03-22 03:47:39', NULL),
(33, 1, 'Usuario Prueba', 'nuevo@test.com', '12345678', NULL, NULL, NULL, NULL, NULL, 'Activo', '2026-04-01 01:53:55', NULL),
(34, 4, 'Usuario Prueba Actualizado', 'usuario.prueba@liftsafe.com', '12345678', '3008887777', '1234567890', NULL, NULL, 'Carrera 67 #89-10, Medellín', 'Activo', '2026-04-01 03:06:49', NULL),
(35, 6, 'Maria Fernanda Rojas', 'maria.rojas@torresdelnorte.com', 'hash.maria123', '3105551234', '52345678', 'Torres del Torre PH', '901234567-8', 'Carrera 9 #150-60, Bogotá', 'activo', '2026-04-06 12:34:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_ascensor`
--

CREATE TABLE `usuario_ascensor` (
  `id_usuario_ascensor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL COMMENT 'Inspector o técnico',
  `id_ascensor` int(11) NOT NULL,
  `tipo_asignacion` varchar(255) NOT NULL,
  `fecha_asignacion` date NOT NULL,
  `fecha_desasignacion` date DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_ascensor`
--

INSERT INTO `usuario_ascensor` (`id_usuario_ascensor`, `id_usuario`, `id_ascensor`, `tipo_asignacion`, `fecha_asignacion`, `fecha_desasignacion`, `observaciones`) VALUES
(21, 4, 1, 'Responsable Principal', '2025-01-05', NULL, 'Inspector principal zona norte Bogotá'),
(22, 5, 2, 'Inspector Alterno', '2025-01-05', NULL, 'Cubre ausencias del responsable principal'),
(23, 4, 3, 'Responsable Principal', '2025-01-08', NULL, 'Asignado por cercanía de zona'),
(24, 6, 4, 'Responsable Principal', '2025-01-08', NULL, 'Especialista en ascensores de carga'),
(25, 5, 5, 'Responsable Principal', '2025-01-10', NULL, 'Inspector zona occidente'),
(26, 8, 6, 'Responsable Principal', '2025-01-10', '2025-02-15', 'Ascensor inactivo - suspendida asignación'),
(27, 4, 7, 'Responsable Principal', '2025-01-12', NULL, 'Torres del norte - edificio de 20 pisos'),
(28, 6, 8, 'Inspector Alterno', '2025-01-12', NULL, 'Apoyo en zona norte'),
(29, 8, 9, 'Responsable Principal', '2025-01-14', NULL, 'Asignado por disponibilidad'),
(30, 5, 10, 'Responsable Principal', '2025-01-14', NULL, 'Especialista en montacamillas'),
(31, 4, 11, 'Inspector Alterno', '2025-01-16', NULL, 'Rotación por carga de trabajo'),
(32, 6, 12, 'Responsable Principal', '2025-01-16', NULL, 'Especialista en ascensores de carga pesada'),
(33, 8, 13, 'Responsable Principal', '2025-01-18', NULL, 'Torres del río - zona sur'),
(34, 5, 14, 'Inspector Alterno', '2025-01-18', NULL, 'Apoyo torre oeste'),
(35, 6, 15, 'Responsable Principal', '2025-01-20', NULL, 'Conjunto Primavera - asignación regular'),
(36, 4, 16, 'Responsable Principal', '2025-01-20', '2025-02-20', 'Ascensor inactivo - en espera de mantenimiento'),
(37, 8, 17, 'Responsable Principal', '2025-01-22', NULL, 'Torre 1 edificio parque central'),
(38, 5, 18, 'Inspector Alterno', '2025-01-22', NULL, 'Torre 2 - apoyo en inspecciones'),
(39, 6, 19, 'Responsable Principal', '2025-01-24', NULL, 'Torres del valle - responsable zona'),
(40, 8, 20, 'Responsable Principal', '2025-01-24', NULL, 'Zona de servicios - carga');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ascensor`
--
ALTER TABLE `ascensor`
  ADD PRIMARY KEY (`id_ascensor`),
  ADD UNIQUE KEY `codigo_interno` (`codigo_interno`),
  ADD KEY `idx_cliente` (`id_cliente`);

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id_auditoria`),
  ADD KEY `idx_usuario` (`id_usuario`);

--
-- Indices de la tabla `checklist_categoria`
--
ALTER TABLE `checklist_categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nombre_categoria` (`nombre_categoria`);

--
-- Indices de la tabla `checklist_item`
--
ALTER TABLE `checklist_item`
  ADD PRIMARY KEY (`id_item`),
  ADD UNIQUE KEY `codigo_item` (`codigo_item`),
  ADD KEY `idx_categoria` (`id_categoria`);

--
-- Indices de la tabla `detalle_checklist`
--
ALTER TABLE `detalle_checklist`
  ADD PRIMARY KEY (`id_detalle`),
  ADD UNIQUE KEY `id_inspeccion` (`id_inspeccion`,`id_item`),
  ADD KEY `idx_item` (`id_item`);

--
-- Indices de la tabla `fotografia`
--
ALTER TABLE `fotografia`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `idx_informe` (`id_informe`),
  ADD KEY `idx_item` (`id_item`);

--
-- Indices de la tabla `informe`
--
ALTER TABLE `informe`
  ADD PRIMARY KEY (`id_informe`),
  ADD UNIQUE KEY `id_inspeccion` (`id_inspeccion`),
  ADD UNIQUE KEY `numero_informe` (`numero_informe`),
  ADD KEY `idx_revisor` (`id_revisor`);

--
-- Indices de la tabla `inspeccion`
--
ALTER TABLE `inspeccion`
  ADD PRIMARY KEY (`id_inspeccion`),
  ADD KEY `idx_programacion` (`id_programacion`),
  ADD KEY `idx_ascensor` (`id_ascensor`),
  ADD KEY `idx_inspector` (`id_inspector`),
  ADD KEY `idx_solicitud` (`id_solicitud`);

--
-- Indices de la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD PRIMARY KEY (`id_observacion`),
  ADD KEY `idx_informe` (`id_informe`);

--
-- Indices de la tabla `programacion`
--
ALTER TABLE `programacion`
  ADD PRIMARY KEY (`id_programacion`),
  ADD KEY `idx_solicitud` (`id_solicitud`),
  ADD KEY `idx_inspector` (`id_inspector`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `nombre_rol` (`nombre_rol`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `idx_cliente` (`id_cliente`),
  ADD KEY `idx_ascensor` (`id_ascensor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `idx_usuario_rol` (`id_rol`);

--
-- Indices de la tabla `usuario_ascensor`
--
ALTER TABLE `usuario_ascensor`
  ADD PRIMARY KEY (`id_usuario_ascensor`),
  ADD KEY `idx_usuario` (`id_usuario`),
  ADD KEY `idx_ascensor` (`id_ascensor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ascensor`
--
ALTER TABLE `ascensor`
  MODIFY `id_ascensor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id_auditoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `checklist_categoria`
--
ALTER TABLE `checklist_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `checklist_item`
--
ALTER TABLE `checklist_item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `detalle_checklist`
--
ALTER TABLE `detalle_checklist`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `fotografia`
--
ALTER TABLE `fotografia`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `informe`
--
ALTER TABLE `informe`
  MODIFY `id_informe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `inspeccion`
--
ALTER TABLE `inspeccion`
  MODIFY `id_inspeccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `observacion`
--
ALTER TABLE `observacion`
  MODIFY `id_observacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `programacion`
--
ALTER TABLE `programacion`
  MODIFY `id_programacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `usuario_ascensor`
--
ALTER TABLE `usuario_ascensor`
  MODIFY `id_usuario_ascensor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ascensor`
--
ALTER TABLE `ascensor`
  ADD CONSTRAINT `fk_ascensor_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD CONSTRAINT `fk_auditoria_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL;

--
-- Filtros para la tabla `checklist_item`
--
ALTER TABLE `checklist_item`
  ADD CONSTRAINT `fk_item_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `checklist_categoria` (`id_categoria`);

--
-- Filtros para la tabla `detalle_checklist`
--
ALTER TABLE `detalle_checklist`
  ADD CONSTRAINT `fk_detalle_inspeccion` FOREIGN KEY (`id_inspeccion`) REFERENCES `inspeccion` (`id_inspeccion`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_detalle_item` FOREIGN KEY (`id_item`) REFERENCES `checklist_item` (`id_item`);

--
-- Filtros para la tabla `fotografia`
--
ALTER TABLE `fotografia`
  ADD CONSTRAINT `fk_foto_informe` FOREIGN KEY (`id_informe`) REFERENCES `informe` (`id_informe`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_foto_item` FOREIGN KEY (`id_item`) REFERENCES `checklist_item` (`id_item`) ON DELETE SET NULL;

--
-- Filtros para la tabla `informe`
--
ALTER TABLE `informe`
  ADD CONSTRAINT `fk_informe_inspeccion` FOREIGN KEY (`id_inspeccion`) REFERENCES `inspeccion` (`id_inspeccion`),
  ADD CONSTRAINT `fk_informe_revisor` FOREIGN KEY (`id_revisor`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `inspeccion`
--
ALTER TABLE `inspeccion`
  ADD CONSTRAINT `fk_inspeccion_ascensor` FOREIGN KEY (`id_ascensor`) REFERENCES `ascensor` (`id_ascensor`),
  ADD CONSTRAINT `fk_inspeccion_inspector` FOREIGN KEY (`id_inspector`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `fk_inspeccion_programacion` FOREIGN KEY (`id_programacion`) REFERENCES `programacion` (`id_programacion`),
  ADD CONSTRAINT `fk_inspeccion_solicitud` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`);

--
-- Filtros para la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD CONSTRAINT `fk_observacion_informe` FOREIGN KEY (`id_informe`) REFERENCES `informe` (`id_informe`) ON DELETE CASCADE;

--
-- Filtros para la tabla `programacion`
--
ALTER TABLE `programacion`
  ADD CONSTRAINT `fk_programacion_inspector` FOREIGN KEY (`id_inspector`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `fk_programacion_solicitud` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_solicitud_ascensor` FOREIGN KEY (`id_ascensor`) REFERENCES `ascensor` (`id_ascensor`),
  ADD CONSTRAINT `fk_solicitud_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `usuario_ascensor`
--
ALTER TABLE `usuario_ascensor`
  ADD CONSTRAINT `fk_usuarioascensor_ascensor` FOREIGN KEY (`id_ascensor`) REFERENCES `ascensor` (`id_ascensor`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_usuarioascensor_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
