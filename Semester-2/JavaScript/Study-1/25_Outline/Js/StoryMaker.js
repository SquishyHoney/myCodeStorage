document.getElementById("buttonOne").onclick = function(){
    let subject = document.getElementById("inputOne").value;
    let sen1 = document.getElementById("textOne").innerText;

    let x = sen1.indexOf("i") - 1;
    let y = sen1.length;

    subject = subject.toLowerCase();
    subject = subject.charAt(0).toUpperCase() + subject.slice(1);


    let newSen = subject + sen1.slice(x,y);    
    document.getElementById("textOne").innerHTML = newSen;
}


document.getElementById("buttonThree").onclick = function(){
    let phoneNumber = document.getElementById("inputThree").value;
    let sen3 = document.getElementById("textThree").innerText;

    let x = sen3.lastIndexOf("r") + 2; // " "
    phoneNumber = phoneNumber.replaceAll("-","/");

    let newSen = sen3.slice(0,x) + phoneNumber + " ,";
    document.getElementById("textThree").innerHTML = newSen;
}

document.getElementById("buttonTwo").onclick = function(){
    let object = document.getElementById("inputTwo").value;
    let sen2 = document.getElementById("textTwo").innerText;

    object = object.toLowerCase();

    sen2 = sen2.slice(0,sen2.indexOf("."));
    newSen = sen2 + object + ".";
    document.getElementById("textTwo").innerHTML = newSen;
}