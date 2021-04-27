var q_id =0;
var clickAllowed =true;
       //3
/*
 this function get called from onPageLoad function, and after passing all the parameters.
1.we'll call all element by using their respective id's and by using .innerHtml function we'll make
them as html output on that particular place and make all relative parameters eqauls to it.
2. all parameter take their places and showed on their respective id's places.
*/
  		  function updateQus(qus,opt1,opt2,opt3,opt4){
			clickAllowed =true;
            document.getElementById("qus").innerHTML= qus;
			
            document.getElementById("ans1").innerHTML= opt1;
			document.getElementById("ans1").style.backgroundColor = "";
            document.getElementById("ans2").innerHTML= opt2;
			document.getElementById("ans2").style.backgroundColor = "";
            document.getElementById("ans3").innerHTML= opt3;
			document.getElementById("ans3").style.backgroundColor = "";
            document.getElementById("ans4").innerHTML= opt4;
			document.getElementById("ans4").style.backgroundColor = "";
			
			
        }
/*

once all the questions and option take their place. next task is to click and find the right answer.
1. function findingAns(clickedOption) calls everytime from Html page while we click on any of the option.
2. each option has a parameter which is having a value between 1 to 4, on every call methods works.
3.clicked option is the parameter which must be a no. between 1 to 4  after getting in, it uses fetch api 
to check the right answer which is written on the backend checkAnswers.jsp.
3. fetch api fetches all the data according to the option.
4. output will stored into data, and data must be  according to the backend. there must be a variable present on backend
which named as status which can be fetched by using data.status, it has two condition if it is correct  means if option or
answer which is correct matches to the backend, options turns green else red.  
*/
        
        //3
        function findingAns(clickedOption){
			
			if(clickAllowed==false){
				alert("Selecting Double options is not allowed!")
				return;
			}
			clickAllowed=false;
			console.log(clickedOption);
			fetch('checkAnswers.jsp?question_id='+q_id+'&option='+clickedOption)
  			.then(response => {
				console.log(response);
				return response.json();
			})
  			.then(data => {
				console.log(data)
				if(data.status=="correct"){
                document.getElementById("ans"+clickedOption).style.backgroundColor = "yellow";
				setTimeout(function(){
					document.getElementById("ans"+clickedOption).style.backgroundColor = "green";
					setTimeout(function(){correctAnswer(); }, 2000);
					 
				 }, 3000);
				
				
            }
            else{
                 document.getElementById("ans"+clickedOption).style.backgroundColor = "yellow";
				setTimeout(function(){
					document.getElementById("ans"+clickedOption).style.backgroundColor = "red";
					setTimeout(function(){wrongAnswer(); }, 2000);
					 
				 }, 3000);
				
				
            }
				});
			 }
		

        //2

/* After getting called by event listener.
		1.fetch api fetches the getQuestions.jsp page's compleate output, ehich means fetches all the information from
		the backend on frontend.
		2. response consist of all the relative header, profile info of that particular page.
		3.return response.json(); returns all the user eadable output in data.
		4. we fetch question from backed to frontend using data.question, question must be the variable at backend which consist
		of qus.
		5 similarly we fetch all the outputs one by one.
		6. and call update ques method in the end and pass all the parameters which have all the info of the backend.
*/
        function onPageLoad(question_id){
		 	
			fetch('getQuestions.jsp?question_id='+question_id)
 		 	.then(response => {
				console.log(response);
				return response.json();
			})
  			.then(data => {
				 console.log(data);
			var qus = data["question"];
			console.log(data.question);
			
			
			var opt1= data.options[0];
			
            console.log(data.options[0]);
            var opt2 =data.options[1];
			
            var opt3 =data.options[2];
			
            var opt4 =data.options[3];
			
            updateQus(qus,opt1,opt2,opt3,opt4);
				});
	
           document.getElementById("level"+(q_id)).style.backgroundColor = "Chartreuse";
        }

        //1  
		/*  this is kind of first method from where our application get start after getting in html, this method calls
		onPageLoad () method.
		*/
        document.addEventListener('DOMContentLoaded', function() {
            // your code here

            onPageLoad(q_id);
         }, false);
        
   

 function correctAnswer(){
	q_id=q_id+1;
	onPageLoad(q_id);
	document.getElementById("level"+(q_id-1)).style.backgroundColor = "white";
}

 function wrongAnswer(){
	
	document.getElementById("level"+(q_id)).style.backgroundColor = "red";
	alert("You Lost at this level!");
}
        
    