# 🧼 Documentación de Anonimización y Limpieza de Datos

Este documento explica de forma detallada las acciones realizadas sobre el dataset original para cumplir con buenas prácticas de privacidad según RGPD y CCPA.

---

## 🔹 1. Resumen del Proceso

| Etapa               | Acción realizada                                                               | Herramienta        |
|---------------------|---------------------------------------------------------------------------------|--------------------|
| Ingesta             | Carga de `Dataset_de_Ventas.csv`                                                | Excel              |
| Identificación      | Se marcaron como sensibles: `Nombre_cliente`, `Email`, `Ciudad`                | Análisis manual    |
| Detección duplicados| Se combinó Nombre + Email y se detectaron claves repetidas                     | Fórmulas Excel     |
| Cliente_ID          | Se generó código único por cliente (`Cliente_001`, etc.)                        | Excel              |
| Generalización      | `Ciudad` se convirtió a `Región` (Occidente, Centro, etc.)                      | Excel / lógica     |
| Eliminación         | Se eliminaron columnas sensibles                                                 | Excel              |
| Exportación final   | Se generó CSV limpio listo para PostgreSQL                                      | Excel (guardar como)|

---

## 🔹 2. Mapa de Datos Original

| Columna original | Tipo de dato | ¿Dato sensible? | Acción tomada           |
|------------------|--------------|------------------|--------------------------|
| Nombre_cliente   | Texto        | ✅ Sí             | Reemplazado por ID       |
| Email            | Texto        | ✅ Sí             | Eliminado                |
| Ciudad           | Texto        | ⚠️ Cuasi          | Generalizado a región    |
| Producto         | Texto        | ❌ No             | Sin cambios              |
| Categoría        | Texto        | ❌ No             | Sin cambios              |
| Fecha_venta      | Fecha        | ❌ No             | Sin cambios              |
| Monto            | Numérico     | ❌ No             | Sin cambios              |

---

## 🔹 3. Diccionario de Regiones

| Prefijo / patrón ciudad | Región asignada      | Justificación                                 |
| ----------------------- | -------------------- | --------------------------------------------- |
| San … de la Montaña     | Región Sierra        | Simula ciudades montañosas                    |
| San … los altos         | Región Norte         | Nombres elevados, asociado a altura           |
| San … los bajos         | Región Sur           | Bajo relieve → región sur o cálida            |
| San …                   | Región Centro        | Por defecto si no tiene “altos/bajos/montaña” |
| Nueva …                 | Región Internacional | Ciudades Nuneva                               |
| Vieja …                 | Región Histórica     | Representan ciudades “viejas”                 |


---

## 🔹 4. Trazabilidad de Clientes (simulado)

| Nombre_cliente | Email              | Cliente_ID   |
|----------------|--------------------|--------------|
| Juan Pérez     | juanp@gmail.com    | Cliente_001  |
| Laura García   | laura.g@x.com      | Cliente_002  |
| Juan Pérez     | juanp@gmail.com    | Cliente_001  |

---



