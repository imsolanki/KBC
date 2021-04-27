<%
class Problem {

    String q;
    String op1;
    String op2;
    String op3;
    String op4;
    String correctAns;

    Problem(String q,String op1, String op2, String op3, String op4,String correctAns){
        this.q=q;
        this.op1 =op1;
        this.op2=op2;
        this.op3=op3;
        this.op4=op4;
        this.correctAns=correctAns;
    }
    
    public String getJSON(){
        String s1=("{"+"\n"+"\"question\""+": "+"\""+q+"\","+"\n");
        String s2=("\"options\""+": ["+"\""+op1+"\", "+"\""+op2+"\", "+"\""+op3+"\", "+"\""+op4+"\"]"+"\n"+"}");
        return (s1+s2);
        }

}
%>
