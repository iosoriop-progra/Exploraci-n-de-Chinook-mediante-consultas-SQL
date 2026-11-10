# Exploración de Chinook mediante consultas SQL

## 1. Descripción del proyecto

Este proyecto consiste en realizar una práctica de consultas SQL utilizando la base de datos Chinook en PostgreSQL.

El objetivo es aprender a consultar información de clientes y canciones mediante diferentes operadores y condiciones, sin modificar los datos originales.

## 2. Herramientas utilizadas

- PostgreSQL: sistema gestor de base de datos.
- Docker Compose: para levantar el entorno local.
- DataGrip: para conectarse a PostgreSQL y ejecutar las consultas.
- Visual Studio Code: para escribir y organizar el código SQL.
- GitHub: para guardar y compartir el proyecto.

## 3. Base de datos

Se utiliza la base de datos Chinook, en su versión para PostgreSQL con claves primarias SERIAL.



La base de datos contiene información sobre clientes, canciones, álbumes, artistas y otros datos relacionados con una tienda musical.

Se trabaja principalmente con las tablas:

- `customer`: contiene la información de los clientes.
- `track`: contiene la información de las canciones.



## 4. Requisitos

Para realizar esta práctica se necesita:

- PostgreSQL instalado o funcionando mediante Docker.
- Docker Desktop, si se utiliza Docker Compose.
- DataGrip o un cliente compatible con PostgreSQL.
- Visual Studio Code.
- Archivo SQL de Chinook.

## 5. Instalación y configuración

Primero se debe iniciar el servicio de PostgreSQL localmente.

La importación debe realizarse en un entorno de práctica que no contenga información importante que deba conservarse.

## 6. Conexión a PostgreSQL

Para conectarse desde DataGrip se utilizan los siguientes datos:

- Host: localhost
- Puerto: 5432
- Base de datos: chinook_serial
- Usuario: el configurado en PostgreSQL
- Contraseña: la configurada localmente

Una vez establecida la conexión, se puede comprobar que las tablas estén disponibles.

## 7. Consultas realizadas

El archivo `consultas.sql` contiene diez apartados:

1. Directorio de clientes.
2. Países representados.
3. Criterio numérico.
4. Alternativas controladas.
5. Pertenencia.
6. Intervalo.
7. Patrones con LIKE e ILIKE.
8. Valores NULL y NOT NULL.
9. Ranking de canciones.
10. Paginación de clientes.

Todas las consultas están diseñadas para trabajar únicamente con los datos existentes y no modificarlos.

## 8. Ejecución de las consultas

Para ejecutar la práctica:

1. Abrir el proyecto en Visual Studio Code o DataGrip.
2. Conectarse a la base de datos `chinook_serial`.
3. Abrir el archivo `consultas.sql`.
4. Ejecutar cada apartado.
5. Revisar los resultados obtenidos.

## 9. Estructura del proyecto

Los archivos de Docker se incluyen cuando se utiliza este método para configurar el entorno local.

