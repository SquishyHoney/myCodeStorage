let array = ["Oh","Love","I","Have"];
console.log(array);

array.forEach((element,index,array)=>{

    console.log(element);
    console.log(index);
    console.log(array);

});

let number = [10,25,30,65,75];
//10 25 35 30 65 65 130 75 205
let filtered_number = number.filter((value)=>{
    return value > 30;
});

console.log(filtered_number);

let reduced_number = number.reduce((total,element)=>{
    console.log(total);
    console.log(element);
    return total+element;
});

console.log(reduced_number);

let add_one = number.map((selected_number)=>{
    console.log(`Selected : ${selected_number}`);
    return selected_number + 2;
});