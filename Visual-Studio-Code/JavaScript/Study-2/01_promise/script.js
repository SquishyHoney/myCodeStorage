//67. PROMISES ( callBack, functionExpression , arrowFunction);

/*
const promise = new Promise((resolve,reject) => {

    let file_load = false;

    if(file_load){
        resolve('File Loaded');
    }else{
        reject(`File not Loaded`);
    }

});

promise.then((value) => console.log(`PROMISED RETURNED ${value}`))
.catch((error) => console.log(`SYSTEM EROR ${error}`));
*/

console.log(`Running Program`);

const wait = time => new Promise(resolve => {
    setTimeout(resolve,time);
});

wait(1000).then( () => console.log(`Thanks for Waiting`));

