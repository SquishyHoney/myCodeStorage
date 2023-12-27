let canvas = document.getElementById("my_canvas");
let context = canvas.getContext("2d");


function rectangle(){
    context.fillStyle = "yellow";
    context.fillRect(0, 0, 250, 250);
    context.strokeStyle = "Red";
    context.strokeRect(0, 0, 250, 250);

    context.fillStyle = "Blue";
    context.fillRect(0, 250, 250, 250);
    context.strokeStyle = "Red";
    context.strokeRect(0, 250, 250, 250);

    context.fillStyle = "darkgreen";
    context.fillRect(250, 250, 250, 250);
    context.strokeStyle = "Green";
    context.strokeRect(250, 250, 250, 250);

    context.fillStyle = "cyan";
    context.fillRect(250, 0, 250, 250);
    context.strokeStyle = "Grey";
    context.strokeRect(250, 0, 250, 250);

}

context.font = "50px comic sans ms";
context.fillStyle = "red";
context.textAlign = "center";

context.fillText("You Win" , canvas.width/2 ,canvas.height/2);



/*
context.strokeStyle = "pink";
context.fillStyle = "purple";
context.lineWidth = "10";

context.beginPath();

//          x    y   r   rad
context.arc(250,250, 150, 0, 2 * Math.PI , true)

context.stroke();
context.fill();
*/
