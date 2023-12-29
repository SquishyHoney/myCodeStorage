let real_numbers = [3,-3,-1,1,-2,2];
let pokemon = ["girratina" , "dialga" , "palkia"];
real_numbers.sort();

let positive_numbers = real_numbers.filter(checkForNegative);
let total_numbers = real_numbers.reduce(sumAll);
let capitalize_name = pokemon.forEach(capitalFirstWord);
let add_ten = real_numbers.map(addTen);

function checkForNegative(array){
    return array >=0;
}
function sumAll(one,two){
    return one+two;
}
function addTen(number){
    console.log(`Current Number : ${number}`);
    return number + 10;
}

function capitalFirstWord(element, index, array){
    console.log(`Element : ${element}`);
    console.log(`Index   : ${index}`);
    console.log(`Array   : ${array}`);
    array[index] = element[0].toUpperCase() + element.substring(1);
    console.log(array[index]);
}

console.log(add_ten);
console.log(pokemon);
console.log(`All of the positive numbers = ${positive_numbers}`);
console.log(`Sum if all the numbers = ${total_numbers}`);