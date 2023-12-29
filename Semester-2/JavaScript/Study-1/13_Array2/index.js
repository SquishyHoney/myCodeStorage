let Afruits = ["Grapes","Persimmon","Banana"];
let Bmeat = ["Chiken breast","Sirloin","Pork"];
let Cgrains = ["Potatoes","Rice","Bread"];

let groceries = [Afruits,Bmeat,Cgrains];
groceries.sort();

let i = 1;
for(let itm1 in groceries){
    groceries[itm1].sort();
    for(let itm2 in groceries[itm1]){
        console.log(`Item No.${i} : ${groceries[itm1][itm2]}`);
        i++;
    }
}
console.log("Thank you for using our sorting services, Have a nice day!");

let numbers = [1,2,3,4,5,6,7,8,9,10];
console.log(`Expand operator : ${numbers}`,...numbers);

let maximum = Math.max(...numbers);
console.log(`the maximum number is ${maximum}`);

function addAll(...Arr){
    let sum = 0;
    for(let num in Arr){
        sum += Arr[num];
    }
    return sum;
}

console.log(`Sum of numbers : ${addAll(1,2,3)}`);

let class1 = ["Spongebob","Patrick","Squidward"];
let class2 = ["Mr.Krabs","Sandy","Pearl"];

class1.push(...class2);
console.log(class1);
