class Nation{

    static total_nation = 0;
    name = "Default";

    constructor(name){
        this.name = name;
        Nation.total_nation++;
    }

    printTotal(){
        console.log(`Total Nations : ${Nation.total_nation}`);
    }

    printTest(){
        console.log(`Success`);
    }
};

class Asia extends Nation{

    static total_asia = 0;
    language;

    constructor(name,language){
        super(name);
        this.language = language;

        Asia.total_asia++;
    }

    showTotal(){
        console.log(`Total Asia : ${Asia.total_asia}`);
    }

};

class Europe extends Nation{

    static total_europe = 0;
    landmark;

    constructor(name,landmark){
        super(name);
        this.landmark = landmark;

        Europe.total_europe++;
    }

    showTotal(){
        console.log(`Total Europe : ${Europe.total_europe}`);
    }
    
};

const Japan = new Asia("jepang","Japanese");
const China = new Asia("cina","Mandarin");
const German = new Europe("jerman","Germany");

Japan.printTotal();
Japan.showTotal();
German.showTotal();

console.log(China);
console.log(Japan);

console.log(Japan.language);