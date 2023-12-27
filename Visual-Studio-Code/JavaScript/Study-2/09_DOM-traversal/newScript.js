console.log("Script is running");

let element = document.querySelector("#list_two");
let children = Array.from(element.children);

children.forEach(selected => selected.style.backgroundColor = "lightgreen");





//firstElementChild //first content
//lastElementChild // Last content

//parentElement //Upper

//nextElementSibling //Next list
//previousElementSibling //Previous List

//children[]
//Array.from(.children)















/*
let button_change = document.getElementById("up_set");
let button_unchange = document.getElementById("down_set");

let x = 0;

button_change.onclick = function(){



    try{
        console.log(x);
        let new_child = document.querySelector("#list_one");
        let color_this = new_child.children[x];

        
        if(x == 3){
            x = 0;
        }else{
            new_child.children[x].style.backgroundColor = "blue";
            x++;
        }
       
        if(x == 3){
            x = 0;
        }
        

    }catch(eror){
        console.log(eror);
    }
    
    
}

button_unchange.onclick = function(){



    try{
        console.log(x);
        let new_child = document.querySelector("#list_one");
        let color_this = new_child.children[x];

        
        if(x == 3){
            x = 0;
        }else{
            new_child.children[x].style.backgroundColor = "white";
            x++;
        }
       
        

    }catch(eror){
        console.log(eror);
    }
    
}
*/