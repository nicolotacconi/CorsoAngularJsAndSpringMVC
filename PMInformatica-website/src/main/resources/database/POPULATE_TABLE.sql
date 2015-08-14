CREATE FUNCTION LOAD_FILE_CUSTOM(str VARCHAR(100)) RETURNS BLOB 
    PARAMETER STYLE JAVA NO SQL LANGUAGE JAVA 
    EXTERNAL NAME 'com.pminformatica.website.hsql.function.LoadFileFuncion.loadFile';


INSERT INTO SECURITY (USERNAME, PASSWORD) values ('pminformatica','pswPmInformatica#2015');

INSERT INTO ULTIMI_LAVORI (ID, TITLE, IMAGE) VALUES (1,'Shop',LOAD_FILE_CUSTOM('database/shop.png'));
INSERT INTO ULTIMI_LAVORI (ID, TITLE, IMAGE) VALUES (2,'Shop2',LOAD_FILE_CUSTOM('database/assemblato.jpg'));

INSERT INTO offerte (ID, TITLE, IMAGE, DESCRIPTION, PRICE) VALUES (1,'Notebook Asus',LOAD_FILE_CUSTOM('database/smartwatch.jpg'),'DESCRIZIONE 1','Eur 300,00');
INSERT INTO offerte (ID, TITLE, IMAGE, DESCRIPTION, PRICE) VALUES (2,'PC Assemblato',LOAD_FILE_CUSTOM('database/offerta.jpg'),'DESCRIZIONE 2','Eur 200,00');
INSERT INTO offerte (ID, TITLE, IMAGE, DESCRIPTION, PRICE) VALUES (3,'Installazione LAN',LOAD_FILE_CUSTOM('database/assemblato.jpg'),'DESCRIZIONE 3','Eur 1.500,00');