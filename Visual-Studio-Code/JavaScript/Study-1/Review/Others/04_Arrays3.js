let matrics = [ [1,2,3] , [4,5,6] , [7,8,9,0] ];

for(a in matrics){
    for(b in matrics[a]){
        console.log(matrics[a][b]);
    }
}

let grains = ["Rice" , "Bread" , "Nuts"];
let vegies = ["Spinach" , "Peas" , "Cabage"];

let food = [grains , vegies];
for(j in food){
    console.log(...food[j]);
}

let numbers = [1,9,2,8,3,7,11,4,6,5,10];
let maximum = Math.max(...numbers);
console.log(maximum);