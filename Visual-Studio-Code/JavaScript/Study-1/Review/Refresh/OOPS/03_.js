class fish{
    static fish_total = 0;
    constructor(name){
        this.name = name;
        fish.fish_total++;
    }

    displayFish(){
        console.log(`Displaying [${this.name}]`);
    }
}

let shopping_bag = [new fish("Salmon"),new fish("Tuna"),new fish("Dori")]
shopping_bag.forEach(test => console.log(test.name));


let items = ["Hammer" , "Shovel" , "Nails"];
items.sort();
items.unshift("Saw");
items.push("Pitch Fork");

function showItem(name){
    console.log(`You are holding [${name}]`);
}

items.forEach(showItem);

class shirt{

    static total_shirt = 0;

    constructor(color,id){
        this.color = color;
        this.id = id;

        shirt.total_shirt++;
    }
}

let shirts = [new shirt("Green",12) , new shirt("Red",14) , new shirt("Blue",16)];
shirts.forEach((element,index,array) => console.log(`Shirt[${index}] : ${element.color}`));
