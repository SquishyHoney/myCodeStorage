function toFAHRENHEIT(temp){
    temp = Number((temp * (9/5)) + 32);
    return document.getElementById("text").innerHTML = `Converted is ${temp}`;
}

function toCELCIUS(temp){
    return document.getElementById("text").innerHTML = `Converted is ${temp}`;
}

function toKELVIN(temp){
    temp = Number(temp + 273.15);
    return document.getElementById("text").innerHTML = `Converted is ${temp}`;
}

document.getElementById("btn").onclick = function(){

    let temp = Number(document.getElementById("myTemperature").value);

    if(document.getElementById("Fahrenheit").checked) toFAHRENHEIT(temp);
    if(document.getElementById("Celcius").checked) toCELCIUS(temp);
    if(document.getElementById("Kelvin").checked) toKELVIN(temp);

}