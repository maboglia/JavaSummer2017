var treno = document.getElementById("treno");
var tachimetro = document.getElementById("tachimetro");

var velocita = 250;
var posizione = 0;
var velocitaTreno = 0;
var animazione;

function accelera () {
	if ( velocita > 10 ) velocita -= 10;
	velocitaTreno += 10;
	muovi();
	tachimetro.innerHTML = velocitaTreno;
	clearInterval(animazione);
	animazione = setInterval(muovi, velocita);
}

function frena () {
//	alert("hai frenato");
	clearInterval(animazione);
}


function muovi(){
	posizione += 10;
	treno.style.left = posizione + "px";
	controllaPosizione(posizione);

}

function controllaPosizione () {
	if (posizione >= 764 ){
		clearInterval(animazione);
		treno.style.left="814px";
		treno.style.width= "50px";
		alert("crash");
	}
}