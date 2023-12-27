const students = new Map([["Mike",10] , ["Angel",8] , ["Jhonny",3]]);

students.set("Walter",6);
students.delete("Jhonny");
students.delete(8);

console.log(students);