let userName = "Bro Code";
let userInbox = 0;

login();

function login(){
    displayUserName();
    displayUserInbox();

    function displayUserName(){
        console.log(`Welcome ${userName}`);
    }

    function displayUserInbox(){
        console.log(`You have ${userInbox} new messages`);
    }
}   


const store = new Map([
    ["T-shirt",20],
    ["Jeans"  ,30],
    ["Dress"  ,40],
    ["Hat"    ,50],
    ["Jacket" ,60],
]);
store.set("Underpants",20);
store.delete("Hat");

let shopCart = 0;
shopCart += store.get("T-shirt");
shopCart += store.get("Hat");

let check = "T-shirt";
console.log(`Does this store have a ${check}? ${store.has(check)}`);
console.log(`${store.size}`);

console.log(store);
store.forEach((value,isi) => console.log(`$${value}  ${isi}`));



