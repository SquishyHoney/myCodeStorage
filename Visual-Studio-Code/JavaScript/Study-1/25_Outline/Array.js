let fruits = ["Apple" , "Banana" , "Cucumber" , "Durian"];
let matrics = [[1,2,3] , [4,5,6] , [7,8,9]];

for(let i=0;i<3;i++){
    for(let j=0;j<3;j++){
        //console.log(`${matrics[i][j]}`);
    }
}

fruits.unshift("FIRST");
fruits.push("LAST");

fruits.sort();
fruits.reverse();

console.log(fruits);
console.log("Removing Begining");
fruits.shift();

console.log(fruits);
console.log("Removing Last");
fruits.pop();

console.log(`Begin with ${fruits[0]}`);
console.log(fruits);


let basketObjects = fruits.length;
console.log(basketObjects);

let eachItems = fruits[0].length;
console.log(eachItems);
//document.getElementById("Text").innerHTML = fruits;