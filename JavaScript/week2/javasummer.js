var lista = 
document.getElementById("cicli");


console.dir(lista);
console.log(lista.children[1].innerHTML);

//var chiedi = prompt("scrivi qualcosa");

var esperimento = 
	document.getElementById("mioInput");


function primaFunzione () {
	for (var i = 0; i < lista.children.length; i++) {
 		lista.children[i].innerHTML = esperimento.value + i;
	};
	
}

//primaFunzione(chiedi);







/*
		for (var i = 0; i < 10; i++) {
			//document.write("<h1>scemo chi legge " + i +  '</h1>');			
		};


		var conferma = confirm("vuoi davvero eliminare tutti i record del database?");

		if (conferma) { 

			//
			document.write("<h1>ciao ciao</h1>");
		}
		else{
			alert("hai scelto di NON eliminare i record");
			
		}	

*/
