let stringName;
let newName;
document.getElementById("btn").onclick = function(){

    stringName = document.getElementById("Input").value;
    newName = document.getElementById("Input").value;
    document.getElementById("Hasil").innerHTML = stringName;

    if(newName != 0 ){
        console.log(
            "Welcome to the website Mr/Ms."+
            newName.slice(newName.indexOf(" ")+1)+
            "\nShall i call you",
            newName.slice(0,newName.indexOf(" ")),
            "Instead?"
        );
    }
    

}

let name = "Angela Don";
console.log(name);

console.log("First Name :",name.slice( 0 , name.indexOf(" ") ));
console.log("Last  Name :",name.slice( name.indexOf(" ")+1 ));

