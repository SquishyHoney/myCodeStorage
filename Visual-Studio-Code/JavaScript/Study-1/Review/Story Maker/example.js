let sentence_1 = "Hello my (Z) good friend,today is a (Z) really nice day.";

let string_length = sentence_1.length;
console.log("String length : " + string_length);

let first_Z = sentence_1.indexOf(" good");
console.log("First Z : " + first_Z);
console.log(first_Z);

let second_Z = sentence_1.lastIndexOf("Z");
console.log("Last index of Z : " + second_Z);

let locate_Mid = sentence_1.charAt(string_length/2);
console.log("The Mid array Element is : " + locate_Mid);