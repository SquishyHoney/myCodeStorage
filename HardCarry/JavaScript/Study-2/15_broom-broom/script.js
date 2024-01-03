let x=0;
let y=0;

const my_div = document.getElementById("my_div");

window.addEventListener("keydown",move);

let speed = 10;

function move(event){
    
    switch(event.key){
        case "ArrowDown":
            y+=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            break;

        case "ArrowUp":
            y-=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            break;
            
        case "ArrowRight":
            x+=speed;
            //console.log(x);
            my_div.style.left = x + "px";
            break;

        case "ArrowLeft":
            x-=speed;
            //console.log(x);
            my_div.style.left = x + "px";
            break;

        










        case "x":
            y+=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            break;

        case "s":
            y+=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            break;

        case "w":
            y-=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            break;
            
        case "d":
            x+=speed;
            //console.log(x);
            my_div.style.left = x + "px";
            break;

        case "a":
            x-=speed;
            //console.log(x);
            my_div.style.left = x + "px";
            break;
        
        

        


        case "q":
            y-=speed;
            x-=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            my_div.style.left = x + "px";
            break;

        case "e":
            y-=speed;
            x+=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            my_div.style.left = x + "px";
            break;
            
        case "c":
            y+=speed;
            x+=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            my_div.style.left = x + "px";
            break;

        case "z":
            y+=speed;
            x-=speed;
            //console.log(y);
            my_div.style.top = y + "px";
            my_div.style.left = x + "px";
            break;

        

        case "m":
            x+=50;
            y+=50;
            my_div.style.top = y + "px";
            my_div.style.left = x + "px";
            break;
        
        case "n":
            x=0;
            y=0;
            my_div.style.top = y + "px";
            my_div.style.left = x + "px";
            break;
    }
}

window.addEventListener("keydown",event => console.log(event.key));
