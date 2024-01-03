function playGame(userChoice) {
    var choices = ["rock", "paper", "scissors"];
    var computerChoice = choices[Math.floor(Math.random() * 3)];

    var result = "";

    if (userChoice === computerChoice) {
        result = "It's a tie!";
    } else if (
        (userChoice === "rock" && computerChoice === "scissors") ||
        (userChoice === "paper" && computerChoice === "rock") ||
        (userChoice === "scissors" && computerChoice === "paper")
    ) {
        result = "You win!";
    } else {
        result = "You lose!";
    }

    document.getElementById("result").innerHTML = "Your choice: " + userChoice + "<br>Computer's choice: " + computerChoice + "<br>Result: " + result;
}