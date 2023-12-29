export const button_one = document.querySelector("#button_one");
export const button_two = document.querySelector("#button_two");
export const button_three = document.querySelector("#button_three");

export const container_div = document.querySelector("#container_div");
export const content_one = document.querySelector("#content_one");

export const title_one = document.querySelector("#title_one");



function changeTitle(value){
    value = window.prompt("Change The Title");
    document.title = value;
    console.log(`Changed Title To ${value}`);
}

button_one.onclick = function(){
    changeTitle("JavaScript");
}