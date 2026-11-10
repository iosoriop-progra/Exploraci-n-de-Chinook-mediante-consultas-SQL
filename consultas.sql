-- APARTADO 1: DIRECTORIO DE CLIENTES


SELECT
    customer_id AS codigo_cliente,
    first_name AS nombre_cliente,
    last_name AS apellido_cliente,
    email AS correo
FROM customer;

/*
Interpretación:
Muestra el código, nombre, apellido y correo de los clientes.
Los alias permiten identificar fácilmente cada columna.
*/


-- APARTADO 2: PAISES REPRESENTADOS

SELECT DISTINCT
    country AS pais
FROM customer
ORDER BY country ASC;

/*
Interpretación:
DISTINCT evita que los países aparezcan repetidos.
Cada fila representa un país con clientes registrados.
*/



-- APARTADO 3: CRITERIO NUMERICO


SELECT
    track_id,
    name AS nombre_cancion,
    milliseconds AS duracion,
    unit_price AS precio
FROM track
WHERE milliseconds > 240000
  AND unit_price > 1;

/*
Interpretación:
240000 milisegundos equivalen a 4 minutos.
Se buscan canciones que superen esa duración y cuyo
precio sea mayor a 1 dólar. Ambas condiciones deben cumplirse.
*/



-- APARTADO 4: ALTERNATIVAS CONTROLADAS

SELECT
    customer_id,
    first_name AS nombre,
    last_name AS apellido,
    country AS pais,
    support_rep_id AS representante
FROM customer
WHERE (country = 'Brazil' OR country = 'Argentina')
  AND (support_rep_id = 3 OR support_rep_id = 5);

/*
Interpretación:
OR permite seleccionar cualquiera de las opciones.
AND exige que se cumplan los dos grupos de condiciones.
Los paréntesis organizan la evaluación de la consulta.

Sin paréntesis, AND tiene prioridad sobre OR y puede
cambiar los clientes que aparecen en el resultado.
*/



-- APARTADO 5: PERTENENCIA


SELECT
    customer_id,
    first_name AS nombre,
    last_name AS apellido,
    country AS pais
FROM customer
WHERE country IN ('Germany', 'France', 'United Kingdom')
ORDER BY country ASC;

/*
Interpretación:
IN permite buscar clientes de cualquiera de los tres países.
Es una alternativa más sencilla que utilizar varios OR.
*/



-- APARTADO 6: INTERVALO


SELECT
    track_id,
    name AS nombre_cancion,
    milliseconds AS duracion
FROM track
WHERE milliseconds BETWEEN 180000 AND 300000;

/*
Interpretación:
180000 milisegundos equivalen a 3 minutos y 300000
a 5 minutos. BETWEEN incluye ambos extremos del intervalo.
*/



-- APARTADO 7: PATRONES


SELECT
    track_id,
    name AS nombre_cancion
FROM track
WHERE name LIKE '%love%';




SELECT
    track_id,
    name AS nombre_cancion
FROM track
WHERE name ILIKE '%love%';

/*
Interpretación:
LIKE distingue entre mayúsculas y minúsculas.
ILIKE no distingue entre mayúsculas y minúsculas.

El símbolo % representa cualquier cantidad de caracteres.
El símbolo _ representa un solo carácter.
*/



-- APARTADO 8: AUSENCIAS



SELECT
    customer_id,
    first_name AS nombre,
    last_name AS apellido,
    company
FROM customer
WHERE company IS NULL;


SELECT
    customer_id,
    first_name AS nombre,
    last_name AS apellido,
    fax
FROM customer
WHERE fax IS NOT NULL;

/*
Interpretación:
IS NULL muestra los clientes sin empresa registrada.
IS NOT NULL muestra los clientes que tienen fax registrado.

No se utiliza = NULL porque para comprobar valores nulos
se deben utilizar IS NULL o IS NOT NULL.
*/



-- APARTADO 9: RANKING

SELECT
    track_id,
    name AS nombre_cancion,
    milliseconds AS duracion
FROM track
ORDER BY milliseconds DESC, track_id ASC
LIMIT 10;

/*
Interpretación:
Las canciones se ordenan de mayor a menor duración.
track_id sirve para desempatar cuando tienen la misma duración.
LIMIT 10 muestra solamente las primeras diez canciones.
*/



-- APARTADO 10: PAGINACION


SELECT
    customer_id,
    first_name AS nombre,
    last_name AS apellido
FROM customer
ORDER BY customer_id ASC
LIMIT 5 OFFSET 0;




SELECT
    customer_id,
    first_name AS nombre,
    last_name AS apellido
FROM customer
ORDER BY customer_id ASC
LIMIT 5 OFFSET 5;

/*
Interpretación:
La primera consulta muestra los primeros cinco clientes.
La segunda omite los primeros cinco y muestra los siguientes.

Se utiliza el mismo orden para ambas páginas.
Los identificadores deben compararse para comprobar
que no existan clientes repetidos.
*/
