console.log("Java script Running!!");
let text1 = document.getElementById("textOne").innerText;
let text2 = document.getElementById("textTwo").innerText;
let text3 = document.getElementById("textThree").innerText;

document.getElementById("buttonOne").onclick = function(){
    let name = document.getElementById("input").value;
    name = name.toLowerCase();

    name = name.charAt(0).toUpperCase() + name.slice(1);
    
    let x = text1.indexOf(" is");
    new_sentence = name + text1.slice(x);
    
    document.getElementById("textOne").innerHTML = new_sentence;
}


document.getElementById("buttonTwo").onclick = function(){
    let verb = document.getElementById("input").value;
    verb = verb.toLowerCase();

    let x = text2.indexOf("is ") + 3;
    let y = text2.indexOf(" his");

    let new_sentece = text2.slice(0,x) + verb + text2.slice(y); 

    document.getElementById("textTwo").innerHTML = new_sentece;
}


document.getElementById("buttonThree").onclick = function(){
    let adjective = document.getElementById("input").value;
    adjective = adjective.toLowerCase();

    let x = text3.lastIndexOf("y ") + 2;

    let new_sentece = text3.slice(0,x) + adjective + ".";

    document.getElementById("textThree").innerHTML = new_sentece;
}


console.log(text1.replaceAll(" ","/"));
console.log(text2.replaceAll(" ","/"));
console.log(text3.replaceAll(" ","/"));
//press button  ->  take the text  ->  put into the sentence