
let item = "Crypto Currentcy";
let price = 420.69;


function first(item ,price){
    alert(`Buy ${item} course for ${price} dolars`);
}

function second(){
    alert(`Not a scam`);
}

function third(){
    alert(`Do itt!`);
}

let one = setTimeout(first , 3000, item, price);
let two = setTimeout(second, 6000);
let three = setTimeout(third, 9000);

document.getElementById("button_alert").onclick = function(){
    clearTimeout(one);
    clearTimeout(two);
    clearTimeout(three);
    alert(`Thanks for buying`);
}

let count = 0;
let max = Number(window.prompt("Number : "));

const my_timer =setInterval(CountUp, 1000);

function CountUp(){
    count += 1;
    console.log(count);
    if(count >= max){
        clearInterval(my_timer);
    }

}

