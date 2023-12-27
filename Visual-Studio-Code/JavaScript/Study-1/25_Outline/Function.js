function getLength(){
    let L = window.prompt("Pangjang : ");
    return L;
}
function getHeigth(){
    let H = window.prompt("Tinggi : ");
    return H;
}

function doingMath(){
    let L = getLength();
    let H = getHeigth();
    return console.log(`Answer is ${L*H}`);
}



let firstNumber = 100;
let indonesian = firstNumber.toLocaleString("id-ID",{currency : "IDR" , style:"currency"});
let suhu = firstNumber.toLocaleString(undefined,{style : "unit" , unit:"fahrenheit"})
console.log(indonesian);
console.log(suhu);