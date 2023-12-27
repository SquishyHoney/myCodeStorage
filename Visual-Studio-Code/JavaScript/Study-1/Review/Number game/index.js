let tries = 10; //window.prompt("How many tries do you want?");

let number = Math.random()*10;
console.log(`Random Number : ${number}`);


console.log(`Ceiling Number : ${Math.ceil(number)}`);
console.log(`Floor Number : ${Math.floor(number)}`);
console.log(`Power Number : ${Math.pow(number,2)}`);
console.log(`Square Number : ${Math.sqrt(number)}`);


number = Math.round(number);
console.log(`Rounded Number : ${number}`);


if(document.getElementById("Text_Two").innerText == false){
    document.getElementById("Text_Two").innerHTML = "Please enter a number";
    document.getElementById("Text_Three").innerHTML = "Please enter a number";
}


let answer;
document.getElementById("Button_One").onclick = function(){

    tries--;
    console.log(`Tries : ${tries}`);
    
    answer = document.getElementById("Input_One").value;

    if(answer == number){
        document.getElementById("Text_Two").innerHTML = `Corrent the answer is ${number}`;
    }else{
        document.getElementById("Text_Two").innerHTML = `False the answer is ${number}`;
    }

    if(tries < 4 && tries > 0){
        alert(`You have ${tries} tries left`);
    }else if(tries <= 0){
        alert("You have no more tries");
    }
}








