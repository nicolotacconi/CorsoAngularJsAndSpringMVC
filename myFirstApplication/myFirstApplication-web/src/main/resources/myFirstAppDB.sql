SET DATABASE SQL SYNTAX ORA TRUE;

CREATE TABLE APPLICAZIONE (
	ID NUMBER(5,0),
	NOME VARCHAR(40),
	TECNOLOGIA NUMBER(3,0),
	WEB CHAR(1),
	PRIMARY KEY (ID)
);

CREATE TABLE TECNOLOGIA (
	ID NUMBER(3,0),
	NOME VARCHAR(40),
	PRIMARY KEY (ID)

);

CREATE TABLE SERVER (
	ID NUMBER(3,0),
	NOME VARCHAR(40),
	SISTEMA_OPERATIVO VARCHAR(40),
	VIRTUALE CHAR(1),
	PRODUZIONE CHAR(1),
	PRIMARY KEY (ID)
);


CREATE TABLE APPLICAZIONE_SERVER (
	APP_ID NUMBER(5,0),
	SERVER_ID NUMBER(3,0),
	PRIMARY KEY (APP_ID, SERVER_ID)
);


CREATE SEQUENCE SS_APPLICAZIONE;
CREATE SEQUENCE	SS_SERVER;

INSERT INTO TECNOLOGIA VALUES (1, 'JAVA');
INSERT INTO TECNOLOGIA VALUES (2, 'DOT NET');
INSERT INTO TECNOLOGIA VALUES (3, 'VB6');
INSERT INTO TECNOLOGIA VALUES (4, 'COBOL');

INSERT INTO APPLICAZIONE (ID, NOME, TECNOLOGIA, WEB) VALUES (SS_APPLICAZIONE.NEXTVAL, 'DENUNCIA WEB', 1, 'S');
INSERT INTO APPLICAZIONE (ID, NOME, TECNOLOGIA, WEB) VALUES (SS_APPLICAZIONE.NEXTVAL, 'WEB FIDUCIARI', 1, 'S');
INSERT INTO APPLICAZIONE (ID, NOME, TECNOLOGIA, WEB) VALUES (SS_APPLICAZIONE.NEXTVAL, 'EGEST', 3, 'N');

INSERT INTO SERVER VALUES (SS_SERVER.NEXTVAL, 'GA-WASPRODLX05', 'UNIX', 'N', 'S');
INSERT INTO SERVER VALUES (SS_SERVER.NEXTVAL, 'GA-WASPRODLX06', 'UNIX', 'N', 'S');
INSERT INTO SERVER VALUES (SS_SERVER.NEXTVAL, 'GA-EVIAPROD02', 'WINDOWS 2000', 'N', 'S');
INSERT INTO SERVER VALUES (SS_SERVER.NEXTVAL, 'GA-EVIATEST04', 'WINDOWS 2000', 'S', 'N');

INSERT INTO APPLICAZIONE_SERVER VALUES ((SELECT ID FROM APPLICAZIONE WHERE NOME = 'DENUNCIA WEB'), (SELECT ID FROM SERVER WHERE NOME = 'GA-WASPRODLX05'));
INSERT INTO APPLICAZIONE_SERVER VALUES ((SELECT ID FROM APPLICAZIONE WHERE NOME = 'DENUNCIA WEB'), (SELECT ID FROM SERVER WHERE NOME = 'GA-WASPRODLX06'));
INSERT INTO APPLICAZIONE_SERVER VALUES ((SELECT ID FROM APPLICAZIONE WHERE NOME = 'WEB FIDUCIARI'), (SELECT ID FROM SERVER WHERE NOME = 'GA-WASPRODLX05'));
INSERT INTO APPLICAZIONE_SERVER VALUES ((SELECT ID FROM APPLICAZIONE WHERE NOME = 'WEB FIDUCIARI'), (SELECT ID FROM SERVER WHERE NOME = 'GA-WASPRODLX06'));
INSERT INTO APPLICAZIONE_SERVER VALUES ((SELECT ID FROM APPLICAZIONE WHERE NOME = 'EGEST'), (SELECT ID FROM SERVER WHERE NOME = 'GA-EVIAPROD02'));
INSERT INTO APPLICAZIONE_SERVER VALUES ((SELECT ID FROM APPLICAZIONE WHERE NOME = 'EGEST'), (SELECT ID FROM SERVER WHERE NOME = 'GA-EVIATEST04'));
