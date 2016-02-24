# AngularJs
Questo progetto racchiude alcuni esempi di applicazioni sviluppate con AngularJs.

## angular-showcase
Questo progetto contiene alcune pagine base come per esempio: <br>
1. Gestione di liste<br>
2. Gestione dei form (anche con autocomplete, combobox, campi required, e tabelle)<br>
3. Esempio di layout di pagina (header, navbar, body, etc)<br>
4. Esempio di layout di pagina (header, navbar, body, etc)<br>

ATTENZIONE!!! In questo progetto il codice js e' incorporato nelle pagine jsp

### Framework
Questo progetto utilizza AngularJs e Spring MVC per lo sviluppo dei servizi REST

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

## EsempiBase
Questo progetto contiene alcuni esempi base di angularJs e Spring MVC utilizzando un design pattern standard (ad ogni pagina un controller angular, un service angular, un controller Spring): <br>
1. Chiamata ad un controller senza alcun parametro avente come riposta una Stringa (HelloWorldController)<br>
2. Chiamata ad un controller senza alcun parametro avente come riposta un oggetto (HelloWorldController) --> NON linkato nella pagina di welcome<br>
3. Chiamata ad un controller avente un parametro di tipo oggetto (PrimoFormController)<br>
4. Chiamata a due controller utilizzando le promise (HelloWorldController)<br>
5. Chiamata a due controller utilizzando la libreria q, vogliamo attendere la risposta di entrambi (HelloWorldController)<br>
6. Esempio del costrutto base ng-repeat con possibilità di filtrare e ordinare(CostruttiBaseController), attraverso 3 pulsanti è possibile nascondere o visualizzare uno dei tre esempi (cotrutto ng-hide)<br>
7. Esempio di combobox con l'utilizzo del costrutto ng-options (CostruttiBaseController)<br>
8. Esempio di un multiple select item con l'utilizzo dei costrutti ng-repeat, ng-click e ng-class. In questo esempio viene anche fatto un ciclo for in Angular (CostruttiBaseController)<br>
9. Esempio di una pagina con più tabs con l'utilizzo del costrutto ng-show (Nessun controller Spring)<br>
10. Esempio apertura di un popup (ModalController) --> la pagina visualizza inizialmente una lista di uffici aventi le info base quando si clicca su uno si apre un popup con il dettaglio<br>
11. Esempio di utilizzo dei $watch in angular js<br>
12. Esempio di ereditarietà tra i controller in angular js (divisione di un form in due controller, uno utile alla ricerca, e uno a manipolare i risultati, i due comunicano attraverso un controller padre che contiene la lista dei risultati)<br>
13. L'esempio sopra indicato riporta anche un pulsante per provare l'evento broadcast di AngularJs<br>
14. Esempio di test di un js con Karma (TestDiProva.js) --> Per eseguire il test deve essere installato karma<br>

L'esempio 3 (form di compilazione) contiene anche un esempio di sincronizzazione bidirezionale delle variabili (quando si compila una input text viene modificata subito la variabile)

### Framework
Questo progetto utilizza AngularJs e Spring MVC per lo sviluppo dei servizi REST

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

### Link
Esempio con HelloWorld: http://localhost:8080/webAngular/pages/HelloWorld/Welcome.jsp <br>
Esempio primo form: http://localhost:8080/webAngular/pages/PrimoForm/PrimoForm.jsp <br>
Esempio lista di elementi: http://localhost:8080/webAngular/pages/CostruttiBase/ListaDiElementi.jsp <br>
Esempio combobox: http://localhost:8080/webAngular/pages/CostruttiBase/ComboBox.jsp<br>
Esempio multiple select: http://localhost:8080/webAngular/pages/CostruttiBase/MultipleSelect.jsp<br>
Esempio multiple tabs: http://localhost:8080/webAngular/pages/CostruttiBase/Tabs.jsp<br>
Esempio modal: http://localhost:8080/webAngular/pages/Modal/Modal.jsp <br>
Esempio Watch: http://localhost:8080/webAngular/pages/Watch/Watch.jsp <br>
Esempio Ereditarieta: http://localhost:8080/webAngular/pages/Ereditarieta/Ereditarieta.jsp <br>

## myFirstApplication
Questo progetto contiene un semplice esempio di HelloWorld chiamando un controller base.<br>
Al suo interno sono presenti i seguenti progetti figli:<br>
1. myFirstApplication-web --> Contiene il codice sorgente<br>
2. myFirstApplication-ear --> Genera l'ear per il deploy<br>

### Framework
Questo progetto utilizza AngularJs e Spring MVC per lo sviluppo dei servizi REST

### Configurazioni
Per provare il progetto e' necessario configurare tomcat

## PMInformatica-website
Questo progetto contiene un semplice esempio di sito web, in particolare ha degli esempi utili su:<br>
1. navigazione tra le pagine con AngularJs<br>
2. utilizzo di bootstrap<br>

### Framework
Questo progetto utilizza AngularJs e Spring MVC per lo sviluppo dei servizi REST

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

### Link
http://localhost:8080/pminformatica/pages/Home/Home.jsp<br>

## ExtensionLibraries
Questo progetto contiene alcuni esempi di librerie di utilità <br>
1. Esempio utilizzo Growl<br>

### Framework
Questo progetto utilizza AngularJs e Spring MVC per lo sviluppo dei servizi REST

### Configurazioni
Per provare il progetto e' necessario eseguire il jetty di Maven

### Link
Esempio con Growl: http://localhost:8080/extension/pages/Growl/Growl.jsp <br>