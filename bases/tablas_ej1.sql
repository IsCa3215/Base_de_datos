
CREATE TABLE DEPARTAMENTO (
    id_departamento INT PRIMARY KEY,
    nombre VARCHAR(50),
    NSS_gerente INT
);

CREATE TABLE EMPLEADO (
    NSS INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    NSS_supervisor INT,
    fecha_nacimiento DATE,
    direccion VARCHAR(100),
    sexo CHAR(1),
    id_departamento INT,
    salario DECIMAL(10, 2),
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id_departamento)
);

CREATE TABLE PROYECTO (
    id_proyecto INT PRIMARY KEY,
    nombre VARCHAR(50),
    lugar VARCHAR(50),
    id_departamento INT,
    presupuesto DECIMAL(10, 2),
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id_departamento)
);

CREATE TABLE TRABAJA_EN (
    NSS INT,
    id_proyecto INT,
    horas INT,
    PRIMARY KEY (NSS, id_proyecto),
    FOREIGN KEY (NSS) REFERENCES EMPLEADO(NSS),
    FOREIGN KEY (id_proyecto) REFERENCES PROYECTO(id_proyecto)
);