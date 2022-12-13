/*Creación de base de datos: */
CREATE DATABASE VACANTE;

/*Especificación de la base de datos que vamos a utilizar: */
USE VACANTE;
SHOW DATABASES;
SELECT DATABASE();
SHOW TABLES;

/*Creación de la tabla para la base de datos: */
/* EST = Estudiante */

CREATE TABLE VACANTE
(
	NOMEST VARCHAR(90) NOT NULL,
    DNIEST VARCHAR(8) NOT NULL,
    EMAEST VARCHAR(90) NOT NULL,
    CELEST CHAR(9) NOT NULL,
    MSGEST VARCHAR(750),
	CONSTRAINT NOMEST_PK PRIMARY KEY (NOMEST)
);

SHOW COLUMNS IN VACANTE;


/*Inserción de datos a la tabla ESTUDIANTE: */
INSERT INTO VACANTE
(NOMEST, DNIEST, EMAEST, CELEST, MSGEST)
VALUES
('Javier Miguel Ramírez Sánchez', '52239712', 'javierRamiS@gmail.com', '925104231','Queria consultarles que...');

SELECT
NOMEST AS 'NOMBRES Y APELLIDOS',
DNIEST AS 'DNI',
EMAEST AS 'EMAIL', 
CELEST AS 'N° CELULAR',
MSGEST AS 'COMENTARIO'
FROM VACANTE;
