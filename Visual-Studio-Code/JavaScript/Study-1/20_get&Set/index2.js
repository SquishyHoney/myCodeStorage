class Car{
    constructor(power){
        this._gas = 25
        this._power = power
    }
    get power(){
        return console.log(`${this._power} horse power`);
    }
    get gas(){
        return `${this._gas} liters ${this._gas/50 *100}%`;
    }
    set gas(value){
        if(value > 50){
            value = 50;
        }else if(value < 0){
            value = 0;
        }

        this._gas = value;
    }
}

let car = new Car(400);
car.gas = 1000;


console.log(car.gas);