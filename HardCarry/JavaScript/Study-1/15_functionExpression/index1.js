let grades = [100, 90 , 40, 55, 67, 82, 45, 63];
grades = grades.sort(ascendingSort);
grades.forEach(print);

function descendingSort(x,y){
    return y-x;
}
function ascendingSort(x,y){
    return x-y;
}

function print(array){
    console.log(array);
}



function sayHello(){
    console.log(`Hello!`);
}

const greeting = function(){
    console.log(`Greetings my friend!`);
}

sayHello();
greeting();

let count = 0;

const inc = function(){
    count++;
    document.getElementById("myLabel").innerHTML = count;
}
const dec = function(){
    count--;
    document.getElementById("myLabel").innerHTML = count;
}

//document.getElementById("myDec").onclick = dec;
//document.getElementById("myInc").onclick = inc;


