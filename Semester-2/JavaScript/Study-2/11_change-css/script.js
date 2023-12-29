const title = document.getElementById("title");

title.style.backgroundColor = "#ffc0cb";
title.style.color = "purple";
title.style.fontFamily = "consolas";
title.style.textAlign = "center";
title.style.border = "2px solid magenta";
title.style.display = "block";







wasForTest();




function wasForTest(){
    if(title.style.display == "block"){
        console.log("apear");
    }
    
    
    document.getElementById("button").onclick = function(){
        if(title.style.display == "block"){
            title.style.display = "none";
            console.log("Disapear");
        }else{
            title.style.display = "block";
            console.log("Apear");
        }
    }
}


function wasForTest2(){
    let x = window.prompt("First");
    let y = window.prompt("Second");
    let z = window.prompt("third");

    title.style.backgroundColor = `rgb(${x},${y},${z})`;
}

