let myNum = 100;

let myNum1 = myNum.toLocaleString("en-US" , {style : "currency" , currency : "USD"});
console.log(myNum1);

let myNum2 = myNum.toLocaleString("id-ID", {currency : "IDR" , style : "currency"});
console.log(myNum2);

let myNum3 = myNum.toLocaleString(undefined, {style : "unit" , unit : "fahrenheit"});
console.log(myNum3);