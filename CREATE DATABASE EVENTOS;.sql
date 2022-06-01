CREATE DATABASE EVENTOS;
USE EVENTOS;
CREATE TABLE institucion (
    CODINS INT PRIMARY KEY,
    NOMINS VARCHAR(30),
    DIRINS VARCHAR(30),
    TELINS VARCHAR(15)
);
CREATE TABLE TIPO (
    CODTIPO INT PRIMARY KEY,
    NOMTIPO VARCHAR(30)
);
CREATE TABLE EVENTO (
    CODEVE INT PRIMARY KEY,
    NOMEVE VARCHAR(30),
    CODTIPO INT,
    FECHAINI DATE,
    FECHAFIN DATE,
    FOREIGN KEY (CODTIPO) REFERENCES TIPO(CODTIPO)
);
CREATE TABLE PARTICIPANTE(
    CODPAR INT PRIMARY KEY,
    NOMPAR VARCHAR(30),
    APEPAR VARCHAR(30),
    IDPAR VARCHAR(30),
    EDADPAR SMALLINT(6),
    FOTOPAR BLOB
);
CREATE TABLE institucion_EVENTO(
    CODSEC INT PRIMARY KEY,
    CODEVE INT(11),
    CODINS INT(11),
    FOREIGN KEY (CODEVE) REFERENCES EVENTO(CODEVE),
    FOREIGN KEY (CODINS) REFERENCES institucion(CODINS)
);