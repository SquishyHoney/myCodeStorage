import { button , title } from "./01_IO.js";

function styleAtext(id,font,clr){
    let selected_content = document.getElementById(id);
    selected_content.style.fontFamily = font;
    selected_content.style.color = clr;
}

title.innerHTML = "Welcome to my Java Script Review";
styleAtext("title_h2","Arial","Blue");
styleAtext("number_one","Consolas","purple");
styleAtext("number_two","Consolas","purple");

document.body.style.textAlign = "center";
document.body.style.backgroundColor = "lightBlue";

button.style.borderRadius = "15px";
button.style.width = "125px";