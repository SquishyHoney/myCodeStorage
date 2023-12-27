sum(21,3,printConsole);

function sum(x,y,fung){
    let total = x+y;
    return fung(total);
}

function printConsole(hasil){
    return console.log(hasil);
}

let students = ["spongebob" , "patrick" , "sandy"]
students.sort().reverse();

students.forEach(capitalize);
students.forEach(prints);

function capitalize(element, index, array){
    array[index] = element[0].toUpperCase() + element.substring(1);
}

function prints(element){
    console.log(element);
}


let numbers = [1,2,3,4,5];
let squares = numbers.map(square);
let cubes = numbers.map(cube);

squares.forEach(printSquare);
cubes.forEach(printCube);

function square(array){
    return Math.pow(array,2);
}   

function printSquare(array){
    console.log(array);
}


function cube(array){
    return Math.pow(array,3);
}

function printCube(array){
    console.log(array);
}