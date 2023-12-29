let name = "Lisa Black-Pink";
let genre = "Korean Pop (KPOP)";
let phone = "123-456-789-10";

let upperFunction = name.toUpperCase();
console.log(`All Upper : ${upperFunction}`);

let lowerFunction = genre.toLowerCase();
console.log(`All Lower : ${lowerFunction}`);

let newPhone = phone.replaceAll("-","//");
console.log(`Phone Number : ${newPhone}`);

let firstK = genre.indexOf("K");
console.log(`${genre} -> ${firstK}`);

let secondK = genre.lastIndexOf("K");
console.log(`${genre} -> ${secondK}`);

console.log(genre[5]);
console.log(genre.charAt(5));

let fullName = "light yagami";
let formalName;
console.log(fullName.charAt(0).toUpperCase());
