<%@include file="testata.jsp" %>

<h1>sono pagina2</h1>


<ul>
<%

	String[] istruzioni = {
			
			"spegnere il pc",
			"alzarsi dalla sedia",
			"rivolgersi verso l'uscita",
			"e silenziosamente ...."
			
	};

	for(String s : istruzioni){
		
		out.println("<li>"  + s + "</li>");
		
	}
	



%>

</ul>

<%@include file="piedipagina.jsp" %>