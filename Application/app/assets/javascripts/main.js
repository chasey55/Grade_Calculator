// JavaScript file for the Grade Calculator

// declare variables for data
var grade1Input = grade2Input = grade3Input = grade4Input = grade5Input = grade6Input = grade7Input = grade8Input = grade9Input = grade10Input = 0;
var weight1Input = weight2Input = weight3Input = weight4Input = weight5Input = weight6Input = weight7Input = weight8Input = weight9Input = weight10Input = 0;
var assignment1Result = assignment2Result = assignment3Result = assignment4Result = assignment5Result = assignment6Result = assignment7Result = assignment8Result = assignment9Result = assignment10Result = 0;

// make sure vars are valid, and calculate
function validate() {
        
    // get the values of all inputs    
    var grade1Input = document.getElementById("gradeNum1").value;
    var grade2Input = document.getElementById("gradeNum2").value;
    var grade3Input = document.getElementById("gradeNum3").value;
    var grade4Input = document.getElementById("gradeNum4").value;
    var grade5Input = document.getElementById("gradeNum5").value;
    var grade6Input = document.getElementById("gradeNum6").value;
    var grade7Input = document.getElementById("gradeNum7").value;
    var grade8Input = document.getElementById("gradeNum8").value;
    var grade9Input = document.getElementById("gradeNum9").value;
    var grade10Input = document.getElementById("gradeNum10").value;

    var weight1Input = document.getElementById("weight1").value;
    var weight2Input = document.getElementById("weight2").value;
    var weight3Input = document.getElementById("weight3").value;
    var weight4Input = document.getElementById("weight4").value;
    var weight5Input = document.getElementById("weight5").value;
    var weight6Input = document.getElementById("weight6").value;
    var weight7Input = document.getElementById("weight7").value;
    var weight8Input = document.getElementById("weight8").value;
    var weight9Input = document.getElementById("weight9").value;
    var weight10Input = document.getElementById("weight10").value;
    
    // turn the weights into decimals
    weight1Input = weight1Input / 100;
    weight2Input = weight2Input / 100;
    weight3Input = weight3Input / 100;
    weight4Input = weight4Input / 100;
    weight5Input = weight5Input / 100;
    weight6Input = weight6Input / 100;
    weight7Input = weight7Input / 100;
    weight8Input = weight8Input / 100;
    weight9Input = weight9Input / 100;
    weight10Input = weight10Input / 100;

    // calculate the grade for each of the assignments
    assignment1Result = grade1Input * weight1Input;
    assignment2Result = grade2Input * weight2Input;
    assignment3Result = grade3Input * weight3Input;
    assignment4Result = grade4Input * weight4Input;
    assignment5Result = grade5Input * weight5Input;
    assignment6Result = grade6Input * weight6Input;
    assignment7Result = grade7Input * weight7Input;
    assignment8Result = grade8Input * weight8Input;
    assignment9Result = grade9Input * weight9Input;
    assignment10Result = grade10Input * weight10Input;

    // calculate the weight total
    var weightTotal = weight1Input + weight2Input + weight3Input + weight4Input + weight5Input + weight6Input + weight7Input + weight8Input + weight9Input + weight10Input;

    // if the weight is equal to 1
    if (weightTotal == 1) {
        // calculate the grade normally
        var finalGrade = assignment1Result + assignment2Result + assignment3Result + assignment4Result + assignment5Result + assignment6Result + assignment7Result + assignment8Result + assignment9Result + assignment10Result;
    } else {
        // if the grade is not equal to one, divide by the current total weight
        var finalGrade = (assignment1Result + assignment2Result + assignment3Result + assignment4Result + assignment5Result + assignment6Result + assignment7Result + assignment8Result + assignment9Result + assignment10Result) / weightTotal;
    }
    
    // OUTPUT the final grade and combined weight
   
    var gradeResult = finalGrade.toFixed(3);
    var combinedWeight = (weightTotal*100).toFixed(0);
    
    document.getElementById("gradeResult").innerText = gradeResult;
    document.getElementById("combinedWeight").innerText = combinedWeight;
    document.getElementById("hidden_result").value = gradeResult;
    document.getElementById("hidden_weightAvg").value = combinedWeight;
}





