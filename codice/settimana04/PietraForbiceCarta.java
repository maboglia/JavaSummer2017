package settimana04;

import java.util.Scanner;

public class PietraForbiceCarta {
	
	public static void main(String[] args) {
		
	String[] scelta = { "PIETRA" ,  "FORBICI"  ,  "CARTA"   };
	boolean continua = true;
	
	Scanner sc = new Scanner(System.in);
	
	while (continua) {
		
	
	System.out.println("--------------------------------");

	System.out.println("1) " + scelta[0]);
	System.out.println("2) " + scelta[1]);
	System.out.println("3) " + scelta[2]);
	
	System.out.println("scegli premendo 1,2,3");
	System.out.println("--------------------------------");

	int sceltaUtente = sc.nextInt();

	int sceltaComputer = (int) (Math.random() * 3) +1 ;
	String s = "";
	if (sceltaUtente == sceltaComputer ) s= "pareggio";
	else if (sceltaUtente == 1 ){
		if (sceltaComputer == 2) s= "vince utente";
		else s= "vince computer";
	}
	else if (sceltaUtente == 2 ){
		if (sceltaComputer == 3) s= "vince utente";
		else s= "vince computer";
	}
	else if (sceltaUtente == 3 ){
		if (sceltaComputer == 1) s= "vince utente";
		else s= "vince computer";
	}

	System.out.println("utente ha scelto " + scelta[sceltaUtente - 1] );
	System.out.println("computer ha scelto " + scelta[sceltaComputer - 1] );
	System.out.println(s);
	
	if (sceltaUtente <1 || sceltaUtente > 3 ) continua = false;
	
	}
	
	
	
	}

}
