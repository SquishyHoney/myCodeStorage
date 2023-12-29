
function song(age){
    console.log("Once i was" , age ,"years old");
    console.log("my daddy told me.");
    console.log("go get yourself some friends or you'll be lonely");
    console.log("Once i was",age,"years old");
    console.log("soon i'll be",age+1,"years old");
}

let num = Number(16);
song(num)

//Calculate();

function getArea(){
    let Area = window.prompt("Area of the rectangle : ");
    return Area;
}

function getLength(){
    let Length = window.prompt("Length of the rectangle : ");
    return Length;
}

function Calculate(){
    let x = getArea();
    let y = getLength();

    window.alert("your answer is",(x*y));
}

(18 > 19)? console.log("18 is greater than 19") : console.log("19 is greater than 18");
//  0                     1                     :                 0

//var is dangerous as it can distrub windows properties
for(var i=0;i<5;i++){
    console.log(i);
}

console.log("i can be access :",i); 