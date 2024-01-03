try{
    let x = window.prompt("Enter a Number");
    x = Number(x);

    if(isNaN(x)){
        throw "It's not a number";
    }
    if(x == ""){
        throw "Empty";
    }

    console.log(`${x} is a number`);
}

catch(eror){
    console.log(eror);
}

finally{
    console.log("This always apear");
}
