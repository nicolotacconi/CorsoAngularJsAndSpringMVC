# AngularJs
Questo progetto racchiude alcuni esempi di applicazioni sviluppate con AngularJs.

## angular-showcase
Questo progetto contiene alcune pagine base come per esempio: <br>
1. Gestione di liste<br>
2. Gestione dei form (anche con autocomplete, combobox, campi required, e tabelle)<br>
3. Esempio di layout di pagina (header, navbar, body, etc)<br>
4. Esempio di layout di pagina (header, navbar, body, etc)<br>

ATTENZIONE!!! In questo progetto il codice js e' incorporato nelle pagine jsp

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

## EsempioChiamataControllerBase
Questo progetto contiene alcuni sempi di chiamata ad un controller MVC: <br>
1. Chiamata ad un controller senza alcun parametro avente come riposta una Stringa (HelloWorldController)<br>
2. Chiamata ad un controller senza alcun parametro avente come riposta un oggetto (HelloWorldController) --> NON linkato nella pagina di welcome<br>
3. Chiamata ad un controller avente un parametro di tipo oggetto (PrimoFormController)<br>
4. Chiamata ad un controller senza alcun parametro avente come riposta una Stringa, la chiamata utilizza le promise (HelloWorldController)<br>

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

### Link
http://localhost:8080/webAngular/pages/HelloWorld/Welcome.jsp

## myFirstApplication
Questo progetto contiene un semplice esempio di HelloWorld chiamando un controller base.<br>
Al suo interno sono presenti i seguenti progetti figli:<br>
1. myFirstApplication-web --> Contiene il codice sorgente<br>
2. myFirstApplication-ear --> Genera l'ear per il deploy<br>

### Configurazioni
Per provare il progetto e' necessario configurare tomcat

## PMInformatica-website
Questo progetto contiene un semplice esempio di sito web, in particolare ha degli esempi utili su:<br>
1. navigazione tra le pagine con AngularJs<br>
2. utilizzo di bootstrap<br>

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

