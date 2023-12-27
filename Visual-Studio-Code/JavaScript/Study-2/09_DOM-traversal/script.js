//let element = document.querySelector("#chinese_food");

//let child = document.querySelector("#chinese_food").firstElementChild;

document.querySelector("#chinese_food").firstElementChild.style.backgroundColor = "LightGreen";
document.querySelector("#chinese_food").style.backgroundColor = "red";

//console.log(child)


let up_button = document.getElementById("up_set");
let down_button = document.getElementById("down_set");

let first_button = document.getElementById("first");
let second_button = document.getElementById("second");
let third_button = document.getElementById("third");

function markIt(picked_syntax){

}

function selector(){

}


first_button.onclick = function (){
    let selected_element = document.nextElementSibling;
    selected_element.style.backgroundColor = "red";
}












up_button.style.backgroundColor = "cyan";
up_button.style.borderRadius = "5px";
up_button.style.border = "1px";

down_button.style.backgroundColor = "pink";
down_button.style.borderRadius = "5px";
down_button.style.border = "1px";


document.getElementById("first").style.borderRadius = "10px";
document.getElementById("second").style.borderRadius = "10px";
document.getElementById("third").style.borderRadius = "10px";

document.getElementById("first").style.border = "1px";
document.getElementById("second").style.border = "1px";
document.getElementById("third").style.border = "1px";

function colorIt(id_name,color_picked){
    document.getElementById(id_name).style.backgroundColor = color_picked;
}

colorIt("first","lightgreen");
colorIt("second","yellow");
colorIt("third","red");



console.log("donee");