<%@include file="testata.jsp" %>

<h1>Login</h1>

<form action="login.jsp" method="post">

	username <input type="text"  name="username" /><br/>
	password <input type="password"  name="password" /><br/>
	<input type="submit" name="invia" value="fai login"/>

</form>






<%   

	for(int i = 1; i<=6;i++) 
			{ 
				out.println("<h"  + i + ">Titolo </h"  + i + ">"   );
			}         
			
			
%>




<table class="table table-striped">

<%

for (int i = 0; i< 1000;i++){
	
	out.println("<tr>");
	
	out.print("<td>");
	out.print( i );
	out.print("</td>");
	
	out.print("<td>");
	out.print( i * 2 );
	out.print("</td>");
	
	out.print("<td>");
	out.print( i * 3 );
	out.print("</td>");
	
	out.println("</tr>");
	
}	




%>

</table>


<%@include file="piedipagina.jsp" %>