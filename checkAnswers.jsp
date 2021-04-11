

<%
out.println("{"+"\n");
//option is a variabe which is toring the value of it and according to its value data is printing its output on the html.
if(request.getParameter("option").equals("2")){
	out.println("\"status\": "+"\"correct\"" + "\n");
}
else{
	out.println("\"status\": "+"\"incorrect\""+"\n");
}
out.println("}"+"\n");

%>



