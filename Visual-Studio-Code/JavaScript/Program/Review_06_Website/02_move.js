import {puppet} from "./02_main.js";

let x = 0;
let y = 0;
let speed = 10;

window.addEventListener("keydown",move);

function move(event){
    switch(event.key){

        case "ArrowDown":
            y += speed;
            console.log(y);
            puppet.style.top = y + "px";
            break;

        case "ArrowUp":
            y -= speed;
            console.log(y);
            puppet.style.top = y + "px";
            break;

        case "ArrowLeft":
            x -= speed;
            console.log(x);
            puppet.style.left= x + "px";
            break;

        case "ArrowRight":
            x += speed;
            console.log(x);
            puppet.style.left= x + "px";
            break;
    }
}