console.log(`${typeof("1")}`);

let queue = ["Lisa" , "Alicia"];
console.log(`-> Waiting Line : ${queue}\n`);


console.log(`[Felicia Joins into the line]`);
queue.push("Felicia");
console.log(`-> Waiting Line : ${queue}\n`);


console.log(`[Bill slips into the line]`);
queue.unshift("Bill");
console.log(`-> Waiting Line : ${queue}\n`);


console.log(`[The line is sorted alphabeticly]`);
queue.sort();
console.log(`-> Waiting Line : ${queue}\n`);


console.log(`[The teacher called the first person]`);
queue.shift();
console.log(`-> Waiting Line : ${queue}\n`);


console.log(`[Lisa exits the line]`);
queue.pop();
console.log(`-> Waiting Line : ${queue}\n`);