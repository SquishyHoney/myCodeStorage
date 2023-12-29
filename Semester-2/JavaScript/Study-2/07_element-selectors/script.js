
document.body.style.fontFamily = "courier new";
document.body.style.color = "Black";
document.body.style.borderRadius = "15rem";


let title = document.getElementById("title");
title.innerHTML = "I'M JUST KEN ANYWHERE ELSE I'LL BE A TEN";



title.style.backgroundColor = "lightgreen";

let radio_buttons = document.getElementsByName("weapons");
console.log(radio_buttons[0]);


radio_buttons.forEach((item,index,array) => {
    if(item.checked){
        console.log(item.value);
        //console.log(`Selected item at index ${index}`);    
    }
});


////////////////////////////////////////////////////////

let workout = document.getElementsByTagName("li");

workout[2].style.backgroundColor = "lightblue";


//////////////////////////////////////////////////////


let movies = document.getElementsByClassName("movies");

movies[2].style.backgroundColor = "pink";

///////////////////////////////////////////////////////




function usingQuerySelector(){

    let selector = document.querySelector("#title");
    selector.style.fontFamily = "arial";

    let selector_2 = document.querySelector(".movies");
    selector_2.style.fontWeight = "bold";

}


usingQuerySelector();













