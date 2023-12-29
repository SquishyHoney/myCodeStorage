let number = 0;

document.getElementById("tambah").onclick=function(){
    number++;
    document.getElementById("number").innerHTML = number;
}

document.getElementById("reset").onclick=function(){
    number = 0;
    document.getElementById("number").innerHTML = number;
}

document.getElementById("kurangin").onclick=function(){
    number--;
    document.getElementById("number").innerHTML = number;
}