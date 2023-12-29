console.log("Hello there");
//

let x = 10;
for(i=0;i<10;i++){
    x++;
}

let y=0;
while(y<10){

    x++;
    y++;
    console.log(x);
    if(x == 25){
        console.log("Batas Nama");
    }

    if(x == 22){
        console.log("0_0");
    }

    document.getElementById("count").innerHTML = x;

}


console.log(x);

let name = "Evander";
let age = 19;
console.log("Hello my name is",name,"i am",age,"years old");

document.getElementById("intro").innerHTML = "Hello " + name +", I am "+ age + " years old";

let username;

document.getElementById("tombol").onclick = function(){

    username = document.getElementById("tulisan").value;
    console.log(username);
    document.getElementById("string").innerHTML = username;

    if(username == false){
        document.getElementById("string").innerHTML = "Nothing";
    }

}



