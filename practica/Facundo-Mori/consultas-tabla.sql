select* --ejercicio1
from dueno order by apellido asc;

--Ejericio 2
select nombre, especie
from mascota;

--ejercicio3
select *
from mascota
where peso_kg > 10;

select *  --ejercicio4
from veterinario 
where especialidad = 'Clínica general';

--ej5 Listar las consultas realizadas durante el año 2024, ordenadas por fecha.
select *
from consulta
where fecha >= '2024-01-01' and fecha < '2025-01-01'
order by fecha
--ej6 Listar el nombre y la presentación de los medicamentos que vengan en comprimidos.
select nombre, presentacion
from medicamento
where presentacion ilike '%comprimido%';
--ej7 Listar las mascotas nacidas antes del año 2020.
select *
from mascota
where fecha_nac < '2020-01-01';

--ej8 Mostrar, en una sola columna con el alias nombre_completo, el nombre y apellido de cada dueño.
select nombre || ' ' || apellido as nombre_completo
from dueno;

--ej9 Listar las consultas cuyo motivo contenga la palabra "control" (sin importar mayúsculas/minúsculas).
select *
from consulta
where motivo ilike '%control%';
--ej10 Listar las mascotas cuya especie sea "Perro" o "Gato".
select *
from mascota
where especie in ('Perro', 'Gato');
--ej 11 Listar los dueños que no tengan un teléfono cargado.
select *
from dueno
where telefono is null;
