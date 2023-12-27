

document.getElementById("btn").onclick = function(){


    let bool = document.getElementById("check").checked;

    const master = document.getElementById("master");
    const visa = document.getElementById("visa");
    const paypal = document.getElementById("paypal");


    if(master.checked == true){

        document.getElementById("pay").innerHTML = "Paying using Master";

    }else if(visa.checked == true){

        document.getElementById("pay").innerHTML = "Paying using Visa";

    }else if(paypal.checked == true){

        document.getElementById("pay").innerHTML = "Paying using PayPal";

    }else{

        document.getElementById("pay").innerHTML = "Please select a payment method";

    }


    if(bool == 0){
        document.getElementById("text").innerHTML = "You are not Subscribed yet";
    }else{
        document.getElementById("text").innerHTML = "You are a Sub";
    }


    
    switch(document.getElementById("ID").value){
        case "Boss" :
            document.getElementById("userData").innerHTML = "On top of the list";
            break;

        case "Admin":
            document.getElementById("userData").innerHTML = "Second to the Boss";
            break;
        
        case "Manager":
            document.getElementById("userData").innerHTML = "Third but not last";
            break;
        
        default :
            document.getElementById("userData").innerHTML = "Please Input Valid"
    }

}

let x = 10;
let y = 18;

if(x %2==0 && y %2==0){
    console.log("Both are even numbers");
}

for(let x=0;x<15;x++){
    console.log(x);
}