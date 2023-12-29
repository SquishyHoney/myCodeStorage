async function giveHeart(){

    let heart_given = false;

    if(heart_given){
        return `She Loves me back`;
    }else{
        throw `She hates me`;
    }

}

async function startProcess(){
    try{
        let msg = await giveHeart();
        console.log(msg);
    }

    catch(eror){
        console.log(eror);
    }
}

startProcess();


//giveHeart().then((x) => console.log(`Status : ${x}`))
//.catch((x) => console.log(`[${x}]`));