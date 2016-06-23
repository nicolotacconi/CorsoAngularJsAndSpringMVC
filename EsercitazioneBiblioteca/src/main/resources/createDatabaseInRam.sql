SET DATABASE SQL SYNTAX ORA TRUE;

CREATE TABLE BIBLIOTECA 
(
  IDENTIFICATIVO    	NUMBER			         	NOT NULL,
  TITOLO           		VARCHAR2(100 CHAR)         	NOT NULL,
  AUTORE    			VARCHAR2(100 CHAR)         	NOT NULL,
  DATA_PUBBLICAZIONE	VARCHAR2(10 CHAR)         	NOT NULL,,
  CONSTRAINT BIBLIOTECA_IXU01 PRIMARY KEY (IDENTIFICATIVO)
);

CREATE SEQUENCE IDENTIFICATIVO_SEQUENCE
  START WITH 1
  INCREMENT BY 1
  CACHE 100;