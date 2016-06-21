
var firstName = "";
var lastName = "";

/*
var firstName = "John";
var lastName = "Doe";
*/

var appInit = function(){
	document.getElementById("firstInput").innerHTML = firstName;
	document.getElementById("lastInput").innerHTML = lastName;
}

var fullNameUpp = function() {
	return firstName.toUpperCase() + " " + lastName.toUpperCase();
};
var aggiorna = function(){
	firstName = document.getElementById("firstInput").value;
	lastName = document.getElementById("lastInput").value;
	document.getElementById("output").innerHTML = firstName.toUpperCase() + " " + lastName.toUpperCase();
}

var persone = [];
var aggiungiPersona = function(nome) {
	if(nome.trim().length > 0){
		persone.push(nome) ;
		fLen = persone.length;
		text = "";
		for (i = 0; i < fLen; i++) {
			text += "<tr><td align=\"right\">" + persone[i] + "</td></tr>";
		}
		document.getElementById("data").innerHTML = text;
	}
};