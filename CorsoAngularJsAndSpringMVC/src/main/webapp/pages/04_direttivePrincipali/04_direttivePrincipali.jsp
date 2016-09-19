<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="DirettiveController.js"></script>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>
<title>DataBinding</title>
</head>
<body ng-app="corsoBaseAngular" ng-controller="direttiveController">

	<form>
		Selezionare un esempio: <input type="radio"
			ng-model="esempioSelezionato" value="showHide">ng-show/ng-hide
		<input type="radio" ng-model="esempioSelezionato" value="if">ng-if
		<input type="radio" ng-model="esempioSelezionato" value="disabled">ng-disabled
		<input type="radio" ng-model="esempioSelezionato" value="repeat">ng-repeat
		<input type="radio" ng-model="esempioSelezionato" value="click">ng-click
		<input type="radio" ng-model="esempioSelezionato" value="href">ng-href
		<input type="radio" ng-model="esempioSelezionato" value="options">ng-options
		<input type="radio" ng-model="esempioSelezionato" value="switch">ng-switch
		<input type="radio" ng-model="esempioSelezionato" value="style">ng-style
		
	</form>

	<div ng-switch="esempioSelezionato">
		<div ng-switch-when="showHide">
			<h1>ng-show/ng-hide</h1>
			<form>
				mostra o nascondi con unica variabile: <br> 
				<input type="checkbox" ng-model="esempioShowHide">mostra <br>
			</form>
			<table style="width: 80%; border: 1px solid black;">
				<tr>
					<th width="50%">Show</th>
					<th width="50%">Hide</th>
				</tr>
				<tr>
					<td>
						<div ng-show="esempioShowHide">
							<h3>selezionato mostra</h3>
						</div>
					</td>
					<td>
						<div ng-hide="esempioShowHide">
							<h3>mostro nascosto</h3>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div ng-switch-when="if">
			<h1>ng-if</h1>
			<form>
				mostra o nascondi del testo con condizione if: <br> 
				<input type="checkbox" ng-model="esempioIf">mostra if<br>
			</form>
			<div ng-if="esempioIf">
				<h3>mostro del testo che faccio sparire</h3>
			</div>
			Per vedere la differenza utilizza la console di sviluppo del browser (F12).
		</div>
		<div ng-switch-when="disabled">
			<h1>ng-disabled</h1>
			<form>
				disabilito o riabilito un elemento: <br> 
				<input type="checkbox" ng-model="esempioDisabled">disabilita<br>
				<input type="text" ng-model="testoEsempioDisabled" ng-disabled="esempioDisabled">
				<h4>testo inserito:</h4> {{testoEsempioDisabled}}
			</form>
		</div>
		<div ng-switch-when="repeat">
			<h1>ng-repeat</h1>
			<p>Elementi creati da lista:</p>
			<div ng-repeat="x in elementiRepeat">{{ x }}</div>
		</div>
		<div ng-switch-when="click">
			<h1>ng-click</h1>
			<button ng-click="count = count + 1" ng-init="count=0">OK</button>
			<p>cliccato {{count}} volte.</p>
		</div>
		<div ng-switch-when="href">
			<h1>ng-href</h1>
			<div ng-init="variabileHref = 'http://www.w3schools.com'">
				<form>
			    	<input type="text" ng-model="variabileHref" >
				</form>
			    <p>vai a:<a ng-href="{{variabileHref}}">{{variabileHref}}</a></p>
			</div>
		</div>
		<div ng-switch-when="options">
			<h1>ng-options</h1>
			<select ng-model="selectedName" ng-options="item for item in elementiRepeat">
					</select>
					
			<p>selezionato: {{selectedName}}</p>
		</div>
		<div ng-switch-when="switch">
			<h1>ng-switch</h1>
			
			<select ng-model="elementoSwitchSelezionato" ng-options="item for item in elementiSwitch">
					</select>
					
			<p>selezionato: {{elementoSwitchSelezionato}}</p>
			<div ng-switch="elementoSwitchSelezionato">
				  <div ng-switch-when="Mercurio">
				    <h1>Mercurio</h1>
				    <p>è un tipo interessante e simpatico...</p>
				  </div>
				  <div ng-switch-when="Venere">
				    <h1>Venere</h1>
				    <p>molto carina</p>
				  </div>
				  <div ng-switch-when="Marte">
				    <h1>Marte</h1>
				    <p>Bellicoso.</p>
				  </div>
				  <div ng-switch-when="Terra">
				    <h1>Terra</h1>
				    <p>casa.</p>
				  </div>
				   <div ng-switch-when="Altri">
				    <h1>Altri</h1>
				    <p>... gli altri sono lontani...</p>
				  </div>
				  <div ng-switch-default>
				    <h1>Switch</h1>
				    <p>Seleziona un pianeta.</p>
				  </div>
				</div>
		</div>
		<div ng-switch-when="style">
			<h1>ng-style</h1>
			<form>
		    	<input type="button" value="blu" ng-click="varibileStile={'background-color':'blue'}">
		    	<input type="button" value="verde" ng-click="varibileStile={'background-color':'green'}">
		    	<input type="button" value="rosso" ng-click="varibileStile={'background-color':'red'}">
		    	<input type="button" value="reset" ng-click="varibileStile={'background-color':'default'}">
			</form>
			<div ng-style="varibileStile">definisci lo stile</div>
		</div>
		<div ng-switch-default>
			<h1>Seleziona</h1>
			<p>Scegli l'esempio da mostrare.</p>
		</div>
	</div>

</body>
</html>