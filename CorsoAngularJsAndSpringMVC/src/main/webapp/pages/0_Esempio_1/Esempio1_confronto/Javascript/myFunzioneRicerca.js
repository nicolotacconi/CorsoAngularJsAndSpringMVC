
var filtra = function(e){
    var keypress;
    if(window.event){keypress = window.event.keyCode;}
    else if (e){keypress = e.which;}
    else {return false;}
    if(keypress == 13){ // code 13 è tasto enter
		funzioneRicerca();
	}
    else{return false;}
}

var funzioneRicerca = function(){
this.rows = document.getElementById('data').rows;
this.rows_length = rows.length;
var chiave = document.getElementById('stringaRicerca').value.toUpperCase();
var row;
for (var i=0;i< rows_length;i++){
	row = this.rows[i];
	row_text = row.innerText;
	row.style.display = ((row_text.indexOf(chiave) != -1) || chiave  === '')?'':'none';
}
};
