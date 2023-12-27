let array = ["Hello","There"];

array.shift();
array.unshift("Greetings");

array.pop();
array.push("My Friend");

for(let i=0 ; i<array.length ; i++){
    console.log(`${array[i]}`);
}


let numbers = [50,60,10,20,30,40];
console.log(`Numbers : ${numbers}`);

function sortAndSearch(){
    let key = 20;
    numbers.sort();
    console.log(`Sorted array : ${numbers}`);
    console.log(`Found ${key} in index ${numbers.indexOf(key)}`);
}

sortAndSearch();


let what = numbers.sort((x,y)=>{
    console.log(x,y);
    return y-x;
});

console.log(what);
