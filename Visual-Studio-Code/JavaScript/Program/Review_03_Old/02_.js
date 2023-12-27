document.body.style.backgroundColor = "lightgrey";
document.body.style.fontFamily = "Consolas";

const paragraph_one = document.getElementById("paragraph_one");
const button = document.querySelector("#submit_button");


button.addEventListener("click",()=>{
    
    let name = document.getElementById("paragraph_input").value;

    let sentence = paragraph_one.innerText;
    let cut_1 = sentence.indexOf("(")+1;
    let cut_2 = sentence.indexOf(")");
    
    sentence = sentence.slice(0,cut_1) + name + sentence.slice(cut_2);
    paragraph_one.innerHTML = sentence;

    
});