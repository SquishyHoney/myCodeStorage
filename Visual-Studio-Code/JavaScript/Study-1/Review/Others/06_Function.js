const sayHello = function(){
    console.log("Hello this is from a function");
}

sayHello();


const addThese = function(one,two){
    console.log(`${one + two}`);
}

addThese(3,9);


const place = (country,capital) => console.log(`Country : ${country} \nCapital : ${capital}`);
place("Indonesia","Jakarta");


let inc = [11,22,33,44,55];
inc.forEach(doThis);

function doThis(element){
    console.log(element+1);
}

const sorting = (y,x) => console.log(x,y);
inc.forEach(sorting);

console.log(inc);
