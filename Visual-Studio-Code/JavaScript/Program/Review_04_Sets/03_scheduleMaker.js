function schedule(array){

    let token = array.length;
    

    while(token > 0){
        let option_index = Math.floor(Math.random()*token);
        token--;
        
        let temp = array[token];
        array[token] = array[option_index];
        array[option_index] = temp;
        
    }

}

let what_to_do = [
    "Swimming",
    "Relax",
    "Calisthenic",
    "Chores",
    "Art",
    "Discipline",
];

console.log(what_to_do);

schedule(what_to_do);

console.log(what_to_do);
