class weapons{
    static how_much_weapon = 0;
    
    user_name;
    user_level;

    constructor(strength,dexterity,intelligence){

        this.str_req = strength;
        this.dex_req = dexterity;
        this.int_req = intelligence;

        weapons.how_much_weapon++;
    }

    static total(){
        console.log(`Total Weapons : ${weapons.how_much_weapon}`);
    }

    showStatus(){
        console.log(`[${this.user_level}] Name : ${this.user_name}`);
        console.log(`|S -> ${this.str_req}|D -> ${this.dex_req}|I -> ${this.int_req}|`)
    }

}

class claymore extends weapons{

    static how_much_claymore = 0;
    code;

    constructor(str,dex,int,name){
        super(str,dex,int);
        this.name = name;

        claymore.how_much_claymore++;
    }

    static total(){
        console.log(`Jumlah Claymore : ${claymore.how_much_claymore}`);
    }

    showClaymore(){
        super.showStatus();
        console.log(`Full-Name : ${this.name}\nCode : [${this.code}]`);
    }  
}


let WGS = new claymore(
    20,
    10,
    5,
    "Wolf's Gravestone"
);

let sky_ward = new claymore();

WGS.user_name = "Diluc";
WGS.user_level = 89;
WGS.code = "the-red-sword-wolf";



WGS.showStatus();
weapons.total();
claymore.total();
WGS.showClaymore();

