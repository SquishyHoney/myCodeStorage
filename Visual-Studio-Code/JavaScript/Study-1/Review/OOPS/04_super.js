class person{
    static total_person = 0;
    constructor(name,age){
        this.name = name;
        this.age = age;

        person.total_person++;
    }
    hello(){
        console.log(this.name,"Hello");
        console.log(`Age : ${this.age}`);
    }
}

class student extends person{
    static total_student = 0;
    constructor(name,age,gpa){
        super(name,age);
        this.gpa = gpa;

        student.total_student++;
    }

    hello(){
        super.hello();
        console.log(`Your gpa is ${this.gpa}`);
    }
}

class teacher extends person{
    static total_teacher = 0;
    constructor(name,age,class_size){
        super(name,age);
        this.class_size = class_size;

        teacher.total_teacher++;
    }
    hello(){
        super.hello();
        console.log(`Size : ${this.class_size}`);
    }
}

let Murid = new student("Andy",18,3.99);
let Guru = new teacher("Bob",45,30);

let Murid2 = new student("Laras",16,4.01);

console.log(Murid.name);
console.log(Murid.age);
console.log(Murid.gpa);

console.log(Murid2.name);
console.log(Murid2.age);
console.log(Murid2.gpa);

console.log(Guru.name);
console.log(Guru.age);
console.log(Guru.class_size);

console.log(person.total_person);
console.log(student.total_student);
console.log(teacher.total_teacher);

Murid.hello();
Murid2.hello();
Guru.hello();