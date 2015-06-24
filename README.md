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

## EsempiBase
Questo progetto contiene alcuni esempi base di angularJs e Spring MVC utilizzando un design pattern standard (ad ogni pagina un controller angular, un service angular, un controller Spring): <br>
1. Chiamata ad un controller senza alcun parametro avente come riposta una Stringa (HelloWorldController)<br>
2. Chiamata ad un controller senza alcun parametro avente come riposta un oggetto (HelloWorldController) --> NON linkato nella pagina di welcome<br>
3. Chiamata ad un controller avente un parametro di tipo oggetto (PrimoFormController)<br>
4. Chiamata a due controller utilizzando le promise (HelloWorldController)<br>
5. Esempio del costrutto base ng-repeat (CostruttiBaseController)<br>
6. Esempio del costrutto base ng-repeat con possibilitÓ di filtrare (CostruttiBaseController)<br>
7. Esempio di combobox con l'utilizzo del costrutto ng-options (CostruttiBaseController)<br>
8. Esempio apertura di un popup (ModalController) --> la pagina visualizza inizialmente una lista di uffici aventi le info base quando si clicca su uno si apre un popup con il dettaglio<br>

L'esempio 3 (form di compilazione) contiene anche un esempio di sincronizzazione bidirezionale delle variabili (quando si compila una input text viene modificata subito la variabile)

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

### Link
Esempio con HelloWorld: http://localhost:8080/webAngular/pages/HelloWorld/Welcome.jsp <br>
Esempio primo form: http://localhost:8080/webAngular/pages/PrimoForm/PrimoForm.jsp <br>
Esempio costrutti base: http://localhost:8080/webAngular/pages/CostruttiBase/CostruttiBase.jsp <br>
Esempio modal: localhost:8080/webAngular/pages/Modal/Modal.jsp <br>

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

