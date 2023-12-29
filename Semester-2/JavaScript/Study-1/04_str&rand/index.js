
document.getElementById("button").onclick=function(){
    x = Math.floor(Math.random()*100);
    document.getElementById("button").innerHTML=x;
}

document.getElementById("button2").onclick = function(){
    document.getElementById("text2").innerHTML = "This Will Change".toUpperCase();
}

document.getElementById("button3").onclick = function(){
    document.getElementById("text2").innerHTML = "This Will Change".toLowerCase();
}

let phoneNumber = "123-456-789";
document.getElementById("phone").innerHTML = phoneNumber;

document.getElementById("button4").onclick = function(){
    document.getElementById("phone").innerHTML = phoneNumber.replaceAll("-","/"); 
}

let user = "John Doe";
for(let i=0;i<user.length;i++){
    console.log(user.charAt(i));
}


console.log("char at 0  :",user.charAt(0));
console.log("index at o :",user.indexOf("o"));
console.log("last at o :",user.lastIndexOf("o"));

//console.log("upper-case :",user.toUpperCase());
//console.log("lower-case :",user.toLowerCase());