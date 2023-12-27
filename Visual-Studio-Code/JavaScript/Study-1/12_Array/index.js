let fruits = ["Banana" , "Cucumber" , "Eggplant"];

fruits.push("Durian");
fruits.unshift("Apple");
fruits.sort();

console.log("Sets :",fruits);

console.log(fruits[1]);

fruits.shift();
console.log("After shift and sort:",fruits);

fruits.pop();
console.log("After pop:",fruits);

console.log("Final length",fruits.length);

let find = "Banana";
console.log(`${find} is at index :`,fruits.indexOf(find)+1);

fruits = fruits.reverse();
console.log("After Reverse :",fruits);
document.getElementById("text").innerHTML = fruits;

let matrics = [[1,2,3] , [4,5,6] , [7,8,9,0]];

for(let i = 0;i<matrics.length ;i++){

    for(let j = 0;j<matrics[i].length ;j++){

        document.getElementById("matrics").innerHTML += ` ${matrics[i][j]} ` ;

    }

    document.getElementById("matrics").innerHTML += `<br>`;

}

let primeNum = [7,3,2,5,1,11];

for(let numbers in primeNum){
    console.log(primeNum[numbers]);
}

for(let numbers in matrics){
    for(let num in matrics[numbers]){
        console.log(`Row ${numbers} Col ${num} is : ${matrics[numbers][num]}`);
    }
}
