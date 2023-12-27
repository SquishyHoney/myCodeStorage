document.body.style.fontFamily = "courier new";

let selector_class = document.querySelector(".using_class");
selector_class.style.backgroundColor = "red";

let selector_id = document.querySelector("#using_id");
selector_id.style.backgroundColor = "darkBlue";
selector_id.style.fontWeight = "bold";
selector_id.style.fontSize = "25px";
selector_id.style.textAlign = "center";
selector_id.style.fontFamily = "arial";


let humans = document.querySelectorAll("[For]");

console.log(humans);

humans.forEach(element => {

    element.style.backgroundColor = "lightblue"

});
