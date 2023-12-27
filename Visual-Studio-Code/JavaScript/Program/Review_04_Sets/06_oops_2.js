class Boat{
    constructor(weight){
        this.Gweight = weight;
        this.Gspeed = 25;
    }

    get speed(){
        return `Speed of the boat is ${this.Gspeed} Knots`;
    }
    get weight(){
        return `This boat it currently carrying ${this.Gweight} Kg`;
    }

    set speed(value){
        if(value > 100){
            this.Gspeed = 100;
            console.log(`Not possible for speed to be more than ${value}`);
        }else if(value < 0){
            this.Gspeed = 0;
            console.log(`Not possible for speed to be less than ${value}`);
        }else{
            this.Gspeed = value;
        }
    }
};

const Ferry = new Boat(125);

Ferry.speed = -3;

console.log(Ferry.speed);
console.log(Ferry.weight);

