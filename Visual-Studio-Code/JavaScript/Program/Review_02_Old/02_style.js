import { container , title } from "./01_const.js";
import { change_title } from "./01_const.js";
import { mona_megistus } from "./01_const.js";

document.body.style.fontFamily = "Consolas";

mona_megistus.style.height = "205px";
title.style.textAlign = "center";

function buttonMaker(id,color){
    let temp = document.querySelector(id);
    temp.style.border = "2px solid black";
    temp.style.borderRadius = "15px";
}

buttonMaker("#button_change_title");