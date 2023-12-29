import { button_one } from "./01_changeTitle.js";
import { button_two } from "./01_changeTitle.js";
import { button_three } from "./01_changeTitle.js";
import { container_div } from "./01_changeTitle.js";
import { title_one } from "./01_changeTitle.js";
import { content_one } from "./01_changeTitle.js";


function styleButton(id,color){
    document.querySelector(id).style.backgroundColor = color;
    document.querySelector(id).style.borderRadius = "15px";
    document.querySelector(id).style.border = "1px solid black"
    document.querySelector(id).style.fontSize = "20px";
    document.querySelector(id).style.fontFamily = "Courier new";
}

function styleDiv(id,color){
    document.querySelector(id).style.backgroundColor = color;
    document.querySelector(id).style.borderRadius = "15px";
    document.querySelector(id).style.border = "1px solid black";
}

styleButton("#button_one","lightBlue");
styleButton("#button_two","#3657C3");
styleButton("#button_three","#6982D4");

styleDiv("#container_div","yellow");
styleDiv("#content_one","rgb(183, 183, 67)");


title_one.style.fontSize = "45px";
title_one.style.fontFamily = "Consolas";


