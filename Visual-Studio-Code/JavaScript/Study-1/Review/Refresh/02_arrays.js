console.log("Stack and Queue ---");
let stack= ["Greetings", "My" , "Name" , "Is" , "Bob"];

stack.pop();
stack.push("Pearl");

stack.shift();
stack.unshift("Hello");

console.log(stack);


console.log("Sort ---");
let ABC = ["C" , "B" , "A"];
let DEF = ["F" , "E" , "D"];

let alphabet = [DEF, ABC];

console.log(alphabet);
alphabet.sort();
console.log(alphabet);

console.log("Excel ---");
let cash = 100;
let USD = cash.toLocaleString("en-US",{style:'currency' , currency:'USD'});
console.log(USD);


console.log("in Loops ---");
let numbers = [5,2,3,4,1];
for(let i in numbers){
    console.log(`i = ${i}`);
    console.log(`numbers[${i}] = ${numbers[i]}`);
}

let max;
let matrics = [[2,3,4] , [5,6,7] , [8,9,1]];
for(a in matrics){
    for(b in matrics[a]){
        console.log(`baris ${a} kolum ${b} is ${matrics[a][b]}`);
        max = Math.max(...matrics[a]);
        console.log(max);
    }
}