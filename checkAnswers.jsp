<%@ include file = "All_Questions.jsp" %>
<%
			Questions quesObj =new Questions();
			
			int question_id=Integer.parseInt(request.getParameter("question_id"));
			String ans =quesObj.allProblems.get(question_id).correctAns;
			out.println("{"+"\n");
			//option is a variabe which is storing the value of it and according to its value data is printing its output on the html.
			if(request.getParameter("option").equals(ans)){
				out.println("\"status\": "+"\"correct\"" + "\n");
			}
			else{
				out.println("\"status\": "+"\"incorrect\""+"\n");
			}
			out.println("}"+"\n");
		
	
%>



