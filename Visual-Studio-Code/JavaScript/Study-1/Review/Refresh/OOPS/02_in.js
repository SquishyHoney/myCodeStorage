//Counting Valorant Agent each Paper Rex squad plays

//paperRex -> f0r -> Jett
//                -> Kj
//
//         -> jng -> Raze
//                -> Sage

class paperRex{
    static total_player = 0;

    constructor(nation){
        this.nation = nation;

        paperRex.total_player++;
    }

    onlyThirdGeneration(){
        console.log(paperRex.total_player);
    }

    static onlyClass(){
        console.log(`Total players : ${paperRex.total_player}`);
    }
}


class f0rsaken extends paperRex{
    static f0r_total = 0;
    
    constructor(nation,agent){
        super(nation);
        this.agent = agent;

        f0rsaken.f0r_total++;
    }

    one(){
        console.log(f0rsaken.f0r_total);
    }

    static two(){
        console.log(f0rsaken.f0r_total);
    }
}

class jing extends paperRex{
    static jng_total = 0;

    constructor(nation,agent){
        super(nation);
        this.agent = agent;   

        jing.jng_total++;
    }
}


const raze = new jing("Singapore","Raze");
const sage = new jing("Singapore","Sage");

const jett = new f0rsaken("Indonesia","Jett");
const kj = new f0rsaken("Indonesia","Kill - Joy");

//paperRex.onlyThirdGeneration();
//f0rsaken.onlyThirdGeneration();
//jett.onlyThirdGeneration();

//paperRex.onlyClass();
//f0rsaken.onlyClass();
//jett.onlyClass();

//f0rsaken.one();
jett.one();