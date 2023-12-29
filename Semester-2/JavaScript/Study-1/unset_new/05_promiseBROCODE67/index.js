//PROMISE

const promise = new Promise((resolve,reject)=>{

    let file_loaded = true;

    if(file_loaded){
        resolve("File Laoded");
    }else{
        reject("File Not Loadaed");
    }

})  

