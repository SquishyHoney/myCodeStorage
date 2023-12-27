export const button = document.querySelector("#input_button");
export const title = document.getElementById("title_h2");
export const submit_button = document.querySelector("#submit_button");

let number_one;
let number_two;

let original_string = document.getElementById("number_one").innerText;
let original_string2 = document.getElementById("number_two").innerText;

submit_button.addEventListener("click",()=>{

    let checkbox = document.querySelector("#one_checkbox");
    if(checkbox.checked){
        console.log("Checked");
    }else{
        console.log("Not Checked");
        alert("Please check the checkbox");
        return console.log("PLEASE CHECK");
    }
    
    let ceil = document.getElementById("ceil_radio").checked;
    let floor = document.getElementById("floor_radio").checked;
    let pow = document.getElementById("pow_radio").checked;
    let sqrt = document.getElementById("sqrt_radio").checked;

    let temp_one = document.getElementById("number_one").innerText;
    let temp_two = document.getElementById("number_two").innerText;

    let index_one = temp_one.lastIndexOf(":") + 1;
    let index_two = temp_two.lastIndexOf(":") + 1;

    let temp_temp_one = Number(temp_one.slice(index_one)); // Extract the number substring and convert to number
    let temp_temp_two = Number(temp_two.slice(index_two)); // Extract the number substring and convert to number

    console.log(ceil);
    console.log(floor);

    let sum;

    console.log(temp_temp_one);
    console.log(temp_temp_two);

    if(ceil == 1){
        sum = temp_temp_one + temp_temp_two
        sum = Math.ceil(sum);
    }

    if(floor == 1){
        sum = temp_temp_one + temp_temp_two
        sum = Math.floor(sum);
    }

    if(pow == 1){
        sum = temp_temp_one + temp_temp_two
        sum = Math.pow(sum,2);
    }

    if(sqrt == 1){
        sum = temp_temp_one + temp_temp_two
        sum = Math.sqrt(sum,2);
    }

    console.log(`Result is : ${sum}`);

});

button.onclick = function(){

    console.log(original_string);
    console.log(original_string2);

    number_one = window.prompt("Enter the first number : ");
    number_two = window.prompt("Enter Second number : ");

    document.getElementById("number_one").innerHTML = original_string + number_one.toString();
    document.getElementById("number_two").innerHTML = original_string2 + number_two.toString();
}  