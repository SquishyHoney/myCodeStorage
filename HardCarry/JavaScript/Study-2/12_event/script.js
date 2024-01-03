function doSomething(){
    alert("Hello");
}


//const element = document.body;
//element.onload = doSomething;

let x=-10;



const element = document.getElementById("my_div");

function beGreen(){
    console.log("green");
    element.style.backgroundColor = "lightgreen";
    element.style.fontFamily = "consolas";
    element.style.textAlign = "left";
    x++;
}


function beRed(){
    console.log("red");
    element.style.backgroundColor = "red";
    element.style.fontFamily = "";
    element.style.textAlign = "right";
    x++;
}

element.onchange = console.log(x);

element.onmouseover = beRed;
element.onmouseout = beGreen;


element.onmousedown = beGreen
element.onmouseup = beRed;







function before(){
    function doSomething(){
        alert("You press the button");
    }
    
    function sayHello(){
        alert("Hello my friend");
    }
    
    
    
    let me_button = document.getElementById("button");
    
    me_button.onclick = sayHello; 
}