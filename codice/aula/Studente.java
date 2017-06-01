package aula;

import java.util.GregorianCalendar;
/**
 * 
 * @author mauro
 *
 */
public class Studente {
     
	
	//  Dati, attributi, proprietà, campi: stato interno
	String nome; // qui scrivi il nome de
	String cognome;
	GregorianCalendar data_nascita;
	int eta;
	char genere;
	int matricola;
	static int generaMatricola;
	
	//Metodo -------------------------------------------------//
/**
 * Costruttore dell'oggetto studente che inizializza tutti i parametri		
 * @param nome inserisci una String che riporta il nome dello studente
 * @param cognome
 * @param data_nascita
 * @param eta
 * @param genere
 */
	public Studente(String nome, String cognome, GregorianCalendar data_nascita, char genere) {
		generaMatricola++;
		this.matricola =    generaMatricola ;
		this.nome = nome;
		this.cognome = cognome;
		this.data_nascita = data_nascita;
		this.eta = 0;
		this.genere = genere;
	}
	
	public String stampaInfo(){
		
		return 
				this.matricola + "\n " + 
				this.nome + " " + 
				this.cognome + "\n " + 
				this.data_nascita.getTime()+ " " + 
				this.genere + " "; 
		
	}
	

	public static void main(String[] args) {
		Studente Tina = new Studente("Tina",	"Labate", 	new GregorianCalendar(1963, 0, 14), 'F'  );
		Studente Marco = new Studente("Marco",	"De Palma", 	new GregorianCalendar(1996, 5, 23), 'M'  );
		
		System.out.println(Tina.stampaInfo());
		System.out.println(Marco.stampaInfo());
	}
	
	
	
}
