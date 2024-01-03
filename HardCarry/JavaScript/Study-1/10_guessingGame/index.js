function main(){

    let answer = Math.floor(Math.random()*10);
    console.log("The answer is",answer);

    let myGuesses = 5;
    window.alert(`Your get ${myGuesses} guesses`);

    document.getElementById("btn").onclick = function(){
        let myCheck = document.getElementById("myAnswer").value;
        myGuesses--;

        if(myCheck == answer){

            console.log(`You did it the answer was ${answer}`);
            document.getElementById("myScore").innerHTML = `You did it the answer was ${answer}`;

        }else if(myGuesses < 4){
            
            window.alert(`you have ${myGuesses} remaining`);

        }else{

            window.alert(`Wrong Answer`);

        }


        if(myGuesses == 0){
            window.alert(`You lose`);
            document.getElementById("myScore").innerHTML = `I'm sorry you lose the answer was ${answer}`;
        }

    };

}

main(); //unecessary