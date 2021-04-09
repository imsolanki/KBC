        
        var correctAns=1;

         function updateQus(qus,opt1,opt2,opt3,opt4){
            document.getElementById("qus").innerHTML= qus;
            document.getElementById("ans1").innerHTML= opt1;
            document.getElementById("ans2").innerHTML= opt2;
            document.getElementById("ans3").innerHTML= opt3;
            document.getElementById("ans4").innerHTML= opt4;
        }
        
        function findingAns(clickedOption){

            console.log(clickedOption);
            if(clickedOption==correctAns){
                document.getElementById("ans"+clickedOption).style.backgroundColor = "green";
            }
            else{
                document.getElementById("ans"+clickedOption).style.backgroundColor = "red";
            }
            
        }

        function onPageLoad(){

            var qus ="Name the First player who score Hundred centuries in cricket";
            var opt1 ="Sachin Tendulkar";
            var opt2 ="Sourav Ganguly";
            var opt3 ="Gautam Gambhir";
            var opt4 ="Virendra Sehwag";
            updateQus(qus,opt1,opt2,opt3,opt4);
        }
        document.addEventListener('DOMContentLoaded', function() {
            // your code here
            onPageLoad();
         }, false);
        
    
        
    