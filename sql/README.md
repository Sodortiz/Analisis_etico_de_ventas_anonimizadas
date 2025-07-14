# 🗄️ Módulo SQL – Gestión de Datos Anonimizados en PostgreSQL

Este módulo contiene la implementación de una base de datos relacional en PostgreSQL para almacenar y proteger información anonimizada de ventas, conforme a las normativas de privacidad de datos (RGPD / CCPA).

Se incluye:

- Definición de la tabla principal con datos ya despersonalizados.
- Configuración de roles con privilegios limitados para asegurar el acceso ético.
- Proceso de carga desde archivos CSV anonimizados.

---

## 🧱 Estructura de la tabla: `ventas_anonimizadas`

El script `create_table.sql` define la estructura de la tabla:

- **id_venta**: clave primaria única por transacción.
- **cliente_id**: identificador pseudoanonimizado del cliente.
- **region**: región general (sin ciudad específica) para evitar exposición geográfica.
- **producto, categoría, fecha_venta, monto**: atributos no sensibles utilizados para análisis.

---

## 🔐 Seguridad y control de acceso

El script `control_acceso.sql` establece un rol de solo lectura llamado `analista_ventas`, que cumple con las mejores prácticas de seguridad:

- Sin privilegios administrativos.
- Acceso restringido a la base `postgres`, esquema `public` y tabla `ventas_anonimizadas`.
- Pensado para analistas que consumen información sin modificarla.

Esto garantiza:

- ✅ Confidencialidad de los datos.
- ✅ Cumplimiento de políticas de privacidad.
- ✅ Control de auditoría sobre accesos y roles.

---

## 📥 Carga de datos

Los datos despersonalizados se importan desde: /data/anonimizados/Dataset_de_Ventas_Anonimizado.csv
La carga se realiza desde **pgAdmin** mediante el asistente de *Import Data* o usando un script SQL personalizado.

---

## ✅ Buenas prácticas aplicadas

- Separación clara de scripts por propósito.
- Principio de mínimo privilegio en la gestión de roles.
- Documentación explícita y profesional.
- Preparado para integrarse con herramientas de visualización como Power BI.



