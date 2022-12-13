-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-12-13 22:40:10.421

-- tables
-- Table: ADMINISTRADOR
CREATE TABLE ADMINISTRADOR (
    USUARIO_NOMEST varchar(90) NOT NULL COMMENT 'Contiene los nombres del administrador.',
    USUARIO_DNIEST char(8) NOT NULL COMMENT 'Contiene el documento de identificación del administrador ',
    USUARIO_EMAEST varchar(90) NOT NULL COMMENT 'Contiene el correo electrónico del administrador.',
    USUARIO_CELEST char(9) NOT NULL COMMENT 'Contiene el número de celular del administrador.',
    USUARIO_MSGEST varchar(750) NOT NULL COMMENT 'Contiene el mensaje del administrador.'
) COMMENT 'En esta tabla se conservará toda la información para que el administrador se encargue de todo los atributos necesarios para el formulario de la landing page para las vacantes de la I.E. GSMS.';

-- Table: I.E. GSMS
CREATE TABLE `I.E. GSMS` (
    INFNOM varchar(90) NOT NULL COMMENT 'Contiene la información de los nombres que pertenecen al usuario.',
    INFDNI char(8) NOT NULL COMMENT 'Contiene el documento de identificación que pertenece al usuario.',
    INFEMAIL varchar(90) NOT NULL COMMENT 'Contiene el correo electrónico que pertenece al usuario.',
    INFCEL char(9) NOT NULL COMMENT 'Contiene el numero de celular que pertenece al usuario.',
    INFMSG varchar(750) NOT NULL COMMENT 'Contiene el  mensaje del usuario',
    CONSTRAINT `I.E. GSMS_pk` PRIMARY KEY (INFNOM)
) COMMENT 'En esta tabla identifica a la I.E. donde esta dirigido todo los atributos necesarios recolectados por el administrador para el formulario de la landing page para las vacantes de la I.E. GSMS.';

-- Table: USUARIO
CREATE TABLE USUARIO (
    NOMEST varchar(90) NOT NULL COMMENT 'Ingrese sus nombres y Apellidos',
    DNIEST char(8) NOT NULL COMMENT 'Ingrese su N° DNI',
    EMAEST varchar(90) NOT NULL COMMENT 'Ingrese su correo/email',
    CELEST char(9) NOT NULL COMMENT 'Ingrese su número de celular',
    MSGEST varchar(750) NOT NULL COMMENT 'Escriba un comentario para realizar la cita(Opcional)',
    CONSTRAINT USUARIO_pk PRIMARY KEY (NOMEST)
) COMMENT 'En esta tabla se almacenará todo los atributos necesarios para el formulario de la landing page para las vacantes de la I.E. GSMS.';

-- foreign keys
-- Reference: Administrador_USUARIO (table: ADMINISTRADOR)
ALTER TABLE ADMINISTRADOR ADD CONSTRAINT Administrador_USUARIO FOREIGN KEY Administrador_USUARIO (<EMPTY>)
    REFERENCES USUARIO (NOMEST);

-- Reference: Administrador_USUARIO (table: ADMINISTRADOR)
ALTER TABLE ADMINISTRADOR ADD CONSTRAINT Administrador_USUARIO FOREIGN KEY Administrador_USUARIO (USUARIO_DNIEST)
    REFERENCES USUARIO (NOMEST);

-- Reference: Administrador_USUARIO (table: ADMINISTRADOR)
ALTER TABLE ADMINISTRADOR ADD CONSTRAINT Administrador_USUARIO FOREIGN KEY Administrador_USUARIO (USUARIO_EMAEST)
    REFERENCES USUARIO (NOMEST);

-- Reference: Administrador_USUARIO (table: ADMINISTRADOR)
ALTER TABLE ADMINISTRADOR ADD CONSTRAINT Administrador_USUARIO FOREIGN KEY Administrador_USUARIO (USUARIO_CELEST)
    REFERENCES USUARIO (NOMEST);

-- Reference: Administrador_USUARIO (table: ADMINISTRADOR)
ALTER TABLE ADMINISTRADOR ADD CONSTRAINT Administrador_USUARIO FOREIGN KEY Administrador_USUARIO (USUARIO_MSGEST)
    REFERENCES USUARIO (NOMEST);

-- Reference: I.E. GSMS_ADMINISTRADOR (table: I.E. GSMS)
ALTER TABLE `I.E. GSMS` ADD CONSTRAINT `I.E. GSMS_ADMINISTRADOR` FOREIGN KEY `I.E. GSMS_ADMINISTRADOR` ()
    REFERENCES ADMINISTRADOR ();

-- End of file.

