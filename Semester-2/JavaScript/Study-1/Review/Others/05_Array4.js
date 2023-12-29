//Filter , Reduce , For each , Map -> an array
console.log("Finding age above 21");

let ages = [14,29,17,26,21,23];
function checkAge(ages){
    return ages > 21;
}

let filtered_array = ages.filter(checkAge);
console.log(filtered_array);

/////////////////////////////////////////

console.log("Total price");

let prices = [30, 60, 20, 30];
function addAll(prices,element){
    return prices + element;
}

let total_price = prices.reduce(addAll);
console.log(total_price);

/////////////////////////////////////////

let names = ["chimchar" , "arceus" , "bronzor"];
names.sort();

function formalize(element, index, names){
    names[index] = element[0].toUpperCase() + element.substring(1);
}

function printArray(element){
    console.log(element);
}

names.forEach(formalize);
names.forEach(printArray);

/////////////////////////////////////////

let numbers = [1,2,3,4,5];
let squares = numbers.map(square);

function square(numbers){
    return Math.pow(numbers,2);
}

squares.forEach(printArray);

///////////////////////////////////

let score = [30,60,40,70,20,80,100];
function descendingSort(x,y){
    return x - y;
}

console.log(score.sort(descendingSort));