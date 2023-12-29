//ASYNC function

async function loadFile(){
    
    let file_loaded = true;
    
    if(file_loaded){
        return `File Loaded`;
    }else{
        throw `File didn't load`;
    }

}


let same_shit = (x) => console.log(x);
loadFile().then(same_shit).catch(same_shit);


function myStatus(){

    let he_clean = true;

    if(he_clean){
        return Promise.resolve("HE CLEANED");
    }else{
        return Promise.reject("HE DIDN'T");
    }
}

myStatus().then(same_shit).catch(same_shit);