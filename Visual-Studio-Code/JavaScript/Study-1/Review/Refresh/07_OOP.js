class pokemon{
    static total_pokemon = 0;

    constructor(value_1,value_2){
        this.name = value_1;
        this.level = value_2

        pokemon.total_pokemon++;
    }

    callPokemon(){
        console.log(`You sent out [${this.name}]`);
    }

    test(){
        console.log("total sinnoh :",sinnoh.total_sinnoh);
    }//can be accessed by all

    static showTotal(){
        console.log(`Total Pokemon(s) : [${this.total_pokemon}]`);
    }

}

class sinnoh extends pokemon{
    static total_sinnoh = 0;

    constructor(name,level,city,music){
        super(name,level);
        this.city = city;
        this.music = music;

        sinnoh.total_sinnoh++;
    }

    showMusic(){
        console.log(`[${this.name}] vibes to [${this.music}]`);
    }

    static showTotalSinnoh(){
        console.log(`There is a total of [${sinnoh.total_sinnoh}] pokemon(s) in your pc`);
    }
}









class unova extends pokemon{
    static total_unova = 0;

    constructor(name,level,city,trainer){
        super(name,level);
        this.city = city;
        this.trainer = trainer
    
        unova.total_unova++;
    }

    showTrainer(){
        console.log(`[${this.name}] belongs to [${this.trainer}]`);
    }

    static showTotalUnova(){
        console.log(`there is a total of [${unova.total_unova}] pokemon(s) in your pc`);
    }
}



class hoenn extends pokemon{
    static total_hoenn = 0;

    constructor(name,level,city,mega){
        super(name,level);
        this.city = city;
        this.mega = mega;

        hoenn.total_hoenn++;
    }

    showMegaEvolution(){
        console.log(`[${this.name}] evolves into [${this.mega}]`);
    }

    static showTotalHoenn(){
        console.log(`There is a total of [${unova.total_unova}]
            pokemon(s) in your pc`);
    }
}



const sports ={
    name : "Badminton",
    year : 1870,

    play : function(){
        console.log(`You are playing ${this.name}`);
    },

    time : function(){
        console.log(`This year is ${sports.year}`);
    }
}

sports.play();
sports.time();
sports.year = 2000;
sports.time();



const chimchar = new sinnoh("Chimchar",5,"Twinlief Town","Route 201");
const emolga = new unova("Emolga",25,"Nimbasa","Elesa");
const test = new sinnoh();

function hold(){
    console.log(`[${pokemon.showTotal()}]`);
    chimchar.showMusic();
    emolga.showTrainer();
}


//pokemon.showTotalSinnoh();
//unova.showTotalSinnoh();
pokemon.showTotal();

console.log(pokemon);
console.log(sinnoh);
console.log(chimchar);
//emolga.showTotalUnova();


//REVIEW ALL OOPS and start learning before chore