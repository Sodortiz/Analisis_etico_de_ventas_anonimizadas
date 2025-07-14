CREATE ROLE analista_ventas WITH
    LOGIN
    PASSWORD 'Analista123$'
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT;

GRANT CONNECT ON DATABASE Ventas TO analista_ventas;
GRANT USAGE ON SCHEMA public TO analista_ventas;
GRANT SELECT ON ventas_anonimizadas TO analista_ventas;
