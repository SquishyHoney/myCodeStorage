let hari = new Date(2023, 0, 1, 2, 3, 4, 5);
hari.setFullYear(2000);

let hari_html = document.getElementById("current_date");
hari_html.innerHTML = hari;


document.getElementById("change_date").onclick = function(){
    let new_hari = new Date();
    new_hari = new_hari.toLocaleString();
    hari_html.innerHTML = new_hari;
}
console.log(hari);


let year = hari.getFullYear();
let month = hari.getMonth();
let day_of_month = hari.getDate();

//get ->
//  day of the week -> getDay()
//  hour -> getHours()
//  minutes -> getMinutes()
//  seconds -> getSeconds()
//  ms -> getMilliseconds()
//  minutes -> getMinutes()

document.getElementById("current_year").innerHTML = year;
document.getElementById("current_month").innerHTML = month;
document.getElementById("current_day").innerHTML = day_of_month;