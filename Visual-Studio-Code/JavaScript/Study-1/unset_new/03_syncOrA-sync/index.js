//synchronous code = Do it all without any distraction
//A-synchronous code = do while having some distraction

console.log("PROGRAM STARTED");

console.log("This is Synchronous");

setTimeout(()=>console.log("This is A-Synchronous"),3000);

console.log("PROGRAM ENDED");
