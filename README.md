# Parcial Práctico No. 1 - Bases de Datos

Parcial práctico No.1 - Bases de Datos Servicios Limar,
proyecto realizado para la asignatura de Bases de Datos de la Universidad del Valle.

## Descripción

Este proyecto consiste en el despliegue de un entorno de base de datos utilizando Docker, PostgreSQL y pgAdmin para el sistema de generación de turnos de Servicios LiMar.

El despliegue de los contenedores se realizó manualmente utilizando comandos Docker en Windows.

## Tecnologías utilizadas

- Docker Desktop
- PostgreSQL v14
- pgAdmin v4
- PostgreSQL
- SQL
- Docker

## Configuración del contenedor PostgreSQL

Se creó manualmente un contenedor con PostgreSQL versión 14 utilizando las siguientes credenciales:

- Usuario: ulimar
- Contraseña: ex4men_db

### Comando utilizado

```bash
docker run --name postgres_servilimar2 ^
-e POSTGRES_USER=ulimar ^
-e POSTGRES_PASSWORD=ex4men_db ^
-p 5433:5432 ^
-d postgres:14
```
---

## Configuración del contenedor pgAdmin

Se creó manualmente un contenedor con pgAdmin v4 utilizando las siguientes credenciales:

- Correo: usuario@servilimar.com
- Contraseña: limar#123

### Comando utilizado

```bash
docker run --name pgadmin-servilimar2 ^
-e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com ^
-e PGADMIN_DEFAULT_PASSWORD=limar#123 ^
-p 5051:80 ^
-d dpage/pgadmin4
```
---

## Verificación de contenedores

Para verificar que los contenedores se encuentran en ejecución se utilizó:

```bash
docker ps
```
---

## Acceso a pgAdmin

Para ingresar a pgAdmin se utilizó la siguiente dirección en el navegador:

```txt
http://localhost:5051
```
---

## Conexión al servidor PostgreSQL

Parámetros utilizados para la conexión:

| Parámetro | Valor |
|---|---|
| Host name/address | host.docker.internal |
| Port | 5433 |
| Maintenance database | postgres |
| Username | ulimar |
| Password | ex4men_db |

---

## Base de datos creada

Nombre de la base de datos:

```txt
servilimar
```
---

## Archivos SQL incluidos

Este repositorio incluye:

- `ddl_servilimar2.sql`
  - Contiene las instrucciones DDL para la creación de tablas y relaciones.

- `dml_servilimar2.sql`
  - Contiene las instrucciones DML para la inserción de registros de prueba.
---

## Objetivo del proyecto

Demostrar la capacidad para:

- Desplegar servicios utilizando Docker
- Configurar PostgreSQL y pgAdmin
- Crear bases de datos y tablas mediante DDL
- Insertar registros utilizando DML
- Administrar un entorno básico de bases de datos

---

## Autor

Jorge Iván Belalcázar  
