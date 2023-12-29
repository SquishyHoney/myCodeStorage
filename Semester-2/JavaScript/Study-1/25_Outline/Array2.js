let c_fruits = ["Banana" , "Apple" , "Grapes" , "Cucumber"];
let b_meats = ["Pork" , "Chicken" , "Beef"];
let a_drinks = ["Sprite" , "Water" , "Cola"];

let basketObjects = [c_fruits , b_meats , a_drinks];
//console.log(basketObjects);

for(let i in basketObjects){
    basketObjects[i].sort();
    for(let j in basketObjects[i]){
        //console.log(`-> ${basketObjects[i][j]}`);
    }
}

//console.log(basketObjects);

let name = ["Andy" , "Bob" , "Charlie"];
console.log(...name);
