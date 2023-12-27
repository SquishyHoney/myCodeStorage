let cards = ["B","C","D","A"];

const printEachCard = (element,index,array) => console.log(`[${index}] ${element}`);
cards.forEach(printEachCard);

const shuffle = function(array){
    let selected_index = array.length;

    while(selected_index != 0){
        let picked_index = Math.floor(Math.random()*array.length);
        selected_index--;

        let temp = array[picked_index];
        array[picked_index] = array[selected_index];
        array[selected_index] = temp;
    }

    return array;
}

let new_deck = shuffle(cards);
console.log(new_deck);