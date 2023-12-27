class color{
    static color_count = 0;
    constructor(picked_color){
        this.picked_color = picked_color;
    }

    static colorCount(){
        console.log(`Color Count : ${color.color_count}`);
    }

    currentColor(){
        console.log(`Picked Color : ${this.picked_color}`);
    }
}

let crayons = [
    new color("red"),
    new color("yellow"),
    new color("green"),
    new color("blue"),
    new color("pink"),
]

crayons.forEach(callMe => console.log(`Picked Color : ${callMe.picked_color}`));