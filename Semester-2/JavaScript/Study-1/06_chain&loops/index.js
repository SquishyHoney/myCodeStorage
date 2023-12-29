let str = "still running"
console.log(str);

console.log(str.charAt(0).toUpperCase());

console.log(
        str.slice(
            0,str.indexOf(" ")
        ).toUpperCase().trim()
    );

let age;
document.getElementById("btn").onclick = function(){
    
    age = Number(document.getElementById("input").value);

    if(age > 18){
        document.getElementById("text").innerHTML = "You can drink";
    }else{
        document.getElementById("text").innerHTML = "You are a kid";
    }

    let x = 0;

    document.getElementById("stars").innerHTML = "";
    while(age>18){
        
        
        if(x==0){
            document.getElementById("stars").innerHTML += "o";
        }else{
            document.getElementById("stars").innerHTML += " * ";
        }

        if(x%10 == 0){
            document.getElementById("stars").innerHTML += "<br>";
        }

        x++;
        if(x>age){
            break;
        }
    }

}

//innerHTML +=
// 

