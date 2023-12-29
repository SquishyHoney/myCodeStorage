let numList = 0;
document.getElementById("Button_One").onclick = function(){
    let toDoList = document.getElementById("Input_One").value;

    if(toDoList !== ""){
        numList++;
        document.getElementById("Text_One").innerHTML += `${numList}. ${toDoList} <br>`;
    } 
}



let tempNum = Math.floor(Math.random()*10);
document.getElementById("Button_Two").onclick = function(){
    let answer = Number(document.getElementById("Input_Two").value);
    let randNum = tempNum;
    let booleanAnswer;
    if(answer != tempNum){
        booleanAnswer = true;
    }else{
        booleanAnswer = false;
    }

    let squareIt = document.getElementById("Square_Two").checked;
    if(squareIt == 1){
        randNum = Math.sqrt(randNum);
    }

    let powIt = document.getElementById("Power_Two").checked;
    if(powIt == 1){
        randNum = Math.pow(randNum,2);
    }

    let ceilIt = document.getElementById("Ceil_Two");
    let floorIt = document.getElementById("Floor_Two");
    if(ceilIt.checked){
        randNum = Math.ceil(randNum);
    }else if(floorIt.checked){
        randNum = Math.ceil(randNum);
    }


    if(booleanAnswer == 1){
        document.getElementById("Text_Two").innerHTML = `Wrong Answer the correct ans is ${tempNum}`;
    }else{
        document.getElementById("Text_Two").innerHTML = `You are Correct modified answer ${randNum}`;
    }
}



document.getElementById("Button_Pokemon").onclick = function(){
    let chosenTurtwig = document.getElementById("Radio_Turtwig");
    let chosenChimchar = document.getElementById("Radio_Chimchar");
    let chosenPiplup = document.getElementById("Radio_Piplup");

    if(chosenTurtwig.checked){
        document.getElementById("Text_Pokemon").innerHTML = `You have Chosen Turtwig`;
    }else if(chosenChimchar.checked){
        document.getElementById("Text_Pokemon").innerHTML = `You have Chosen Chimchar`;
    }else if(chosenPiplup.checked){
        document.getElementById("Text_Pokemon").innerHTML = `You have Chosen Piplup`;
    }
}



document.getElementById("Button_Switch").onclick = function(){
    let greetings;
    switch(document.getElementById("Input_Switch").value){
        case "boss":
            greetings = `Welcome Boss!!!`;
            break;
        case "admin":
            greetings = `Welcome Admin!!`;
            break;
        case "worker":
            greetings = `Welcome worker!`;
            break;
        default:
            greetings =`Eror`;
    }
    document.getElementById("Text_Switch").innerHTML = greetings;   
}




function mainConsole(){
    let numNeg = -10;
    numNeg = Math.abs(numNeg);
    console.log(`Abs Function : ${numNeg}`);
};

mainConsole();