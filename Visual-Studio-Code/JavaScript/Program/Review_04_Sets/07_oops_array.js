class Boss{

    constructor(name,weapon){
        this.name = name;
        this.weapon = weapon;
    }

    showBossData(){
        console.log(`Boss Name : ${this.name}`);
        console.log(`Weapon    : ${this.weapon}`);
    }
}

const Gwyndolin = new Boss("Dark Sun Gwyndolin","Bow");
const Gapping = new Boss("Gapping Dragon","Arms");
const OS = new Boss("Ornstein & Smough","Hammer");


const Boss_Array = [Gwyndolin,Gapping,OS];

for(let i=0 ; i<Boss_Array.length ; i++){
    console.log(`-- BOSS #${i+1} --`);
    Boss_Array[i].showBossData();
}




const Minor_Boss = [
    new Boss("Centipede Demon","Multi Arms"),
    new Boss("Asylum Demon","Hammer"),
    new Boss("Fire Demon","Magic Wand"),
    new Boss("Capra Demon","Machette")
];



let j = 0;
console.log();
for(const Selected_Item of Minor_Boss){
    j++;
    console.log(`-- BOSS #${j} --`);
    Selected_Item.showBossData();
}

console.log();


const Big_Boy = [
    new Boss("Nito","Claymore"),
    new Boss("Seath","Wand"),
    new Boss("Four Kings","Sword"),
    new Boss("Chaos Queen","Fucking loser"),
    new Boss("Gwyn lord of Cinder","Claymore")
];

Big_Boy.forEach(value =>{
    console.log(`[${value.name}]\nWeapon : ${value.weapon}\n`);
});