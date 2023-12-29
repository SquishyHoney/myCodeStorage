let cards = ["A", "2", "K", "3", "J", "4", "Q", "5", "10", "9", "7", "6"];

console.log(cards);
shuffle(cards);
console.log(cards);

cards.forEach = (card => console.log(card));  

function shuffle(array){
    let currentIndex = array.length;

    while(currentIndex != 0){
        let randomIndex = Math.floor(Math.random()*array.length);
        currentIndex--;

        let temp = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temp;
    }

    return array;
}