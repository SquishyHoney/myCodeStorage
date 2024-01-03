//Object
//This

const car1 ={

    model : "Mustang",
    color : "Red",
    year  : 2023,

    drive : function(){
        console.log(`You are driving a ${this.model}`);
    },
    brake : function(){
        console.log(`You step on the brakes on this ${this.model}`);
    }
}

const car2 ={
    
    model : "Corvette",
    color : "Blue",
    year  : 2023,

    drive : function(){
        console.log(`You are driving a ${this.model}`);
    },
    brake : function(){
        console.log(`You step on the brakes on this ${this.model}`);
    }
}

console.log(`Model is, ${car1.model}`);
car1.drive();
car2.drive();
car1.brake();
car2.brake();






class Player{
    name;
    score = 0;

    pause(){
        console.log(`${this.name} pause the game`);
    }

    exit(){
        console.log(`${this.name} exited the game`);
    }
}

const P1 = new Player();
const P2 = new Player();

P1.score = 10;
P1.name = "John Cena";

P2.score = 11;
P2.name = "Marilyn Monroe"

console.log(P1.score);
P1.pause();
P2.pause();





class Student{

    static studentTotal = 0;

    constructor(name,age,gpa){
        this.name = name;
        this.age = age;
        this.gpa = gpa;

        Student.studentTotal++;
    }

    study(){
        if(this.gpa < 3.5){
            console.log(`${this.name} is studying because he/she has a gpa of ${this.gpa}`);
        }else{
            console.log(`${this.name} is currently NOT studying because his/her gpa is ${this.gpa}`);
        }
    }

    static work(){
        console.log(`${this.name} is currently working`);
    }

}





function printStudent(Student){
    Student.study();
}

const S1 = new Student("Bro Code",18,3.6);
S1.study();

const S2 = new Student("Eevee",21,4.0);
printStudent(S2);

const S3 = new Student("Infernape",19,4.0);
const S4 = new Student("Tortera",17,4.0);

console.log(`Total number of Student is ${Student.studentTotal}`);
Student.work();