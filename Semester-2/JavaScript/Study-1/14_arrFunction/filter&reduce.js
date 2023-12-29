let ages = [18 ,21 ,24 ,27 ,30 ,40];
let work = ages.filter(checkAge);
work.forEach(printAge);


function checkAge(array){
    return array > 25;
}

function printAge(array){
    console.log(array);
}


let prices = [1, 2, 3];
let total = prices.reduce(checkOut);

console.log(`the total price is $${total}`);

function checkOut(total, element){
    return total + element;
}