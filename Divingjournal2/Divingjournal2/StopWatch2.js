function stopwatch(element, hours, mins, secs) {
    //fetch the display element
    var el = document.getElementById(element);

    //set the timer

    var interval = setInterval(function () {
        
        
            if (secs == 60) {
                mins++;
                secs = 0;
            }
            if (mins == 60) {
                hours++;
                mins = 0;
            }

        
            el.innerHTML = addLeadingZero(hours) + ':' + addLeadingZero(mins)
                + ':' + addLeadingZero(secs);

            secs++;
        
    }, 1000);
}

//start as many timers as you want 

var start1 = document.getElementById('timerbutton1');
var start2 = document.getElementById('timerbutton2');

var stop1 = document.getElementById('stopbutton1');
var stop2 = document.getElementById('stopbutton2');

start1.onclick = function () {
    stopwatch('stopwatch1', 0, 0, 0, true);
}

start2.onclick = function () {
    stopwatch('stopwatch2', 0, 0, 0);
}

stop1.onclick = function () {
    clearInterval()
}

//helper function to make render neater
function addLeadingZero (n) {
    if(n <= 9) {
        return '0'+ n; 
    } else {
        return '' + n; 
    }
}
