const my_label = document.getElementById("label_time");

setInterval(setClock,5000);

function setClock(){
    let date = new Date();
    my_label.innerHTML = formatTime(date);

    function formatTime(time){
        let hours = time.getHours();
        let minutes = time.getMinutes();
        let seconds = time.getSeconds();
        
        let meridiem = hours <= 12 ? "Am" : "Pm"

        hours = (hours%12) || 12;
        hours = formatZeroes(hours);
        minutes = formatZeroes(minutes);
        seconds = formatZeroes(seconds);

        return `${hours}:${minutes}:${seconds} ${meridiem}`;
    }

    function formatZeroes(time){
        time = time.toString();
        return time.length < 2 ? "0" + time : time;
    }

}

setClock();