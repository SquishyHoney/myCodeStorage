//Promise(Accepts a function);

const i_want = new Promise((resolve,reject) => {
    let indicator = true;

    if(indicator){
        resolve("It's True");
    }else{
        reject("It's False");
    }
});

