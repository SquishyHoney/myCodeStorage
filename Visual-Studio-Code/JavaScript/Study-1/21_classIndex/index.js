class Car{
    constructor(one,two,three){
        this.name = one;
        this.year = two;
        this.color = three;
    }

    drive(){
        console.log(`You are driving the ${this.name}`);
    }
}

const car1 = new Car("Mazda",2018,"Blue");
const car2 = new Car("Ferrari",2019,"Color");
const car3 = new Car("Honda",2014,"Red");

const cars = [car1,car2,car3];
let size = 3;
let j = 0;

for(const temp of cars){
    print(temp);
}


function print(temp){
    console.log(temp.name);
    console.log(temp.year);
    console.log(temp.color);
    temp.drive();
}

function change(temp,newColor){
    temp.color = newColor;
}


let example = "this is an example string";
for(const d of example){
    console.log(d);
}
    