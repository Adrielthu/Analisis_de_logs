-- Crear la base de datos de Grafana
CREATE DATABASE grafana;

-- Crear usuario para Grafana
CREATE USER grafana_user WITH PASSWORD 'grafana_db_password';

-- Dar permisos al usuario sobre la DB grafana
GRANT ALL PRIVILEGES ON DATABASE grafana TO grafana_user;
