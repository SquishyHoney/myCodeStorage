const sports = {
    name : "Badminton",

    play : function(value){
        console.log(`${value} is playing ${this.name}`);
    }
}

//sports.play("Joe");


class sport{
    static sport_total = 0;

    constructor(name){
        this.name = name;

        sport.sport_total++;
    }

    training(){
        console.log(`I love ${this.name}`);
    }

    static onlyUsingSport(){
        console.log(`This can only be access using a sport`);
    }
}

const badminton = new sport("Badminton");
const soccer = new sport("Soccer");

badminton.training();

//sport.training();
sport.onlyUsingSport();
console.log(`Total sports : [${sport.sport_total}]`);