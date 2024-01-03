import { button_one } from "./01_changeTitle.js";
import { button_two } from "./01_changeTitle.js";
import { button_three } from "./01_changeTitle.js";
import { container_div } from "./01_changeTitle.js";
import { title_one } from "./01_changeTitle.js";
import { content_one } from "./01_changeTitle.js";


function displayDocumentStatus(){
    console.log(document);
    console.dir(document);
    console.log(document.URL);
}

displayDocumentStatus();

function displayRadioStatus(){
    console.log("Element Selectors , Using names");
    let radio_buttons = document.getElementsByName("hero");
    console.log(radio_buttons[0]);
}

displayRadioStatus();

function displayList(){
    console.log("Element Selectors , Using tag");
    let list_names = document.getElementsByTagName("li");
    list_names[0].style.backgroundColor = "green";
    list_names[1].style.backgroundColor = "Yellow";
    list_names[2].style.backgroundColor = "red";
}

displayList();