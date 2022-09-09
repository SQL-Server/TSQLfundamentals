/* Poner en uso base de datos MASTER */
USE MASTER
GO

/* Validar si existe una base de datos y eliminarla */
IF DB_ID('testDatabase') IS NOT NULL
DROP DATABASE testDatabase;
PRINT 'Base de datos encontrada y eliminada'
GO

/* Validar si existe una base de datos, si no existe crea la base de datos */
IF DB_ID('testDatabase') IS NULL
CREATE DATABASE testDatabase
PRINT 'Se ha creado la base de datos testDatabase'
GO

/* Poner en uso la base de datos */
USE testDatabase
GO

/* Crear tabla */
CREATE TABLE CLIENTE
(
    CODCLI CHAR(4),
    NOMCLI NCHAR(60),
    APECLI NCHAR(80),
    DNICLI CHAR(8),
    ESTCLI CHAR(1) DEFAULT 'A', -- Agrega por default el estado A (activo)
    CONSTRAINT CLI_PK PRIMARY KEY (CODCLI)
)
GO

/* Listar registro tabla CLIENTE */
SELECT * FROM CLIENTE
GO

/* Insertar registro */
INSERT INTO CLIENTE
(CODCLI, NOMCLI, APECLI, DNICLI)
VALUES
('C001', 'Alberto', 'Campos Barrios', '12659874')
GO

/* Listar registro tabla CLIENTE */
SELECT * FROM CLIENTE
GO

/* Insertar registros de tabla CLIENTE  */
INSERT INTO CLIENTE
(CODCLI, NOMCLI, APECLI, DNICLI)
VALUES
('C002', 'Juana', 'Zavala Olaya', '98542631'),
('C003', 'Marcos', 'Arredondo Palomino', '45123697'),
('C004', 'Ramón', 'Stark Ríos', '25361478')
GO

/* Listar registro tabla CLIENTE */
SELECT * FROM CLIENTE
GO

/* Actualizar nombre ALBERTO por Alexander */
UPDATE CLIENTE
    SET NOMCLI = 'Alexander'
    WHERE CODCLI = 'C001'
GO

/* Listar registros tabla CLIENTE */
SELECT * FROM CLIENTE
GO

/* Eliminar registro */
DELETE FROM CLIENTE
    WHERE CODCLI = 'C002'
GO

/* Listar registro tabla CLIENTE */
SELECT * FROM CLIENTE
GO

/* Crear tabla PERSONA */
CREATE TABLE PERSONA
(
    IDPER INT IDENTITY(1,1),
    NOMPER VARCHAR(60),
    APEPER VARCHAR(80),
    EMAPER VARCHAR(80),
    TIPPER CHAR(1),
    FECNACPER DATE,
    
)
GO