let number;
let space = " : ";
//number = window.prompt("Enter something");

number = 12;
document.getElementById("text").innerHTML = (number+1) + " is a " + typeof number;
document.getElementById("text2").innerHTML = (number-2) + " is a " + typeof Number(number);



console.log("Math function");
let temp = 3.14159265359;

console.log(temp + space + Math.round(temp) + ",Round" , typeof temp);
console.log(temp + space + Math.ceil(temp) + ",Ceil");
console.log(temp + space + Math.pow(temp,2) + ",pow 2");

console.log("Square root of",9,"is",Math.sqrt(9));
console.log("Absolute : ",Math.abs(-1));



/*document.getElementById("butAlas").onclick=function(){

    let alas;
    alas = document.getElementById("textAlas").value;

}

document.getElementById("butTinggi").onclick=function(){

    let tinggi;
    tinggi = document.getElementById("textTinggi").value;

}

let hasil = Math.sqrt((pow(alas)*2) + (pow(tinggi)*2));
document.getElementById("Hypo").innerHTML = hasil;*/


document.getElementById("butTinggi").onclick=function(){
    let tinggi,alas;

    tinggi = Number(document.getElementById("textTinggi").value);
    alas = Number(document.getElementById("textAlas").value);

    let hasil;
    hasil = Math.sqrt(Math.pow(alas, 2) + Math.pow(tinggi, 2));

    console.log(typeof tinggi,typeof alas);
    document.getElementById("hypo").innerHTML = hasil + " " + typeof hasil;

}