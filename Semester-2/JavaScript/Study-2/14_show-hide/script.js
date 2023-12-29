const my_button = document.querySelector("#button");
const my_image = document.querySelector("#bolide");

my_button.addEventListener("click",() => {
    if(my_image.style.visibility == "hidden"){
        my_image.style.visibility = "visible";
    }else{
        my_image.style.visibility = "hidden";
    }
});

let main_num = 100;

const dec = document.querySelector("#test");

dec.addEventListener("click",()=>{

    if(main_num != 0){
        main_num -=10;
    }else{
        main_num = 100;
    }
    console.log(main_num/100);

    my_image.style.opacity = main_num/100;

});