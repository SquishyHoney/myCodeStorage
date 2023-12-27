class game{

    static total_games = 0;

    constructor(name){
        this.name = name;

        this.total_games++;
        console.log("New character");
    }

    static first(){
        console.log(this.total_games);
    }
}

class apex extends game{

    static total_apex = 0;

    constructor(char,weapon){
        super(char);
        this.size = weapon;

        this.total_apex++;
    }

}

class valorant extends game{

    static total_valorant = 0;

    constructor(char,map){
        super(char);
        this.map = map;

        this.total_valorant++;
    }

    show(){
        console.log(s)
    }
}

const sova = new valorant("Sova","Ascent");
game.first();