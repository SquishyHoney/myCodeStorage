class myths{
    static total_myth = 0;

    constructor(myth_type,code){
        this.myth_type = myth_type;
        this.code = code;

        myths.total_myth++;
    }

    totalMyths(){
        console.log(`[Total : ${myths.total_myth}]`);
    }
}


class greek extends myths{
    static total_norse = 0; //Data pisah

    constructor(name,power){
        super("Greek");
        this.name = name;
        this.power = power;

        greek.total_norse++;
    }

    showGreek(){
        console.log(`Name : ${this.name}\nPower : ${this.power}`);
        console.log(`Type : ${this.myth_type}\nCode : ${this.code}`);
    }

    totalGreek(){
        console.log(`[Total Greek : ${greek.total_norse}]`);
    }
}

class norse extends myths{
    static total_norse = 0;

    constructor(name,power){
        super("Norse","010THR");
        this.name = name;
        this.power = power;

        norse.total_norse++;
    }

    showNorse(){
        console.log(`Name : ${this.name}\nPower : ${this.power}`);
        console.log(`Type : ${this.myth_type}\nCode : ${this.code}`);
    }

    totalNorse(){
        console.log(`[Total Norse : ${norse.total_norse}]`);
    }
}

const N1 = new norse();  // 1
const N2 = new norse();  // 2
const N3 = new norse();  // 3
const N4 = new norse();  // 4
const Thor = new norse("Thor","Thunder"); // 5

const G1 = new greek(); // 6
const G2 = new greek(); // 7

console.log(Thor);
Thor.showNorse();

Thor.totalNorse();
N1.totalNorse();

G1.totalGreek();
G2.totalGreek();

Thor.totalMyths();
N1.totalMyths();
G2.totalMyths();