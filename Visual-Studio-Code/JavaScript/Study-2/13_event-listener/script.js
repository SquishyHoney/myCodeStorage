//.addEventListener();


const inner_div = document.getElementById("inner_div");
const outer_div = document.getElementById("outer_div",true);

outer_div.addEventListener("click",beRed);

inner_div.addEventListener("click",beRed);

function beRed(){
    alert(`You selecter ${this.id}`);
    this.style.backgroundColor = "red";  
}

function beGreen(){
    alert(`You selecter ${this.id}`);
    this.style.backgroundColor = "lightgreen";
}