<%
String ques= "Who is bob?";
int id = 1234;
String[]option =new String [4];
option[0]="alice";
option[1]="bob";
option[2]="rob";
option[3]="Same";


out.println("{"+"\n");
out.println("\"question_id\": "+id+","+"\n");
out.println("\"question\": "+'"'+ques+'"'+","+"\n");
out.println("\"options\": ["+"\n");
for(int i=0;i<option.length;i++){
	
	if(i==option.length-1){
		out.println(" "+"\""+option[i]+"\""+"\n");
	}else{
		out.println(" "+"\""+option[i]+"\","+"\n");
	}
	
	
}
out.println("]"+"\n"+"}");


%>



