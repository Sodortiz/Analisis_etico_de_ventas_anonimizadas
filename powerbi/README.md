## 📊 Análisis Visual con Power BI

En esta fase se construyó un dashboard interactivo en Power BI utilizando el conjunto de datos previamente anonimizado y cargado en PostgreSQL.

### Objetivos:
- Visualizar patrones de ventas.
- Facilitar el análisis segmentado por región, categoría y fechas.
- Automatizar cálculos básicos y explorar tendencias sin exponer datos sensibles.

### Elementos incluidos en el dashboard:

- **Indicadores clave (KPI)**:
  - Suma total de monto de ventas.
  - Total de transacciones (`id_venta`).

- **Gráficos**:
  - Ventas por región.
  - Ventas por producto.
  - Evolución de ventas por año.

- **Segmentadores interactivos (slicers)**:
  - Filtro por **región**.
  - Filtro por **categoría** de producto.
  - Filtro por **rango de fechas** (`fecha_venta`).

