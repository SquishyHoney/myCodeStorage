if(document.getElementById("Result").innerText == false){
    document.getElementById("Result").innerHTML = `Please select a payment method`;
}

document.getElementById("Submit_Button").onclick = function(){
    
    function print(value){
        document.getElementById("Result").innerHTML = `You are paying using ${value}`;
    }
    
    const Master_Card = document.getElementById("Master_Card");
    const Visa = document.getElementById("Visa");
    const Other = document.getElementById("Other");

    if(Master_Card.checked == true){
        print("master card");
    }

    if(Visa.checked == true){
        print("visa");
    }

    if(Other.checked == true){
        print("other method");
    }

    
    if(document.getElementById("Check_Box").checked){
        document.getElementById("Result2").innerHTML = `[You are Subscribed]`;
    }else{
        document.getElementById("Result2").innerHTML = `[You are not Subscribed]`;
    }
}