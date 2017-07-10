<%



	String u = request.getParameter("username");
	String p = request.getParameter("password");

	if (u.equals("mauro")  &&   p.equals("1234567") )
		out.print("Benvenuto  " + u);
	else
		out.print("non puoi entrare!");

%>
