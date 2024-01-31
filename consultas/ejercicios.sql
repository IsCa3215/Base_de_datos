/**
SELECT COUNT(salario), MAX(salario), MIN(salario), AVG(salario)
FROM empleado;

SELECT COUNT(salario), MAX(salario), MIN(salario), AVG(salario)
FROM departamento
INNER JOIN empleado
on empleado.id_departamento = departamento.id_departamento
WHERE upper(departamento.nombre) = upper('investigacion');

SELECT COUNT(empleado.nombre)
FROM departamento
INNER JOIN empleado
ON empleado.id_departamento = departamento.id_departamento
WHERE departamento.nombre = 'investigacion';

SELECT COUNT (DISTINCT(salario))
FROM empleado;


SELECT nombre, apellidos
FROM empleado
WHERE NSS_supervisor IS NULL;


SELECT nombre, apellidos, id_departamento
FROM empleado
INNER JOIN trabaja_en
ON empleado.NSS = trabaja_en.NSS
WHERE id_proyecto NOT IN (
    SELECT id_proyecto 
    FROM proyecto
    WHERE empleado.id_departamento = proyecto.id_departamento
);

SELECT SUM(presupuesto), departamento.nombre
FROM proyecto
INNER JOIN departamento
ON departamento.id_departamento = proyecto.id_departamento
GROUP BY departamento.nombre;
*/