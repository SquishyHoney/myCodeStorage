
const greeting = function(name){
    console.log(`Greetings ${name}`)
}
greeting("Bro Code");

const hello = (first,last) => console.log(`Hello there ${last},${first}`);
hello("Code","Bro");


const percent = (x,y) => (x/y)*100;
console.log(`${percent(45,50)}%`); 


let grades = [100,30,40,50,20,90,60,70,80];

const descending = (y,x) => y - x;
const print =(array) => console.log(array);

grades.sort(descending);
grades.forEach(print);