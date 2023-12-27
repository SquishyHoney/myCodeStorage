const button = document.querySelector("#button");

function first(name){
    alert(`Press the button ${name}`);
}

function last(){
    alert("Please Press the Button");
}

let first_timeout = setTimeout(first,3000,"John");
let second_timeout = setTimeout(() => {
    alert("HELLO THERE");
}, 6000);
let third_timeout = setTimeout(last,9000);

button.onclick = function (){
    clearTimeout(first_timeout);
    clearTimeout(second_timeout);
    clearTimeout(third_timeout);
};


let number = Number(window.prompt("Enter a number"));
let count = 0;

const my_timer =setInterval(CountUp, 1000);

function CountUp(){
    count += 1;
    console.log(count);
    if(count >= number){
        clearInterval(my_timer);
    }

}