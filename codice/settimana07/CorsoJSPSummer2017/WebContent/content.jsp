<%@page import="corso.Studente" %>
<div class="well">

		<%
		
			//verifico di essere nella home page, oppure in una sottopagina
			//se mi passi il paramentro pagina vuol dire che vuoi visualizzare una sottopagina
			//altrimenti ti trovi nella home page
			if (request.getParameter("pagina") != null){
				
				int pagina = Integer.parseInt(        request.getParameter("pagina")         ) ;
				
				//costruisco un router, instradatore della navigazione, per includere dinamicamente i contenuti
				switch(pagina){
				
					case 1:
						out.print("<h1>elenco studenti</h1>");
						
						//dichiaro il mio array di studenti, è statico quindi appartiene alla classe e può essere utilizzato da tutti i metodi
						Studente[] studenti =  new Studente[15];
						//inizializzo il mio array di studenti
						studenti[0] = new Studente("Annarita", "Amendola", 'F'  );
						studenti[1] = new Studente("Umberto", "Angelone", 'M'  );
						studenti[2] = new Studente("Edita", "Burovaite", 'F'  );
						studenti[3] = new Studente("Federica", "Caiulo", 'F'  );
						studenti[4] = new Studente("Paolo", "Cetola", 'M'  );
						studenti[5] = new Studente("Maurizio", "Cristiani", 'M'  );
						studenti[6] = new Studente("Marco", "De palma", 'M'  );
						studenti[7] = new Studente("Luca ", "Di Biase", 'M'  );
						studenti[8] = new Studente("emmanuel", "dzuko sakepa", 'M'  );
						studenti[9] = new Studente("Jean claude", "fansi", 'M'  );
						studenti[10] = new Studente("Michele", "La riccia", 'M'  );
						studenti[11] = new Studente("Tina", "Labate", 'F'  );
						studenti[12] = new Studente("Raul", "Lara Molina", 'M'  );
						studenti[13] = new Studente("Teresa", "Missanelli", 'F'  );
						studenti[14] = new Studente("Chiara", "Quattrocchi", 'F'  );
						
						out.print("<table class='table table-striped'>");
						
						for (Studente s : studenti) {
							
						%>	
							
							<tr>    <td><%= s.matricola %></td>    <td><%= s.nome %></td>    <td><%= s.cognome %></td>    </tr>
						
						<%
						
						
						}						
						
						out.print("</table>");
						
						
						
						break;
					
					case 2:
						out.print("<h1>codice di pagina 2</h1>");
						break;
					
						
					default:
						out.print( "La pagina " +     request.getParameter("pagina")  + " non è disponibile"  );
						break;
				
				}
		
			}
			else
			//apro parentesi del blocco di codice else: sei in home page
			{
				//out.print("sei in home page");
		%>
				<h2>home</h2>
				<%@include file="home.jsp" %>
		<% 
		//chiudo: sei in home page
			} 
		%>
		

</div>