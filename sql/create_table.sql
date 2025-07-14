CREATE TABLE ventas_anonimizadas (
    id_venta INTEGER PRIMARY KEY,
    cliente_id TEXT NOT NULL,
    region TEXT,
    producto TEXT,
    categoria TEXT,
    fecha_venta DATE,
    monto NUMERIC(10, 2)
);
