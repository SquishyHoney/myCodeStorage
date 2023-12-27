//inheritence
class Animal{
    alive = "true";
    constructor(name){
        this.name = name;
    }

    eat(){
        console.log(`${this.name} is eating`);
    }
    sleep(){
        console.log(`${this.name} is sleeping`);
    }
}



class Rabbit extends Animal{

    constructor(name,runSpeed){
        super(name);
        this.speed = runSpeed;
    }

    run(){
        console.log(`${this.name} is running, Speed : ${this.speed}`);
    }
}



class Fish extends Animal{
    
    constructor(name,swimSpeed){
        super(name);
        this.speed = swimSpeed;
    }

    swim(){
        console.log(`${this.name} is swimming, Speed : ${this.speed}`);
    }
}



class Hawk extends Animal{
    
    constructor(name,flySpeed){
        super(name);
        this.speed = flySpeed;
    }

    fly(){
        console.log(`${this.name} is flying, Speed : ${this.speed}`);
    }
}


const Eagle = new Hawk("Pancasila","10km/hour");
const Whale = new Fish("Pearl","5m/sec");
const Hare = new Rabbit("Looney","3km/hour");

Hare.run();
Whale.swim();
console.log(Eagle.name);
console.log(Eagle.speed);