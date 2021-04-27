<%-- Add a question data set.
Issue: We only return exactly one question at a time.
Solution: Create a pool of q and randomly return one.
Create all_q.jsp
Create a Question Class
You decide what all attributes should it have?
hint: Take a look at getq.jsp API.
What functions should it have? #  Create functions only when we need them.
Create a variable containing 3-4 q for now.
Include "all_q.jsp" in "getq.jsp" and as output/response return a random question.
 --%>
<%@ include file = "Problem.jsp" %>
<%@ page import="java.util.ArrayList" %>

<%
class Questions{
    
    ArrayList<Problem> allProblems =new ArrayList<Problem>();

    Questions() {

        allProblems.add(new Problem("The Finance Commission is constituted under which article of the constitution of India?",
                "245","270","280","226","1"));
        allProblems.add(new Problem("Who built The Taj Mahal?","Shahjahan","Sher shah",
                "Nadir shah","Jahangir","1"));
        allProblems.add(new Problem("Bleaching powder is used in drinking water as a/an?","Coagulant",
                "Disinfectant","Anticeptic","Antibiotic","2"));
        allProblems.add(new Problem("Washing soda is also known as?","Sodium cloride",
                "Calcium BiCarbonate","Sodium Carbonate","Phosphorous","3"));
        allProblems.add(new Problem("What is the ratio of RBC to WBC?","1:600",
                "600:1","1:900","500:1","2"));
        allProblems.add(new Problem("Which city is the Silicon valley of India?","Mumbai",
                "Bengaluru","Hyderabad","Delhi","2"));
        allProblems.add(new Problem("In which year Delhi became the capital of India?","1910",
                "1911","1910","1905","3"));
        allProblems.add(new Problem("Which disease is caused by the bite of a mad dog?","Lukoderma",
                "HydroPhobia","Hypertension","Arthritis","2"));
        allProblems.add(new Problem("Which metal is used for generation of Nuclear Power?","Thorium",
                "Uranium","Aluminium","Fossils","2"));
        allProblems.add(new Problem("By whom is the speaker of Lok Sabha elected?","All the members of Rajya Sabha",
                "All the members of Lok Sabha and Rajya Sabha","People of India","All the members of Lok Sabha",
                "4"));
        allProblems.add(new Problem("Which article is related to the special status of Jammu and Kashmir?",
                "248", "270","300","110","2"));
        allProblems.add(new Problem("Which is the largest river basin in India?","Godavari Basin",
                "Yamuna Basin","Narmada Basin","Ganga Basin","4"));
        allProblems.add(new Problem("Which soil is best suited for cotton?","Red Soil",
                "Loam","Alluvial Soil","Regur","4"));
        allProblems.add(new Problem("Which gland is both exocrine and endocrine?"," Pituitary gland",
                "Thyroid Gland","Small Intestine","Pancreas","4"));
    }
    


}

 
%>