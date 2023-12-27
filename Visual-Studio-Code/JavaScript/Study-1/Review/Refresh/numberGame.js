
//ADD
document.getElementById("button_one").onclick = function(){
    let first_number = document.getElementById("input_one").value;
    let second_number = document.getElementById("input_two").value;

    first_number = Number(first_number);
    second_number = Number(second_number);

    document.getElementById("text_one").innerHTML = `${first_number + second_number}`;
}

//DEC
document.getElementById("button_two").onclick = function(){
    let first_number = document.getElementById("input_one").value;
    let second_number = document.getElementById("input_two").value;

    first_number = Number(first_number);
    second_number = Number(second_number);

    document.getElementById("text_one").innerHTML = `${first_number - second_number}`;
}

//MUL
document.getElementById("button_three").onclick = function(){
    let first_number = document.getElementById("input_one").value;
    let second_number = document.getElementById("input_two").value;

    first_number = Number(first_number);
    second_number = Number(second_number);

    document.getElementById("text_one").innerHTML = `${first_number * second_number}`;
}

//DIV
document.getElementById("button_four").onclick = function(){
    let first_number = document.getElementById("input_one").value;
    let second_number = document.getElementById("input_two").value;

    first_number = Number(first_number);
    second_number = Number(second_number);

    document.getElementById("text_one").innerHTML = `${first_number / second_number}`;
}

//Ceil
document.getElementById("button_ceil").onclick = function(){
    let num = document.getElementById("text_one").innerText;

    if(!(num > 3 || num <= 3)){
        document.getElementById("text_one").innerHTML = "Please Enter A Number";
        return;
    }

    document.getElementById("text_one").innerHTML = `${Math.ceil(num)}`;
}

//floor
document.getElementById("button_floor").onclick = function(){
    let num = document.getElementById("text_one").innerText;
    
    if(!(num > 3 || num <= 3)){
        document.getElementById("text_one").innerHTML = "Please Enter A Number";
        return;
    }

    document.getElementById("text_one").innerHTML = `${Math.floor(num)}`;
}






//submit
document.getElementById("button_submit").onclick = function(){
    
    const ticket = document.getElementById("check_one");

    if(ticket.checked == true){
        console.log("You pressed the submit button");
    }else{
        document.getElementById("text_two").innerHTML = "Please Check the Check Box";
        return;
    }

    let even = document.getElementById("radio_one").checked;
    let odd = document.getElementById("radio_two").checked;
    
    let text_two = document.getElementById("text_two");

    let current_number = document.getElementById("text_one").innerText;
    if(isNaN(current_number)){
        text_two.innerHTML = "Not a text";
        return;
    }

    let temp = Number(current_number);
    if(even){
        if(temp%2 == 0){
            text_two.innerHTML = `You are right ${temp} is even`;
        }else{
            text_two.innerHTML = `${temp} is not even`
        }
    }

    if(odd){
        if(temp%2 != 0){
            text_two.innerHTML = `You are right ${temp} is odd`;
        }else{
            text_two.innerHTML = `${temp} is not odd`;
        }
    }

//Get Number Checked if 
    //YESS-> get number then we check for check bocx if its checked
        //YESS-> if yes then we see if its the right radio box

    //NO -> Say please check the check box
}