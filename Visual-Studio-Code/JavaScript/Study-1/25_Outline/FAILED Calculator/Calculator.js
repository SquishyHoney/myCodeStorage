let x;
let Eq = "";
let sum;
let paragraph = document.getElementById("textTwo").innerText;

function calculator(number){
    Eq += number;
    console.log(Eq);
    document.getElementById("textOne").innerHTML = Eq;
}


document.getElementById("1").onclick = function(){
    calculator("1");
}
document.getElementById("2").onclick = function(){
    calculator("2");
}
document.getElementById("3").onclick = function(){
    calculator("3");
}


document.getElementById("4").onclick = function(){
    calculator("4");
}
document.getElementById("5").onclick = function(){
    calculator("5");
}
document.getElementById("6").onclick = function(){
    calculator("6");
}


document.getElementById("7").onclick = function(){
    calculator("7");
}
document.getElementById("8").onclick = function(){
    calculator("8");
}
document.getElementById("9").onclick = function(){
    calculator("9");
}
document.getElementById("0").onclick = function(){
    calculator("0");
}

let switchNum;
document.getElementById("+").onclick = function(){
    showOperator("+");
    let temp = Number(Eq);
    if(sum == null){
        sum = temp;
        Eq = "";
        switchNum = 0;
        return;
    }

    console.log(`${sum} + ${temp}`);
    sum += temp;
    Eq = "";
    switchNum = 0;
}
document.getElementById("-").onclick = function(){
    showOperator("-");
    let temp = Number(document.getElementById("textOne").innerText);
    if(sum == null){
        sum = temp;
        Eq = "";
        switchNum = 1;
        return;
    }

    console.log(`${sum} - ${temp}`);
    sum -= temp;
    Eq = "";
    switchNum = 1;
}
document.getElementById("x").onclick = function(){
    showOperator("x");
    let temp = Number(document.getElementById("textOne").innerText);
    if(sum == null){
        sum = temp;
        Eq = "";
        switchNum = 2;
        return;
    }

    console.log(`${sum} * ${temp}`);
    sum *= temp;
    Eq = "";
    switchNum = 2;
}


document.getElementById("=").onclick = function(){
    //Showing Sum
    let temp = Number(document.getElementById("textOne").innerText);
    
    if(switchNum !== null){
        switch(switchNum){
            case 0:
                console.log(`${sum} + ${temp}`);
                sum += temp;
                Eq = "";
                console.log(`Pocket Number : ${sum}, String : ${Eq}`);
                break;
            case 1:
                console.log(`${sum} - ${temp}`);
                sum -= temp;
                Eq = "";
                console.log(`Pocket Number : ${sum}, String : ${Eq}`);
                break;
            case 2:
                console.log(`${sum} * ${temp}`);
                sum *= temp;
                Eq = "";
                console.log(`Pocket Number : ${sum}, String : ${Eq}`);
                break;
        }
    }

    document.getElementById("textOne").innerHTML = sum;
}

//string -> Equation button -> String gone store temp +=
//

function showOperator(operator){
    document.getElementById("textTwo").innerHTML = paragraph + operator;
}