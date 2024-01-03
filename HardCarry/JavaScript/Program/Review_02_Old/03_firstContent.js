import { container , title } from "./01_const.js";
import { change_title } from "./01_const.js";
import { mona_megistus } from "./01_const.js";

change_title.addEventListener("click",()=>{
    let new_title = window.prompt("Enter New Title");
    document.title = new_title;
});

change_title.addEventListener("mouseover",()=>{
    change_title.style.backgroundColor = "green";
});

change_title.addEventListener("mouseout",()=>{
    change_title.style.backgroundColor = "lightgreen";
});