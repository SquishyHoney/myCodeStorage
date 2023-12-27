let cards = ["A", "2", "K", "3", "J", "4", "Q", "5", "10", "9", "7", "6"];
shuffle(cards);

console.log(cards);
cards.forEach = (card => console.log(card));

function shuffle(kartu){
    let current_index = kartu.length;

    while(current_index != 0){
        let random_pick = Math.floor(Math.random()*kartu.length);
        current_index--;

        let temp = kartu[random_pick];
        kartu[random_pick] = kartu[current_index];
        kartu[current_index] = temp;
    }

    return kartu;
}



function data(name,age){

    displayName(name);
    displayAge(age);

    function displayName(name){
        console.log(name);
    }
    function displayAge(age){
        console.log(age);
    }
}

data("Lol",17);



const characters = new Map([["Diluc",20],["Kaeya",30],["Jean",40]]);
characters.set("Lisa",40);
characters.delete("Diluc");
characters.delete(40);

let total_level = 0;
total_level = characters.get("Jean");
total_level += characters.get("Kaeya");

console.log(characters);
console.log(`Total Level : ${total_level}`);

let have_this = characters.has("Kaeya");
console.log(have_this);

let size_ = characters.size;
console.log(size_);

const printAll = (level,name) => console.log(`${name} -> ${level}`);
characters.forEach(printAll);