<%@ include file = "All_Questions.jsp" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%

Questions quesObj =new Questions();


int question_id=Integer.parseInt(request.getParameter("question_id"));
int totalQues =quesObj.allProblems.size();
	
	if(question_id>=0&&question_id<totalQues){
		String ques= quesObj.allProblems.get(question_id).q;
		String[]option =new String [4];
		option[0]=quesObj.allProblems.get(question_id).op1;
		option[1]=quesObj.allProblems.get(question_id).op2;
		option[2]=quesObj.allProblems.get(question_id).op3;
		option[3]=quesObj.allProblems.get(question_id).op4;
		
		String ss =quesObj.allProblems.get(question_id).getJSON();
		out.println(ss);
	}
	else{
	
	%>
	
<p><b><i>Question Id must be between 0 to 13</i></b>

<%
	}

%>

