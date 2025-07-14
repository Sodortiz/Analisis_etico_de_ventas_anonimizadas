# 🛡️ Proyecto: Análisis Ético de Ventas Anonimizadas

Este proyecto demuestra cómo realizar un análisis profesional de ventas respetando las normativas de privacidad (RGPD y CCPA). Abarca desde la generación del dataset, la anonimización con trazabilidad, hasta la visualización en Power BI conectada a una base PostgreSQL.

## 🧰 Herramientas
- **Microsoft Excel** → Limpieza, eliminación de duplicados, generación de ID cliente.
- **PostgreSQL** → Estructura de datos, control de acceso, conexión a Power BI.
- **Power BI** → Visualizaciones interactivas con enfoque de negocio.
- **dbdiagram.io / draw.io** → Modelo entidad-relación del proyecto.
- **GitHub** → Versionado, documentación y exposición profesional.

## 🧪 Técnicas destacadas
- Reemplazo de identificadores directos
- Generalización geográfica
- Control de acceso en base de datos
- Visualizaciones dinámicas filtradas sin exposición de datos personales

## 🛡️ Cumplimiento simulado
- RGPD: seudonimización, minimización, trazabilidad de cambios.
- CCPA: sin venta de datos, derecho a no ser rastreado.

## 📊 Resultados clave
- Top productos vendidos
- Regiones con mayores ventas
- Ticket promedio mensual
- Dashboard interactivo sin exposición de identidad del cliente

## 📂 Estructura del proyecto
##Analisis_etico_de_ventas_anonimizadas/
##data/
├── original/            # Datos crudos simulados con identificadores reales
└── anonimizados/        # Datos despersonalizados listos para análisis

##sql/
├── create_table.sql     # Script para crear la tabla en PostgreSQL
└── control_acceso.sql   # (opcional) Rol de analista con acceso limitado

##powerbi/
└── dashboard.pbix       # Dashboard con visualizaciones empresariales

##excel/
├── generacion_id_clientes.xlsx   # Limpieza y asignación de ID
└── log_cambios_anonimizacion.xlsx # Registro de decisiones y trazabilidad

##docs/
├── decisiones_privacidad.md      # Justificación ética y legal
└── capturas_dashboard/           # Imágenes del dashboard Power BI
