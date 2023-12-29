const sayHelloTo = function(name){
    console.log(`Hello ${name}`);
}

sayHelloTo("Mike");

const arrowFunction = (value) => console.log(`value used here`,value);

arrowFunction("Say Yes");

let numbers = [10,15,20,25,30];
const printEachNumber = function(element,index,array){
    console.log("Element : "+element);
    console.log(`Index   : [${index}]`);
}
const powerEachNumber = (current_number) => console.log(
    Math.pow(current_number,2)
);

numbers.forEach(printEachNumber);
numbers.forEach(powerEachNumber);

