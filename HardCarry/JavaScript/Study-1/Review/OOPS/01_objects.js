const first_sport = {
    name : "Running",
    type : "Sport",
    time : 1,

    doIt : function(name){
        console.log(`${name} is ${this.name}`);
    }

};



console.log(first_sport);
first_sport.doIt("Andy");

class sport{

    static total_sport = 0;
    static what_is_this = "Sports";

    name;
    type;
    time;

    constructor(place){
        this.place = place;
        
        sport.total_sport++;
    }
    

    doIt(){
        console.log(`${this.name} is fun`);
    }

    action(){
        console.log(`I'm ${this.name} at ${this.place}`);
    }

    static cannotBeAccess(){
        console.log("Only using a sport. function can access this.");
    }

}

const swimming = new sport("Golds Gym");
const badminton = new sport("Arena");

swimming.name = "Swimming";
swimming.type = "Water Sport";
swimming.time = 1.5;

badminton.name = "Badminton";
badminton.type = "Racket sport";
badminton.time = 2;

console.log(`Total Sport : [${sport.total_sport}]`);
console.log(swimming);
console.log(badminton);
sport.cannotBeAccess();