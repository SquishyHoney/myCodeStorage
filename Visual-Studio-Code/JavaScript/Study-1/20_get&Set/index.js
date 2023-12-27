class Car{

    constructor(power,gas){
        this._gas = 100;
        this._power = power;
    }

    get power(){
        return `${this._power}hp`;
    }
    get gas(){
        return `${this._gas}L (${this._gas/50 *100}%)`;
    }

    set gas(value){
        if(value > 50){
            console.log(`Overflow`);
            value = 50;
        }else if(value < 0){
            value = 0;
        }
        this._gas = value;
    }
}   

let car = new Car(400);
car.power = 100;
car.gas = 200;

console.log(car.power);
console.log(typeof car.power);

console.log(car.gas);