const Shopping = new Map([
    ["Shirt",10],
    ["Pants",20]
]);

//Shopping.delete("Shirt");
Shopping.set("Hat",30);

let total_shopping = 0;
total_shopping += Shopping.get("Shirt");
let check = Shopping.has("Shirt");

console.log(total_shopping);
console.log(Shopping);
console.log(check);