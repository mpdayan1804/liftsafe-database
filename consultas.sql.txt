-- =====================================================
-- REPORTE DE PROGRAMACIÓN SEMANAL
-- INSPECTORES: 6 (jornada de 8 horas, lunes a viernes)
-- SEMANA: 15 AL 19 DE ABRIL DE 2026
-- =====================================================

USE liftsafe_db;

-- CONSULTA PRINCIPAL
SELECT 
    p.id_programacion AS 'ID Programación',
    DATE_FORMAT(p.fecha_programada, '%d/%m/%Y') AS 'Fecha',
    DAYNAME(p.fecha_programada) AS 'Día',
    TIME_FORMAT(p.hora_inicio, '%H:%i') AS 'Hora Inicio',
    TIME_FORMAT(p.hora_fin_estimada, '%H:%i') AS 'Hora Fin',
    TIMESTAMPDIFF(HOUR, p.hora_inicio, p.hora_fin_estimada) AS 'Horas',
    u.nombre_completo AS 'Inspector',
    u.telefono AS 'Teléfono Inspector',
    a.codigo_interno AS 'Código Ascensor',
    CONCAT(a.marca, ' ', a.modelo) AS 'Marca/Modelo',
    a.tipo_ascensor AS 'Tipo',
    a.ciudad AS 'Ciudad',
    a.direccion_completa AS 'Dirección',
    c.nombre_completo AS 'Cliente',
    s.tipo_servicio AS 'Tipo Servicio',
    s.prioridad AS 'Prioridad',
    p.estado AS 'Estado'
FROM programacion p
INNER JOIN usuario u ON p.id_inspector = u.id_usuario
INNER JOIN solicitud s ON p.id_solicitud = s.id_solicitud
INNER JOIN ascensor a ON s.id_ascensor = a.id_ascensor
INNER JOIN usuario c ON s.id_cliente = c.id_usuario
WHERE u.id_rol = 4 
  AND u.estado = 'activo'
  AND p.estado = 'Programada'
  AND p.fecha_programada BETWEEN '2026-04-15' AND '2026-04-19'
ORDER BY p.fecha_programada, p.hora_inicio, u.nombre_completo;

-- =====================================================
-- RESUMEN DE HORAS POR INSPECTOR
-- Jornada semanal: 40 horas (8 horas x 5 días)
-- =====================================================

SELECT 
    u.nombre_completo AS 'Inspector',
    COUNT(p.id_programacion) AS 'Total Inspecciones',
    ROUND(SUM(TIMESTAMPDIFF(HOUR, p.hora_inicio, p.hora_fin_estimada)), 1) AS 'Horas Programadas',
    ROUND(40 - SUM(TIMESTAMPDIFF(HOUR, p.hora_inicio, p.hora_fin_estimada)), 1) AS 'Horas Disponibles',
    CONCAT(ROUND((SUM(TIMESTAMPDIFF(HOUR, p.hora_inicio, p.hora_fin_estimada)) / 40) * 100, 1), '%') AS 'Ocupación'
FROM programacion p
INNER JOIN usuario u ON p.id_inspector = u.id_usuario
WHERE u.id_rol = 4 
  AND u.estado = 'activo'
  AND p.estado = 'Programada'
  AND p.fecha_programada BETWEEN '2026-04-15' AND '2026-04-19'
GROUP BY u.id_usuario, u.nombre_completo
ORDER BY `Horas Programadas` DESC;

-- =====================================================
-- DISTRIBUCIÓN DE INSPECCIONES POR DÍA
-- =====================================================

SELECT 
    p.fecha_programada AS 'Fecha',
    DAYNAME(p.fecha_programada) AS 'Día',
    COUNT(DISTINCT p.id_inspector) AS 'Inspectores Asignados',
    COUNT(p.id_programacion) AS 'Total Inspecciones',
    ROUND(SUM(TIMESTAMPDIFF(HOUR, p.hora_inicio, p.hora_fin_estimada)), 1) AS 'Horas Totales',
    ROUND(AVG(TIMESTAMPDIFF(HOUR, p.hora_inicio, p.hora_fin_estimada)), 1) AS 'Promedio Horas x Inspección'
FROM programacion p
WHERE p.estado = 'Programada'
  AND p.fecha_programada BETWEEN '2026-04-15' AND '2026-04-19'
GROUP BY p.fecha_programada
ORDER BY p.fecha_programada;

-- =====================================================
-- CONSULTA SIMPLE - DATOS BÁSICOS
-- =====================================================

SELECT 
    p.id_programacion,
    p.fecha_programada,
    p.hora_inicio,
    p.hora_fin_estimada,
    u.nombre_completo AS inspector,
    a.codigo_interno,
    a.marca,
    a.modelo,
    s.tipo_servicio
FROM programacion p
INNER JOIN usuario u ON p.id_inspector = u.id_usuario
INNER JOIN solicitud s ON p.id_solicitud = s.id_solicitud
INNER JOIN ascensor a ON s.id_ascensor = a.id_ascensor
WHERE u.id_rol = 4 
  AND u.estado = 'activo'
  AND p.estado = 'Programada'
  AND p.fecha_programada BETWEEN '2026-04-15' AND '2026-04-19'
ORDER BY p.fecha_programada, p.hora_inicio;

-- =====================================================
-- VERIFICAR SI EXISTEN PROGRAMACIONES EN ESA SEMANA
-- =====================================================

SELECT 
    fecha_programada,
    COUNT(*) AS cantidad_programaciones,
    COUNT(DISTINCT id_inspector) AS cantidad_inspectores
FROM programacion
WHERE fecha_programada BETWEEN '2026-04-15' AND '2026-04-19'
  AND estado = 'Programada'
GROUP BY fecha_programada
ORDER BY fecha_programada;
