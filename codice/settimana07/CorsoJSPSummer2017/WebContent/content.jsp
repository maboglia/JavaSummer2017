<h1>content</h1>



<div class="well">
	<h2>
		<%
			if (request.getParameter("pagina") != null){
				out.print(request.getParameter("pagina"));
			}
			else
				out.print("sei in home page");
		%>
	</h2>
</div>